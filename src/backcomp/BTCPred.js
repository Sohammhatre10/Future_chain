import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { Container } from '@material-ui/core';
import Chart from 'react-apexcharts';

const Prediction = () => {
  const [data, setData] = useState([]);
  const { coin_id } = useParams();

  useEffect(() => {
    fetch(`http://localhost:3000/${coin_id}_prid`)
      .then((res) => res.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.error('error', error);
      });
  }, []);

  const colors = [];
  const high = [];

  // Process data to populate colors and high arrays
  data.forEach((item) => {
    colors.push(item.Close);
    high.push(item.High);
  });

  const days = [];
  for (var i = 0; i < colors.length; i++) {
    if (i % 10 === 0) {
      days.push(i);
    } else if (i === colors.length - 1) {
      days.push(colors.length - 1);
    } else {
      days.push(' ');
    }
  }

  const options = {
    chart: {
      id: 'DATE',
    },
    colors: ['#1A5D1A'],
    xaxis: {
      categories: days,
      labels: {
        style: {
          colors: '#FFFFFF', 
          
          
          // Set x-axis label color to white
        },
      },
     
    },
    yaxis: {
      labels: {
        style: {
          colors: '#FFFFFF',
           // Set y-axis label color to white
        },
      },
    },
  };

  const series = [
    {      
      name: `${coin_id}_prediction`,
      data: colors,    
    },
    
  ];

  return (
    <Container maxWidth="lg">
      <Chart options={options} series={series} type="area" width="100%" height={500} />
    </Container>
  );
};

export default Prediction;

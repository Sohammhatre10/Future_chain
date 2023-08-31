import Chart from 'react-apexcharts';
import React, { useEffect, useState } from 'react';

const App = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3000/XRP')
      .then(res => res.json())
      .then(data => {
        setData(data);
      })
      .catch(error => {
        console.error('error', error);
      });
  }, []);

  const colors = [];


  // Process data to populate colors and high arrays
  data.forEach((item) => {
     colors.push(item.Close);
  });

  
  const days=[];
  for(var i=0;i<colors.length;i++){
    if(i%10===0){
    days.push(i);
    }
    else if(i===colors.length-1){
      days.push(colors.length-1);
    }
    else{
    days.push(' ');
    }
  }


  const options = {
    chart: {
      id: 'days'
    },
    colors: ['#9ED2BE'],

    xaxis: {
      categories:days// Assuming 'High' values are your categories
    }
  };

  const  series = [

    {
      name: 'XRP',
      data:  colors// Assuming 'Close' values are your series data
      
    },


  ];

  return (
    <Chart options={options} series={series} type='area' width={1270} height={500} />
  );
};

export default App;

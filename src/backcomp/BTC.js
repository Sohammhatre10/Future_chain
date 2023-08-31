import Chart from "react-apexcharts";
import React, { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { Button, Container, Grid } from "@material-ui/core";

const Coin_page = () => {
  const { coin_id } = useParams();

  const navigate = useNavigate();

  // Handle navigation
  const handleNavigate = (event) => {
    const path = event.currentTarget.dataset.path;
    navigate(path);
  };

  const [data, setData] = useState([]);

  useEffect(() => {
    fetch(`http://localhost:3000/${coin_id}`)
      .then((res) => res.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.error("error", error);
      });
  }, []);

  const colors = [];

  // Process data to populate colors and high arrays
  data.forEach((item) => {
    colors.push(item.Close);
    // high.push(item.Date);
  });

  const days = [];
  for (var i = 0; i < colors.length; i++) {
    if (i % 10 === 0) {
      days.push(i);
    } else if (i === colors.length - 1) {
      days.push(colors.length - 1);
    } else {
      days.push(" ");
    }
  }

  const options = {
    chart: {
      id: "DAYS",
    },
   
    colors: ["#7AA874"],
    xaxis: {
      categories: days,
    labels:{
      style:{
        colors:"white",
      },
    }, 
    
    },
    yaxis:{
      labels:{
        style:{
          colors:"white",
        },
      },
    },
  };

  const series = [
    {
      name: coin_id,
      data: colors, // Assuming 'Close' values are your series data
    },
  ];

  return (
    <Container>
      <Grid container spacing={3}>
        <Grid item xs={12} md={9}>
          <Chart options={options} series={series} type="area" width="100%" height={500} />
          <Button
            style={{
              background: "#FFBB5C",
              width: "60%",
              marginLeft:"20%",
              marginRight:"20%",
              padding: "20px",
              border: "none",
              borderRadius: "20px",
            }}
            onClick={handleNavigate}
            data-path={`/Coin/${coin_id}/prediction`}
          >
            Predict Coin
          </Button>
        </Grid>
      </Grid>
    </Container>
  );
};

export default Coin_page;

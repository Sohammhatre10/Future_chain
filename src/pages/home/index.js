import React from "react";
import {
  Typography,
  Card,
  makeStyles,
  CardContent,
  CardMedia,
  CardActionArea,
  Grid,
} from "@material-ui/core";
import DOGEimg from "../../images/DOGE.jpg";
import ETHimg from "../../images/ETH.jpg";
import LTCimg from "../../images/LTC.jpg";
import XRPimg from "../../images/XRP.jpg";
import BTCimg from "../../images/BTC.jpg";
import { useNavigate } from "react-router-dom";

const useStyles = makeStyles((theme) => ({
  root: {
    marginTop: theme.spacing(2),
    padding: "10px",
    width: "100%",
  },
  section: {
    marginBottom: theme.spacing(2),
    padding: theme.spacing(2),
  },
  thumb: {
    cursor: "pointer",
    backgroundColor: "black",
    "& > img": {
      height: 140,
      objectFit: "contain",
      width: "100%",
    },
  },
}));

const Coins = ["BTC", "DOGE", "ETH", "LTC", "XRP"];

const Home = () => {
  const navigate = useNavigate();
  const classes = useStyles();

  const handleNavigate = (event) => {
    const path = event.currentTarget.dataset.path;
    navigate(path);
  };

  const coinImages = {
    BTC: BTCimg,
    DOGE: DOGEimg,
    ETH: ETHimg,
    LTC: LTCimg,
    XRP: XRPimg,
  };

  return (
    <Grid container spacing={3}>
      {Coins.map((data) => (
        <Grid item key={data} xs={12} sm={6} md={4}>
          <Card
            sx={{ maxWidth: 345 }}
            style={{ background: "#526D82", margin: "15px", padding: "15px" }}
          >
            <CardActionArea
              data-path={`/Coin/${data}`}
              onClick={handleNavigate}
            >
              <CardMedia
                component="img"
                width="12"
                height="150"
                image={coinImages[data]} // Use the image path from the mapping
                alt={`Image of ${data}`}
              />
              <CardContent>
                <Typography
                  gutterBottom
                  variant="h4"
                  component="div"
                  style={{ fontFamily: "sans-serif" , color:"whitesmoke",fontStyle:"normal" }}
                >
                  {data}
                </Typography>
                <Typography
                  variant="body2"
                  color="text.secondary"
                  style={{ fontFamily:"sans-serif",color:"white",fontStyle:"italic"}}
                >
                  AI model predicts  {data} based on recent
                  trends and news  with the help of AI.
                </Typography>
              </CardContent>
            </CardActionArea>
          </Card>
        </Grid>
      ))}
    </Grid>
  );
};

export default Home;

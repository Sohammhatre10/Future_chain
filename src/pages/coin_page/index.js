import {
  Button,
  Container,
  Grid,
  makeStyles,
  Paper,
  Typography,
} from "@material-ui/core";
import React, { useEffect, useState } from "react";
import BTC from "../../backcomp/BTC";
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

const Coin = () => {
  const navigate = useNavigate();
  const classes = useStyles();

  const handleNavigate = (event) => {
    const path = event.currentTarget.dataset.path;
    navigate(path);
  };

  return (
    <Container className={classes.root}>
      <Grid container spacing={2}>
        <Grid item xs={12}>
          <Button data-path="/" onClick={handleNavigate}>
            go to Home
          </Button>
        </Grid>
      </Grid>
      you can Contact us on different platforms
    
   
    </Container>
  );
};

export default Coin;

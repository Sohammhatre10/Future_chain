import {
    Button,
    Container,
    Grid,
    Paper,
    Typography,
    makeStyles,
  } from "@material-ui/core";
  import React, { useEffect, useState } from "react";
  import { useNavigate, useParams} from "react-router-dom";
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

  const Predict = () => {
    const navigate = useNavigate();
    const classes = useStyles();
    const {coin_id} = useParams()
    const handleNavigate = (event) => {
    
        const path = event.currentTarget.dataset.path;
        navigate(path);
      };
    return(
        <>
        
        <Button data-path="/" onClick={handleNavigate}>{coin_id}</Button>
        
        </>
    )
  }
export default Predict;
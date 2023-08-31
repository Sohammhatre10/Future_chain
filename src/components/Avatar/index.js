import React from "react";
import {
    makeStyles,
    Avatar,
    Grid,
  } from "@material-ui/core";

const useStyles = makeStyles((theme) => ({
  root: {
    display: "flex",
    justifyContent: "center",
    marginTop: theme.spacing(0),
    padding : theme.spacing(3)
  },
  avatar: {
    width: theme.spacing(15),
    height: theme.spacing(15),
  },
}));

function UserAvatar() {
  const classes = useStyles();

  return (
    <div className={classes.root} style={{ backgroundColor : "blue"}}>
       
        <Avatar alt="User Photo" src="public\logo512.png" className={classes.avatar} />
        
      
    </div>
  );
}

export default UserAvatar;
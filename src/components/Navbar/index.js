import {
  AppBar,
  Button,
  IconButton,
  Menu,
  MenuItem,
  TextField,
  Toolbar,
  Typography,
  makeStyles,
  Drawer,
  Divider,
  List,
  ListItem,
} from "@material-ui/core";
import { Menu as MenuIcon } from "@material-ui/icons";
import { yellow } from "@material-ui/core/colors";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

const useStyles = makeStyles((theme) => ({
  root: {
    backgroundColor: theme.palette.background.paper,
  },
  logo: {
    marginRight: theme.spacing(2),
  },
  button: {
    [theme.breakpoints.down("md")]: {
      display: "none",
    },
  },
  searchFilter: {
    marginLeft: "auto",
  },
  menuIcon: {
    display: "none",
    [theme.breakpoints.down("md")]: {
      display: "block",
    },
  },
  searchInput: {
    marginRight: theme.spacing(2),
    width: "300px",
  },
}));

const DrawerItems = [
  { name: "Home", path: "/" },
  { name: "About", path: "/coin" },
];

const NavBar = () => {
  const navigate = useNavigate();
  const classes = useStyles();
  const [keyword, setKeyword] = useState("");
  const [drawer, setDrawer] = useState(false);

  const handleNavigate = ({ currentTarget }) => {
    const path = currentTarget.dataset.path;
    setDrawer(false);
    navigate(path);
  };

  const handleEnter = (event) => {
    if (event.key === "Enter") {
      const _keyword = encodeURIComponent(keyword);
      setKeyword("");
      navigate(`/Coin/${_keyword}`);
    }
  };

  const handleMenu = () => {
    setDrawer(!drawer);
  };

  return (
    <AppBar
      position="sticky"
      color="white"
      className={classes.root}
      style={{ background: "#352F44",color:"white" }}
    >
      <Toolbar style={{color:"white"}}>
        <IconButton
          onClick={handleMenu}
          className={classes.menuIcon}
          edge="start"
          color="inherit"
          aria-label="menu"
        >
          <MenuIcon />
        </IconButton>
        <Drawer
          open={drawer}
          onClose={() => setDrawer(false)}
          anchor="top"
        >
          <List>
            {DrawerItems.map((item) =>
              item.divider ? (
                <Divider key={item.divider} />
              ) : (
                <ListItem
                  key={item.name}
                  data-path={item.path}
                  button
                  onClick={handleNavigate}
                >
                  {item.name}
                </ListItem>
              )
            )}
          </List>
        </Drawer>

        <Typography className={classes.logo} variant="h3">
          {/* Your logo here */}
        </Typography>
        <Button
          
          className={classes.button}
          data-path="/"
          onClick={handleNavigate}
        >
          <span style={{color:"white"}}>Home</span>
        </Button>
        <Button
          className={classes.button}
          data-path="/Coin"
          onClick={handleNavigate}
        >
          <span style={{color:"white"}}>About</span>
        </Button>

        <TextField
          label="Search ..."
          className={classes.searchInput}
          variant="outlined"
          color="secondary"
          size="small"
          
          onKeyUp={handleEnter}
          onChange={(e) => setKeyword(e.target.value)}
        />
      </Toolbar>
    </AppBar>
  );
};

export default NavBar;

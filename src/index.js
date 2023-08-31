import React from "react";
import { render } from "react-dom";
import {
  colors,
  createTheme,
  CssBaseline,
  ThemeProvider,
} from "@material-ui/core";
import App from "./App";
import { BrowserRouter } from "react-router-dom";

const customTheme = createTheme({
  palette: {
    type: "dark",
    primary: colors.blue,
    background: {
      default: "#121212",
      paper: "#202020",
    },
  },
  typography: {
    button: {
      textTransform: "none",
    },
  },
  shape: {
    borderRadius: 16,
  },
});

const container = document.getElementById("app");

render(
  <ThemeProvider ThemeProvider={customTheme}>
    <CssBaseline />
    <BrowserRouter>
      <App  />
    </BrowserRouter>
  </ThemeProvider>,
  container
);
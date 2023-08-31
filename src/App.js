import React from "react";
import { Routes, Route } from "react-router-dom";
import Predict from "./pages/predict";
import Prediction from "./backcomp/BTCPred";
import Coin_page from "./backcomp/BTC";
import Home from "./pages/home";
import Coin from "./pages/coin_page";
import NavBar from "./components/Navbar";
import { Box, Container } from "@material-ui/core";

function App() {
  //#61677A
  return (
    <div style={{ background: "#352F44" }}>
      <NavBar />
      <Container>
        <Box mt={3}>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/Coin" element={<Coin />} />
            <Route path="/Coin/:coin_id" element={<Coin_page />} />
            <Route path="/Coin/:coin_id/prediction" element={<Prediction />} />
          </Routes>
        </Box>
      </Container>
    </div>
  );
}

export default App;

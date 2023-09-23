const express = require('express');
const { MongoClient } = require('mongodb');
const cors = require('cors')
const app = express();
const port = 3000;
app.use(cors())

const url = "mongodb+srv://{username}:{password}@cluster0.ziyiwtr.mongodb.net/Crypto_data?retryWrites=true&w=majority";

// MongoDB Atlas connection details
const atlas_connection_string = url;

//BTC

app.get('/BTC', async (req, res) => {
  try {
    // Establish MongoDB Atlas connection
    const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
    await client.connect();

    // Specify the database and collection
    const database_name = "Crypto_data";
    const collection_name = "BTC";

    const db = client.db(database_name);
    const collection = db.collection(collection_name);

    // Fetch data using the find method
    const query = {}; // You can specify a query here if needed
    
    const result = await collection.find(query).toArray();

    res.json(result);

    client.close();
  } catch (error) {
    console.error('Error fetching data:', error);
    res.status(500).send('An error occurred while fetching data.');
  }
});


//BTC_pridict


app.get('/BTC_prid', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "BTC-PRED";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });


  //DOGE




  
app.get('/DOGE', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "DOGE";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });

//doge_prid




app.get('/DOGE_prid', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "DOGE-PRED";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });




  




//ETH

app.get('/ETH', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "ETH";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });


  //eth_pred

  app.get('/ETH_prid', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "ETH-PRED";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });

  //XRP

  app.get('/XRP', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "XRP";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });

  //xrp_pred


  app.get('/XRP_prid', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "XRP-PRED";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });

  //ltc


  app.get('/LTC', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "LTC";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });


  //ltc_prid
  app.get('/LTC_prid', async (req, res) => {
    try {
      // Establish MongoDB Atlas connection
      const client = new MongoClient(atlas_connection_string, { useNewUrlParser: true, useUnifiedTopology: true });
      await client.connect();
  
      // Specify the database and collection
      const database_name = "Crypto_data";
      const collection_name = "LTC-PRED";
  
      const db = client.db(database_name);
      const collection = db.collection(collection_name);
  
      // Fetch data using the find method
      const query = {}; // You can specify a query here if needed
      
      const result = await collection.find(query).toArray();
  
      res.json(result);
  
      client.close();
    } catch (error) {
      console.error('Error fetching data:', error);
      res.status(500).send('An error occurred while fetching data.');
    }
  });















app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

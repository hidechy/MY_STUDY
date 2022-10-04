const express = require('express');

const graphqlHTTP = require('express-graphql').graphqlHTTP;

const schema = require('./server/schema/schema')

const mongoose = require("mongoose")

const app = express();



const port = process.env.PORT || 4000


app.use('/graphql', graphqlHTTP({
    graphiql: true,
    schema: schema
}))



mongoose.connect(`mongodb+srv://${process.env.mongoUserName}:${process.env.mongoUserPassword}@graphqlcluster.uzlux.mongodb.net/${process.env.mongoDatabase}?retryWrites=true&w=majority`,
{useNewUrlParser: true, useUnifiedTopology: true})
.then(() => {
    app.listen({port: port}, () => {
        console.log("Listening for requests on my awesome port 4000")
    })
})
.catch((e) => console.log("Error : " + e));


// app.listen(4000, () => {
//     console.log("Listening for requests on my awesome port 4000")
// })





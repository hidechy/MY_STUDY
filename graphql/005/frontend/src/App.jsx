import './App.css'



import {gql, useQuery} from '@apollo/client';

import {useState} from 'react';

const BOOKS = gql`
query {
  test {
    title
    author
  }
}
`;

function Books(){
  const {loading, error, data} = useQuery(BOOKS);




  if (loading) return <p>ロード中です。</p>;
  if (error) return <p>エラーがあります。</p>;








//  console.log(data);

  return data.test.map(({title, author}) => (
    <div key={title}>{title} : {author}</div>
  ));





  
}



function App() {

  return (
    <div className="App">
      <h2>GraphQL Client</h2>
      <Books />
    </div>
  )
}

export default App

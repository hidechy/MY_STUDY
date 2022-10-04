import React from 'react'
import Head from 'next/head'

function Index({ query }) {
  const {text} = query
  return (
    <>
      <Head>
        <title>{text}</title>
      </Head>
      <div>{text}</div>
    </>
  )
}


Index.getInitialProps = ({ query }) => {
  return { query }
}

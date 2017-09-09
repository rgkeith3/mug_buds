import React from 'react'
import ReactDOM from 'react-dom'

require('./stylesheets/main.sass');

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root')
  ReactDOM.render(<h1>React!</h1>, root)
})

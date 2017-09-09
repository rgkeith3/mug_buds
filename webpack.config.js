var ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  entry: './frontend/entry.jsx',
  output: {
    filename: './public/bundle.js'
  },
  module: {
    loaders: [
      {
        test: [/\.jsx?$/],
        exclude: /(node_modules)/,
        loader: 'babel-loader',
        query: {
          presets: ['es2015', 'react']
        }
      },
      {
        test: [/\.sass?$/],
        loader: ExtractTextPlugin.extract('css-loader!sass-loader')
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin('public/style.css', {
      allChunks: true
    })
  ],
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
}

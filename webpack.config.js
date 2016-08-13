var webpack = require('webpack');

module.exports = {
  entry: './src/App.js',
  output: {
    path: './public',
    filename: 'bundle.js'
  },
  devServer: {
    contentBase: 'public/',
    // 'host' is needed to make sure the webpack-dev-server is exposed outside
    // the container
    host: '0.0.0.0',
    inline: true,
    port: 3333
  },
  module: {
    loaders: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel',
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  }
}

// var webpack = require("webpack");
var path = require('path')
module.exports = {
  devServer: {
  },
  devtool: 'source-map',
  entry: {
    "ym.min": "./src/bootstrap.ts",
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        enforce: "pre",
        use: [
          {
            loader: "tslint-loader"
          }
        ]
      },
      {
        test: /\.ts$/,
        use: [
          {
            loader: "ts-loader"
          }
        ]
      }
    ]
  }, // End of module
  output: {
    filename: 'app.js',
    path: path.resolve(__dirname, './')
  },
  plugins: [],
  resolve: {
    modules: [
      "node_modules",
      path.join(__dirname, 'node_modules')
    ],
    extensions: [".webpack.js", ".web.js", ".ts", ".js", "*"],
    enforceExtension: false,
    alias: {
      'handlebars': 'handlebars/runtime.js'
    }
  }
}
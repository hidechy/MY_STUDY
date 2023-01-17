const { defineConfig } = require("@vue/cli-service");
const BundleTracker = require('webpack-bundle-tracker')

module.exports = defineConfig({
  transpileDependencies: true,

  configureWebpack: {
    plugins: [
      new BundleTracker({ path: __dirname, filename: 'webpack-stats.json' }),
    ],
  },

});

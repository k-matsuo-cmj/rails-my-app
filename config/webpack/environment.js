const { environment } = require('@rails/webpacker')

// jQuery
const webpack = require('webpack')
environment.plubing.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)

module.exports = environment

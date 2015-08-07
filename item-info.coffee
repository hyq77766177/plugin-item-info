require 'coffee-react/register'
require '../../views/env'

i18n = require './node_modules/i18n'
path = require 'path-extra'

i18n.configure
  locales: ['en_US', 'ja_JP', 'zh_CN']
  defaultLocale: 'zh_CN'
  directory: path.join(__dirname, 'i18n')
  updateFiles: false
  indent: '\t'
  extension: '.json'

window.language = config.get 'poi.language', 'zh_CN'
i18n.setLocale(window.language)
window.__ = i18n.__

require './views'

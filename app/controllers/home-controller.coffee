Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
HomePageView = require 'views/home/home-page-view'
ShowEntryView = require 'views/home/show-entry-view'

module.exports = class HomeController extends Controller
  beforeAction: ->
    super
    @compose 'header', HeaderView, region: 'header'

  index: ->
    @view = new HomePageView region: 'main'

  showEntry: (params) ->
    @view = new ShowEntryView region: 'main', entry_name: params.entry_name

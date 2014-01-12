View = require 'views/base/view'

module.exports = class HomePageView extends View
  autoRender: true
  className: 'entry'
  template:  require './templates/entry'

  initialize: (args)->
    this.entry_name = args.entry_name
    
    try 
      this.entry = require 'data/' + this.entry_name

    catch error
      this.notfound = require 'views/error/templates/notfound'
      this.template = _.bind(this.template, this , {entry: this.notfound})

    finally
      this.template = _.bind(this.template, this , {entry: this.entry})
      super

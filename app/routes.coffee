# Application routes.
module.exports = (match) ->
  match '', 'home#index'
  match ':entry_name', 'home#showEntry'

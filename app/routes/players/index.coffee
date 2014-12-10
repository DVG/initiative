`import Ember from 'ember'`

PlayersRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'character'

`export default PlayersRoute`

`import Ember from 'ember'`

EncountersRoute = Ember.Route.extend
  model: (params) ->
    @store.find('encounter')

`export default EncountersRoute`

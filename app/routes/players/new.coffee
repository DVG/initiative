`import Ember from 'ember'`

New = Ember.Route.extend
  renderTemplate: ->
    @render
      into: 'application'

  model: (params) ->
    @store.createRecord('character')

  actions:
    willTransition: ->
      @controller.setProperties
        name: null
        maxHP: null

`export default New`

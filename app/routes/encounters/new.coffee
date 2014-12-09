`import Ember from 'ember'`

New = Ember.Route.extend
  renderTemplate: ->
    @render
      into: 'application'

  actions:
    willTransition: ->
      @controller.setProperties
        name: null

`export default New`

`import Ember from 'ember'`
`import Error from '../../models/simple-errors'`

New = Ember.Controller.extend
  name: null
  actions:
    createEncounter: ->
      encounter = @store.createRecord 'encounter',
        name: @get('name')
      encounter.validate().then(=>
        encounter.save().then =>
          @transitionToRoute 'encounters'
      ).catch =>
        @set 'errors', Error.create
          errors:
            encounter.get('errors')


`export default New`

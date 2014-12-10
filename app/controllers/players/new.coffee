`import Ember from 'ember'`
`import Error from '../../models/simple-errors'`

New = Ember.Controller.extend
  name: null
  maxHP: null

  actions:
    createPlayer: ->
      player = @get('content')
      player.setProperties
        name: @get('name')
        maxHP: @get('maxHP')
        currentHP: @get('maxHP')
        type: "Player"
      player.validate().then(=>
        player.save().then =>
          @transitionToRoute 'players'
      ).catch =>
        @set 'errors', Error.create
          errors:
            player.get('errors')

`export default New`

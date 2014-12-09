`import Ember from 'ember'`

SimpleError = Ember.Object.extend
  # errors should be assigned a json object with the errors
  # errors:
  #   base: ["Access Denied"]
  #   username: ["can't be blank"]
  #   password: ["can't be blank"]

  messages: (->
    errors = @get('errors')
    allErrors = []
    for own prop, value of errors
      allErrors = allErrors.concat errors[prop]
    @_generateMessages(allErrors)
  ).property('errors')

  # Allows you to look up arbitrary errors
  unknownProperty: (key) ->
    errors = @_errorsFor(key)
    @_generateMessages(errors)

  _errorsFor: (property) ->
    Ember.A @get('errors').get(property)

  _generateMessages: (array) ->
    arr = Ember.A([])
    array.map (item) ->
      arr.pushObject
        message: item
    arr

`export default SimpleError`

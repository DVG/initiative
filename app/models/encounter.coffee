`import DS from 'ember-data'`
`import Validations from 'ember-validations'`

Encounter = DS.Model.extend Validations.Mixin,
  validations:
    name:
      presence: true
  name: DS.attr()

`export default Encounter`

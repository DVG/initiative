`import DS from 'ember-data'`
`import Validations from 'ember-validations'`

Character = DS.Model.extend Validations.Mixin,
  validations:
    name:
      presence: true
    maxHP:
      numericality: true
  name: DS.attr()
  maxHP: DS.attr()
  currentHP: DS.attr()
  type: DS.attr()

`export default Character`

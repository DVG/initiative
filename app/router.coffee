`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource "encounters", ->
    @route "new"
  @resource "players", ->
    @route "new"

`export default Router`

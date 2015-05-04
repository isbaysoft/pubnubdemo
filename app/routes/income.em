`import Ember from 'ember'`

class IncomeRoute extends Ember.Route
  model: ->
    @store.find 'message'

  setupController: (controller, model)->
    controller.model = model

`export default IncomeRoute`

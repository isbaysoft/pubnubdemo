`import Ember from 'ember'`

class OutcomeView extends Ember.View
  actions:
    clear: ->
      @controller.send 'clear'

`export default OutcomeView`

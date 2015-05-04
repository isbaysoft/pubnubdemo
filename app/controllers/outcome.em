`import Ember from 'ember'`

class OutcomeController extends Ember.Controller
  +computed newMessage
  canSendMessage: ->
    Em.isPresent @newMessage

  cantSendMessage: Em.computed.not('canSendMessage')

  actions:
    clear: ->
      @newMessage = undefined

    submit: ->
      @pubnub.publish
        channel: 'seriousappforchatting'
        message: @newMessage
      @newMessage = undefined

`export default OutcomeController`

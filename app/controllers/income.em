`import Ember from 'ember'`

class IncomeController extends Ember.Controller
  init: ->
    super()
    @initPubNub()

  initPubNub: ->
    @pubnub.subscribe
      channel: "seriousappforchatting"
      message: (message, env, channel)=>
        @store.createRecord 'message', {text: message}

`export default IncomeController`

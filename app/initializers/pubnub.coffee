# Takes two parameters: container and app
initialize = (container, application) ->
  pubnub = PUBNUB.init
    publish_key: 'demo'
    subscribe_key: 'demo'
  container.register 'global:pubnub', pubnub, { instantiate: false, singleton: true }
  application.inject 'controller', 'pubnub', 'global:pubnub'

  pubnub.push = (message)->
    pubnub.publish
      channel : "seriousappforchatting"
      message : message

PubnubInitializer =
  name: 'pubnub'
  initialize: initialize

`export {initialize}`
`export default PubnubInitializer`

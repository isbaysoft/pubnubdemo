`import DS from 'ember-data'`

class Message extends DS.Model
  text: DS.attr 'string'

Message.reopenClass
  FIXTURES: []

`export default Message`

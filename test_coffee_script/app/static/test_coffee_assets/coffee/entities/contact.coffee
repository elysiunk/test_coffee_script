ContactManager.module "Entities", (Entities, ContactManager, Backbone, Marionette, $, _) ->
  Entities.Contact = Backbone.Model.extend(defaults:
    lastName: ""
    firstName: ""
    phoneNumber: ""
  )
  Entities.ContactCollection = Backbone.Collection.extend(
    model: Entities.Contact
    comparator: "firstName"
  )
  contacts = undefined
  initializeContacts = ->
    contacts = new Entities.ContactCollection([
      id: 1
      firstName: "Alice"
      lastName: "Arten"
      phoneNumber: "555-0184"
    ,
      id: 2
      firstName: "Bob"
      lastName: "Brigham"
      phoneNumber: "555-0163"
    ,
      id: 3
      firstName: "Charlie"
      lastName: "Campbell"
      phoneNumber: "555-0129"
    ])

  API = getContactEntities: ->
    initializeContacts()  if contacts is `undefined`
    contacts

  ContactManager.reqres.setHandler "contact:entities", ->
    API.getContactEntities()

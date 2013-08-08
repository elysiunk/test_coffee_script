ContactManager.module "ContactsApp.List", (List, ContactManager, Backbone, Marionette, $, _) ->
  List.Controller = listContacts: ->
    contacts = ContactManager.request("contact:entities")
    contactsListView = new List.Contacts(collection: contacts)
    ContactManager.mainRegion.show contactsListView
    contactsListView.on "itemview:contact:show", (childView, model) ->
      ContactManager.trigger "contact:show", model.get("id")

    contactsListView.on "itemview:contact:modal", (childView, model) ->
      ContactManager.ContactsApp.Modal.Controller.modalContact model

    contactsListView.on "itemview:contact:edit", (childView, model) ->
      ContactManager.ContactsApp.Edit.Controller.editContact model

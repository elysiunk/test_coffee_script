ContactManager.module "ContactsApp.Edit", (Edit, ContactManager, Backbone, Marionette, $, _) ->
  Edit.Controller = editContact: (model) ->
    contactEdit = new Edit.Contact(model: model)
    ContactManager.dialogRegion.show contactEdit

ContactManager.module "ContactsApp.Modal", (Modal, ContactManager, Backbone, Marionette, $, _) ->
  Modal.Contact = Marionette.ItemView.extend(template: "#modal-view-template")

ContactManager.module "ContactsApp.Modal", (Modal, ContactManager, Backbone, Marionette, $, _) ->
  Modal.Controller = modalContact: (model) ->
    view = new Modal.Contact(model: model)
    modal = new Backbone.BootstrapModal(content: view).open()

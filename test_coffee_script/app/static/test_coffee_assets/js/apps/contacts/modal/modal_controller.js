// Generated by CoffeeScript 1.6.3
(function() {
  ContactManager.module("ContactsApp.Modal", function(Modal, ContactManager, Backbone, Marionette, $, _) {
    return Modal.Controller = {
      modalContact: function(model) {
        var modal, view;
        view = new Modal.Contact({
          model: model
        });
        return modal = new Backbone.BootstrapModal({
          content: view
        }).open();
      }
    };
  });

}).call(this);
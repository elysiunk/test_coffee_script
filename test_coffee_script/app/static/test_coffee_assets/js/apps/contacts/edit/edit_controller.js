// Generated by CoffeeScript 1.6.3
(function() {
  ContactManager.module("ContactsApp.Edit", function(Edit, ContactManager, Backbone, Marionette, $, _) {
    return Edit.Controller = {
      editContact: function(model) {
        var contactEdit;
        contactEdit = new Edit.Contact({
          model: model
        });
        return ContactManager.dialogRegion.show(contactEdit);
      }
    };
  });

}).call(this);

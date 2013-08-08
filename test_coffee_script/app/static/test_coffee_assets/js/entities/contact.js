// Generated by CoffeeScript 1.6.3
(function() {
  ContactManager.module("Entities", function(Entities, ContactManager, Backbone, Marionette, $, _) {
    var API, contacts, initializeContacts;
    Entities.Contact = Backbone.Model.extend({
      defaults: {
        lastName: "",
        firstName: "",
        phoneNumber: ""
      }
    });
    Entities.ContactCollection = Backbone.Collection.extend({
      model: Entities.Contact,
      comparator: "firstName"
    });
    contacts = void 0;
    initializeContacts = function() {
      return contacts = new Entities.ContactCollection([
        {
          id: 1,
          firstName: "Alice",
          lastName: "Arten",
          phoneNumber: "555-0184"
        }, {
          id: 2,
          firstName: "Bob",
          lastName: "Brigham",
          phoneNumber: "555-0163"
        }, {
          id: 3,
          firstName: "Charlie",
          lastName: "Campbell",
          phoneNumber: "555-0129"
        }
      ]);
    };
    API = {
      getContactEntities: function() {
        if (contacts === undefined) {
          initializeContacts();
        }
        return contacts;
      }
    };
    return ContactManager.reqres.setHandler("contact:entities", function() {
      return API.getContactEntities();
    });
  });

}).call(this);

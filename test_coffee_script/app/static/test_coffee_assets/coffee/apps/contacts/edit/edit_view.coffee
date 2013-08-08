ContactManager.module "ContactsApp.Edit", (Edit, ContactManager, Backbone, Marionette, $, _) ->
  Edit.Contact = Marionette.ItemView.extend(
    template: "#edit_contact"
    events:
      "click button.js-submit": "submitClicked"

    submitClicked: (e) ->
      e.preventDefault()

      # console.log("edit contact");
      data = Backbone.Syphon.serialize(this)
      @model.set data
      @model.save data
  )

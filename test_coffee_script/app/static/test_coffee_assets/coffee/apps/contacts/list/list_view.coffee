ContactManager.module "ContactsApp.List", (List, ContactManager, Backbone, Marionette, $, _) ->
  List.Contact = Marionette.ItemView.extend(
    tagName: "tr"
    template: "#list-contact"
    events:
      "click button.js-show": "showClick"
      "click button.js-popover": "popoverShow"
      "click button.js-modal": "modalClick"
      "click button.js-edit": "editClick"

    showClick: (e) ->
      @trigger "contact:show", @model

    popoverShow: (e) ->
      @$(".js-popover").popover
        title: "Phone number"
        content: @model.attributes.phoneNumber


    modalClick: (e) ->
      @trigger "contact:modal", @model

    editClick: (e) ->
      @trigger "contact:edit", @model
  )
  List.Contacts = Marionette.CompositeView.extend(
    tagName: "table"
    className: "table table-hover"
    template: "#table-contact"
    itemView: List.Contact
    itemViewContainer: "tbody"
  )

@ContactManager = new Marionette.Application()

ContactManager.addRegions
    mainRegion: "#main-region"
    dialogRegion: "#dialog-region"

ContactManager.navigate = (route, options) ->
    options or (options={})
    Backbone.history.navigate route, options

ContactManager.getCurrentRoute = ->
    Backbone.history.fragment

ContactManager.on "initialize:after", ->
    if Backbone.history
        Backbone.history.start()

        if @getCurrentRoute() is ""
            @navigate "contacts"
            @ContactManager.ContactsApp.List.Controller.listContacts()

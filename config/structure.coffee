# Read more about app structure at http://docs.appgyver.com

module.exports =

  # See styling options for tabs and other native components in app/common/native-styles/ios.css or app/common/native-styles/android.css
  tabs: [
    # {
    #   title: "Index"
    #   id: "index"
    #   location: "example#getting-started" # Supersonic module#view type navigation
    # }
    # {
    #   title: "Settings"
    #   id: "settings"
    #   location: "example#settings"
    # }
    {
      title: "My Expenses"
      id: "expenses"
      location: "expenses#new" # URLs are supported!
    }
    {
      title: "My Goals"
      id: "goals"
      location: "goals#index"
    }
    {
      title: "My Profile"
      id: "profile"
      location: "profile#show" # URLs are supported!
    }
  ]

  rootView:
    location: "expenses#new"

  preloads: [
    {
      id: "learn-more"
      location: "example#learn-more"
    }
    {
      id: "using-the-scanner"
      location: "example#using-the-scanner"
    }
  ]
  
  drawers:
    left:
      id: "nav-drawer"
      location: "home#nav"
      showOnAppLoad: false
    options:
      animation: "slideFromLeft"

  # drawers:
  #   left:
  #     id: "leftDrawer"
  #     location: "example#drawer"
  #     showOnAppLoad: false
  #   options:
  #     animation: "swingingDoor"
  #
  # initialView:
  #   id: "initialView"
  #   location: "example#initial-view"

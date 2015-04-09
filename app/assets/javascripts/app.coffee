AppComponenet = APP.Components.AppComponenet

class APP.App
  @flux: null

  @boot: ->
    # Enable touch events for mobile / tablet
    React.initializeTouchEvents(true)

    # Check for touch screen
    if /ip(hone|od)|ipad/i.test(navigator.userAgent)
      $("body").css("cursor", "pointer")
      $("input").on('blur', =>
        $("body").css("height", "+=1").css("height", "-=1")
      )

    React.render React.createFactory(AppComponenet)(), APP_ROOT
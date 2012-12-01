appsfuel101
===========

AppsFuel Dot.js 2012 workshop

Dec. 1st 2012 #dotjseu

DOCOMO > Bonjiourno > AppsFuel
speakers: @emabolo @theelter @matteoburgassi

1. Why HTML5
2. Intro web apps
3. Live coding
4. AppsFuel dev panel
(5. Advanced HTML5)

1. Why HTML5

  Developping native apps = loosing money
  59% is loosing money
  native apps have no portability

  => HTML 5
  it rocks
  it's a standard
  336 000 000 compatible devices
  2 000 000 000 foreseen for Q4 2013

  Option 1
  Hybrid apps it's not a solution (phonegap)
  - webview is slower
  - weak distribution (native distribution store)

  Option 2
  pure web apps
  yes but how to distribute?
    discovering
    installing
    making money
  Mozilla apps marketplace (HTML5)
  AppsFuel beta (HTML5)
  Facebook app center (HTML5)
  They all are HTML5 so no issue on distribution

  AppsFuel
  --------
  Market place for mobile apps HTML5

  json file as manifest
  iPhone: Add to home screen
  Android: Launcher widget

  Purchase experience
  Payment per month (via the operator)> Mobile number (via the operator) > Confirmation

2. What's a mobile web apps
  - Fat client
  - One page
  - Ajax
  - HTML5+CSS3
  - HTTP optimized request
  - JSON instead of XML

  HTML5
  - useful meta tags for mobile
  - viewport & app settings
  - hardware access
    - touch
    - orientation
    - geoloc
  - offline storage
  - multimedia

  Viewport
    '''html
    <meta name="viewport" content="width=device-width">
    // or
    <meta name="viewport" content="width=device-width,initial-scale=1, user-scalable=no">
    '''
    see quircksmode.org viewports bologna
    '''html
    <link rel="apple-touch-icon-precomposed" href="/icon.jpg">
    <meta name="apple-mobile-web-app-capable" content="yes">
    '''

  Mobile forms
    '''html
    <input type="email" name="myemail" required>
    '''
    types: text,email,url,number ...
    To use specifics keyboard layout

  Touch event
    '''js
    addEventListener("touchmove",callback);
    '''

  Gesture
    listen to touchStart,touchMove,touchEnd and calcultate the angle, speed, direction...
    http://bit.ly/demoswipe

  Device Orientation
    Z:alpha
    Gamma
    Beta
    '''js
    addEventListener("deviceorientation",callback)
    '''
    http://bit.ly/demoorientation

  Geoloc

  Offline
    Local Storage
      '''js
      localStorage.setItem("name","value");
      localStorage.name="value"; // faster
      '''
      Limit:
      - 2.5 MB
      - Asynchronous (apps stalking)
      - strings only (ok with JSON/base64 encoded image)
      - local or session

    Appcache Manifest
      '''html
      <html manifest="appcache.manifest">
      '''
      '''text
      CACHE MANIFEST
      # version 0.0.1

      js/script-v1.0.js
      ...
      NETWORK:
      pages/*

      FALLBACK:
      / index_offline.html
      ...
      '''

  Canvas
    2D Context supported
    3D Context only on FirefoxOS

    Games performance are good on iOS and android 4+ with Chrome and always better then phonegap apps

3. Live Coders


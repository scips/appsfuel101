
MyApp = new MyApp()
MyApp.search('paris')

search = document.querySelector("#search")
search.onkeypress = (e) ->
  if e.which is 13
    MyApp.search(e.srcElement.value)

ZoomView = new ZoomView()

zoom = document.querySelector("#zoom")
zoom.onclick = ZoomView.dezoom

ul = document.querySelector("#main")
ul.onclick = ZoomView.zoom
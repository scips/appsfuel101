// Generated by CoffeeScript 1.3.3
var MyApp, ZoomView, search, ul, zoom;

MyApp = new MyApp();

MyApp.search('paris');

search = document.querySelector("#search");

search.onkeypress = function(e) {
  if (e.which === 13) {
    return MyApp.search(e.srcElement.value);
  }
};

ZoomView = new ZoomView();

zoom = document.querySelector("#zoom");

zoom.onclick = ZoomView.dezoom;

ul = document.querySelector("#main");

ul.onclick = ZoomView.zoom;

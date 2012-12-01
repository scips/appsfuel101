class MyApp

  constructor: () ->
    

  getTemplate: () ->
    """<li><img src="{SRC}" /></li>
    """

  getImage: () ->
    # using flickr.photos.search
    xhr = new XMLHttpRequest()
    xhr.onreadystatechange = (e)->
        @mainList = document.querySelector("#main")
        if (this.readyState == this.DONE)
            data = JSON.parse(this.response)
            data = data.photos.photo
            console.log(data)
            html = for item in data
              template = "<li><img src=\"{SRC}\" /></li>"
              template.replace("{SRC}",item.url_m)
            @mainList.innerHTML=""
            @mainList.innerHTML=html.join("\n")
    url = "http://api.flickr.com/services/rest/?method=flickr.photos.search&extras=url_m&per_page=20&format=json&nojsoncallback=1&safe_search=1"
    apikey = "6ecfcd8d4a3b8a04da6093733db989a2"
    url += '&api_key=' + apikey
    url += '&text=' + 'appcircus'
    url = encodeURI(url)
    xhr.open("GET", url, true)
    xhr.send()



ready = ->
  #$('#carousel-example-generic').carousel()
  #$('#carousel-example-generic .item:first').addClass("active")
  alert 'hw'
  initalise = ->
    alert 'gm'
    myLatlng = new (google.maps.LatLng)(60.02582839999999, 18.013170899999977)
    mapProp =
      center: myLatlng
      zoom: 9
      mapTypeId: google.maps.MapTypeId.ROADMAP
    map = new (google.maps.Map)(document.getElementById('googleMap'), mapProp)
    marker = new (google.maps.Marker)(
      position: myLatlng
      map: map
      title: 'Lövåsens Hantverk')
    return

  google.maps.event.addDomListener window, 'load', initalise

$(document).ready(ready)
$(document).on('page:load', ready)  

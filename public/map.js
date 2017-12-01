function initMap() {
  console.log('inside initMap in js')
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: {
      lat: 51.5399828,
      lng: -0.0677204
    }
  })
  // Create an array of alphabetical characters used to label the markers.
  var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

  // Add some markers to the map.
  // Note: The code uses the JavaScript Array.prototype.map() method to
  // create an array of markers based on a given "locations" array.
  // The map() method here has nothing to do with the Google Maps API.
  var markers = locations.map(function(location, i) {
    return new google.maps.Marker({
      position: location,
      label: labels[i % labels.length]
    })
  })
  console.log('markers', markers)

  // Add a marker clusterer to manage the markers.
  var markerCluster = new MarkerClusterer(map, markers, {
    imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
  })
}
var locations = [
  {
    lat: 51.541532,
    lng: -0.061594
  },
  {
    lat: 51.535994,
    lng: -0.048638
  },
  {
    lat: 51.542063,
    lng: -0.069984
  },
  {
    lat: 51.546192,
    lng: -0.074045
  },
  {
    lat: 51.539394,
    lng: -0.083675
  },
  {
    lat: 51.523713,
    lng: -0.082138
  }
]

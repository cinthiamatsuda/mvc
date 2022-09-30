<html>

<head>
  <link rel="stylesheet" href="./assets/css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <script src="https://api.mqcdn.com/sdk/place-search-js/v1.0.0/place-search.js"></script>
  <link type="text/css" rel="stylesheet" href="https://api.mqcdn.com/sdk/place-search-js/v1.0.0/place-search.css" />

  <script src="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.js"></script>
  <link type="text/css" rel="stylesheet" href="https://api.mqcdn.com/sdk/mapquest-js/v1.3.2/mapquest.css" />

  <script type="text/javascript">
    window.onload = function () {
      let ps = placeSearch({
        key: '1hJo8hXlcYlsDGN1m9Ezs3GAp5bSGAPE',
        container: document.querySelector('#search-input'),
        useDeviceLocation: true,
        collection: [
          'poi',
          'airport',
          'address',
          'adminArea',
        ]
      });

      L.mapquest.key = '1hJo8hXlcYlsDGN1m9Ezs3GAp5bSGAPE';

      var map = L.mapquest.map('map', {
        center: [40.7591704, -74.0392711],
        layers: L.mapquest.tileLayer('map'),
        zoom: 12
      });

      L.mapquest.control().addTo(map);

      let markers = [];

      ps.on('change', (e) => {
        markers
          .forEach(function (marker, markerIndex) {
            if (markerIndex === e.resultIndex) {
              markers = [marker];
              marker.setOpacity(1);
              map.setView(e.result.latlng, 11);
            } else {
              removeMarker(marker);
            }
          });
      });

      ps.on('results', (e) => {
        markers.forEach(removeMarker);
        markers = [];

        if (e.results.length === 0) {
          map.setView(new L.LatLng(40.7591704, -74.0392711), 12);
          return;
        }

        e.results.forEach(addMarker);
        findBestZoom();
      });

      ps.on('cursorchanged', (e) => {
        markers
          .forEach(function (marker, markerIndex) {
            if (markerIndex === e.resultIndex) {
              marker.setOpacity(1);
              marker.setZIndexOffset(1000);
            } else {
              marker.setZIndexOffset(0);
              marker.setOpacity(0.5);
            }
          });
      });

      ps.on('clear', () => {
        console.log('cleared');
        map.setView(new L.LatLng(40.7591704, -74.0392711), 12);
        markers.forEach(removeMarker);
      });

      ps.on('error', (e) => {
        console.log(e);
      });

      function addMarker(result) {
        let marker = L.marker(result.latlng, {opacity: .4});
        marker.addTo(map);
        markers.push(marker);
      }

      function removeMarker(marker) {
        map.removeLayer(marker);
      }

      function findBestZoom() {
        let featureGroup = L.featureGroup(markers);
        map.fitBounds(featureGroup.getBounds().pad(0.5), {animate: false});
      }
    }
  </script>
</head>

<header>
  <nav class="navbar" style="background-color: #fffff;margin-top:-20px">
    <div class="d-flex flex-row bd-highlight mb-3" width="60px">
      <img src="./assets/images/Logo_trans_branco.png" width="60px" height="60px">
      <p class="logo">Traveller</p>
	</div>
    
<div>
    <form class="d-flex justify-content-end" style="margin-top:-40px">
      	  <input class="form-control mb-5 mt-5" type="search" aria-label="Search">
	      <button class="btn btn-secondary btn-md mb-5 ms-1 mt-5" type="submit">Buscar</button>
	      <button type="button" class="btn btn-secondary btn-md mb-5 ms-1 mt-5" style="white-space: nowrap">Cadastre-se</button>
	      <a class="btn btn-secondary btn-md mb-5 ms-1 mt-5" href="/Projeto_Traveller/login.jsp" type="button">Login</a>
	      <button type="button" class="btn btn-link" style="margin-right:-10px"><img src="./assets/images/contraste.png" width="30px" height="30px"></button>
	      <button type="button" class="btn btn-link" ><img src="./assets/images/fonte.png" width="30px" height="30px"></button>
    	</div>
    </form>
    </div>
  </nav>


  <div class="d-flex gap-4 justify-content-center">
    <a href="#" class="btn btn-secondary disabled btn-lg">Hospedagem</a>
    <a href="#" class="btn btn-secondary btn-lg">Gastronomia</a>
    <a href="#" class="btn btn-secondary btn-lg">Aluguel de Carro</a>
    <a href="#" class="btn btn-secondary btn-lg">O que fazer</a>
  </div>
</header>

<div>
  <br>
</div>

<body>
  <section class="hero">
    <p class="hero-title d-flex justify-content-center">New York</p>
  </section>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>

  <p class="texto text-center mt-5">conheça os hotéis mais indicados pelos nossos travellers</p>

  <div class="row my-5">
    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/langham.jpg" class="card-img-top" alt="The Langham New York">
        <div class="card-body">
          <h5 class="card-title">The Langham New York</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>

    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/equinox.jpg" class="card-img-top" alt="Equinox Hotel">
        <div class="card-body">
          <h5 class="card-title">Equinox Hotel</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>

    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/pendry.jpg" class="card-img-top" alt="Pendry Manhattan West">
        <div class="card-body">
          <h5 class="card-title">Pendry Manhattan West</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>

    <div class="col-12 col-sm-12 col-md-6 col-lg-3 my-3">
      <div class="card">
        <img src="./assets/images/plaza.jpg" class="card-img-top" alt="The Plaza New York">
        <div class="card-body">
          <h5 class="card-title">The Plaza New York</h5>
          <a href="#" class="btn btn-secondary">Saiba mais</a>
        </div>
      </div>
    </div>
    
    <section>
      <p class="texto text-center mt-5">veja a localização dos melhores hotéis de New York</p>
    </section>

    <body style="border: 0; margin: 40px;">
      <div id="map" style="width: 100%; height: 530px;"></div>
      <input type="search" id="search-input" placeholder="Qual é o nome do hotel que você busca?" />

      <div>

      </div>
    </body>



    <footer>
      <div>
        <p>
          FIAP - Sistemas Para Internet
          <br>
          Fase 6 - Atividade 2 -  Cap. 5 - Arquitetura Back-end
        </p>



      </div>
    </footer>
</body>

</html>
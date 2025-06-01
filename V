<!DOCTYPE html>
<html>
<head>
  <title>Cek Lokasi Kamu</title>
</head>
<body>
  <h2>Deteksi Lokasi</h2>
  <button onclick="getLocation()">Cek Lokasi Sekarang</button>
  <p id="lokasi"></p>

  <script>
    function getLocation() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
      } else {
        document.getElementById("lokasi").innerText = "Browser tidak mendukung Geolocation.";
      }
    }

    function showPosition(position) {
      document.getElementById("lokasi").innerText =
        "Lokasi Anda:\nLatitude: " + position.coords.latitude +
        ", Longitude: " + position.coords.longitude;
    }

    function showError(error) {
      switch(error.code) {
        case error.PERMISSION_DENIED:
          document.getElementById("lokasi").innerText = "Akses lokasi ditolak.";
          break;
        case error.POSITION_UNAVAILABLE:
          document.getElementById("lokasi").innerText = "Informasi lokasi tidak tersedia.";
          break;
        case error.TIMEOUT:
          document.getElementById("lokasi").innerText = "Permintaan lokasi timeout.";
          break;
        case error.UNKNOWN_ERROR:
          document.getElementById("lokasi").innerText = "Terjadi kesalahan tidak diketahui.";
          break;
      }
    }
  </script>
</body>
</html>

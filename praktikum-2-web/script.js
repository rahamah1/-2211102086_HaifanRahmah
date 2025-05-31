// Variabel dan Fungsi
let nama = "Febrilia";
const umur = 21;

function sapa(nama) {
  return "Halo, " + nama;
}
console.log(sapa(nama));

// Objek
const mahasiswa = {
  nama: "Febrilia",
  umur: 21,
  sapa: function () {
    return "Halo, saya " + this.nama;
  },
};
console.log(mahasiswa.sapa());

// Perulangan
for (let i = 0; i < 5; i++) {
  console.log("Angka ke: " + i);
}

// jQuery DOM Ready
$(document).ready(function () {
  $("#judul").text("Belajar jQuery & JavaScript");
  $(".paragraf").css("color", "blue");

  $("#tombol").click(function () {
    alert("Tombol diklik!");
  });

  $("#fadeButton").click(function () {
    $("#box").fadeToggle();
  });

  $("#toggleButton").click(function () {
    $("#panel").slideToggle();
  });
});

// AJAX dengan jQuery
function tampilkanData() {
  $.get("https://jsonplaceholder.typicode.com/posts/1", function (data) {
    $("#hasil").html(`
      <h3>Data dari Server:</h3>
      <p><strong>Judul:</strong> ${data.title}</p>
      <p>${data.body}</p>
    `);
  });
}

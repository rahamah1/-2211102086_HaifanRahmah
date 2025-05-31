$(document).ready(function () {
  $("#formRegistrasi").on("submit", function (e) {
    e.preventDefault(); // Mencegah form submit langsung

    const nama = $("#nama").val().trim();

    if (nama === "") {
      $("#errorNama").removeClass("d-none");
    } else {
      $("#errorNama").addClass("d-none");
      alert("Form berhasil dikirim! Nama: " + nama);
    }
  });

  // Sembunyikan pesan error saat user mulai mengetik
  $("#nama").on("input", function () {
    if ($(this).val().trim() !== "") {
      $("#errorNama").addClass("d-none");
    }
  });
});

class Makanan {
  final String img;
  final String title;
  final String harga;

  Makanan(this.title, {this.img,this.harga});
}

List data = [
  Makanan(
    'Bakso Malang',
    img: "assets/images/login.jpg",
    harga: "Rp 16000",
  ),
];

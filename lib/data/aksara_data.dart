import '../models/aksara.dart';

// 20 huruf dasar hanacaraka
const List<Aksara> daftarAksara = [
  Aksara(unicode: 'ꦲ', nama: 'Ha', bacaan: 'ha'),
  Aksara(unicode: 'ꦤ', nama: 'Na', bacaan: 'na'),
  Aksara(unicode: 'ꦕ', nama: 'Ca', bacaan: 'ca'),
  Aksara(unicode: 'ꦫ', nama: 'Ra', bacaan: 'ra'),
  Aksara(unicode: 'ꦏ', nama: 'Ka', bacaan: 'ka'),
  Aksara(unicode: 'ꦢ', nama: 'Da', bacaan: 'da'),
  Aksara(unicode: 'ꦠ', nama: 'Ta', bacaan: 'ta'),
  Aksara(unicode: 'ꦱ', nama: 'Sa', bacaan: 'sa'),
  Aksara(unicode: 'ꦮ', nama: 'Wa', bacaan: 'wa'),
  Aksara(unicode: 'ꦭ', nama: 'La', bacaan: 'la'),
  Aksara(unicode: 'ꦥ', nama: 'Pa', bacaan: 'pa'),
  Aksara(unicode: 'ꦝ', nama: 'Dha', bacaan: 'dha'),
  Aksara(unicode: 'ꦗ', nama: 'Ja', bacaan: 'ja'),
  Aksara(unicode: 'ꦪ', nama: 'Ya', bacaan: 'ya'),
  Aksara(unicode: 'ꦚ', nama: 'Nya', bacaan: 'nya'),
  Aksara(unicode: 'ꦩ', nama: 'Ma', bacaan: 'ma'),
  Aksara(unicode: 'ꦒ', nama: 'Ga', bacaan: 'ga'),
  Aksara(unicode: 'ꦧ', nama: 'Ba', bacaan: 'ba'),
  Aksara(unicode: 'ꦛ', nama: 'Tha', bacaan: 'tha'),
  Aksara(unicode: 'ꦔ', nama: 'Nga', bacaan: 'nga'),
];

// Generate halaman jilid 1
// Setiap halaman = huruf baru + semua huruf sebelumnya, diacak
List<List<Aksara>> generateHalamanJilid1() {
  List<List<Aksara>> halaman = [];

  for (int i = 0; i < daftarAksara.length; i++) {
    // Ambil huruf dari index 0 sampai i
    List<Aksara> hurufTersedia = daftarAksara.sublist(0, i + 1);

    // Generate 20 kombinasi acak dari huruf yang tersedia
    List<Aksara> isiHalaman = [];
    for (int j = 0; j < 20; j++) {
      isiHalaman.add(hurufTersedia[j % hurufTersedia.length]);
    }

    // Acak urutannya
    isiHalaman.shuffle();

    // Pastikan huruf baru muncul di awal
    isiHalaman.removeWhere((a) => a.unicode == daftarAksara[i].unicode);
    isiHalaman.insert(0, daftarAksara[i]);

    halaman.add(isiHalaman);
  }

  return halaman;
}

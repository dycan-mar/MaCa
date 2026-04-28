import '../models/aksara.dart';

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

// Shortcut
const ha = 'ꦲ';
const na = 'ꦤ';
const ca = 'ꦕ';
const ra = 'ꦫ';
const ka = 'ꦏ';
const da = 'ꦢ';
const ta = 'ꦠ';
const sa = 'ꦱ';
const wa = 'ꦮ';
const la = 'ꦭ';
const pa = 'ꦥ';
const dha = 'ꦝ';
const ja = 'ꦗ';
const ya = 'ꦪ';
const nya = 'ꦚ';
const ma = 'ꦩ';
const ga = 'ꦒ';
const ba = 'ꦧ';
const tha = 'ꦛ';
const nga = 'ꦔ';

// Sandangan unicode
const wulu = 'ꦶ'; // i
const suku = 'ꦸ'; // u
const taling = 'ꦺ'; // e
const pepet = 'ꦼ'; // ê
const talingTarung = 'ꦺꦴ'; // o

// Helper: gabung aksara + sandangan
String s(String aksara, String sandangan) => aksara + sandangan;

// ==============================
// DATA JILID 1 — MANUAL
// Struktur: List halaman → List baris → List huruf
// ==============================
const List<Map<String, dynamic>> jilid1 = [
  {
    'hurufBaru': [ha, na],
    'namaHuruf': ['Ha', 'Na'],
    'halaman': [
      [ha, na, ha, na, ha],
      [na, ha, na, ha, na],
      [ha, ha, na, na, ha],
      [na, na, ha, ha, na],
    ],
  },
  {
    'hurufBaru': [ca],
    'namaHuruf': ['Ca'],
    'halaman': [
      [ca, na, ha, ca, na],
      [ha, ca, na, ha, ca],
      [na, ha, ca, na, ha],
      [ca, ca, na, ha, ca],
    ],
  },
  {
    'hurufBaru': [ra],
    'namaHuruf': ['Ra'],
    'halaman': [
      [ra, ca, na, ha, ra],
      [ha, ra, ca, na, ha],
      [ca, ha, ra, ca, na],
      [na, ra, ha, ca, ra],
    ],
  },
  {
    'hurufBaru': [ka],
    'namaHuruf': ['Ka'],
    'halaman': [
      [ka, ra, ca, na, ha],
      [ha, ka, ra, ca, na],
      [na, ha, ka, ra, ca],
      [ca, na, ha, ka, ra],
    ],
  },
  {
    'hurufBaru': [da],
    'namaHuruf': ['Da'],
    'halaman': [
      [ka, ra, ca, na, ha],
      [ha, ka, ra, da, na],
      [na, da, ka, ra, ca],
      [da, na, ha, da, ra],
    ],
  },
  {
    'hurufBaru': [ta],
    'namaHuruf': ['Ta'],
    'halaman': [
      [ta, na, ca, ka, ha],
      [ha, ca, ta, ra, na],
      [ra, na, ha, ca, ka],
      [ca, ha, ka, na, ta],
    ],
  },
  {
    'hurufBaru': [sa],
    'namaHuruf': ['Sa'],
    'halaman': [
      [ca, sa, ta, ha, ka],
      [ra, ha, sa, na, ta],
      [na, ca, ka, sa, ra],
      [sa, ta, ha, ca, na],
    ],
  },
  {
    'hurufBaru': [wa],
    'namaHuruf': ['Wa'],
    'halaman': [
      [ha, ca, ra, da, wa],
      [wa, na, ka, sa, wa],
      [wa, ra, ha, na, ca],
      [sa, wa, ha, na, ca],
    ],
  },
  {
    'hurufBaru': [la],
    'namaHuruf': ['La'],
    'halaman': [
      [ta, sa, wa, la, ha],
      [da, ta, la, wa, la],
      [ka, la, sa, wa, la],
      [la, ka, ta, wa, la],
    ],
  },
  {
    'hurufBaru': [pa],
    'namaHuruf': ['Pa'],
    'halaman': [
      [ha, na, ca, ra, pa],
      [pa, ha, pa, ca, pa],
      [la, pa, ha, na, ca],
      [pa, la, pa, ha, na],
    ],
  },
  {
    'hurufBaru': [dha],
    'namaHuruf': ['Dha'],
    'halaman': [
      [na, ca, ra, pa, dha],
      [dha, da, ta, la, pa],
      [pa, dha, ha, na, dha],
      [pa, la, pa, dha, na],
    ],
  },
  {
    'hurufBaru': [ja],
    'namaHuruf': ['Ja'],
    'halaman': [
      [wa, la, pa, dha, ja],
      [ja, sa, la, pa, dha],
      [ja, la, pa, dha, ja],
      [pa, la, ja, ha, ja],
    ],
  },
  {
    'hurufBaru': [ya],
    'namaHuruf': ['Ya'],
    'halaman': [
      [la, pa, dha, ja, ya],
      [la, ja, ya, ra, ka],
      [ja, ya, ha, ca, ra],
      [ra, ha, ya, da, ya],
    ],
  },
  {
    'hurufBaru': [nya],
    'namaHuruf': ['Nya'],
    'halaman': [
      [ha, na, ca, ra, nya],
      [nya, ca, ra, nya, ha],
      [nya, ta, ya, nya, nya],
      [pa, nya, ja, ya, nya],
    ],
  },
  {
    'hurufBaru': [ma],
    'namaHuruf': ['Ma'],
    'halaman': [
      [ya, nya, ma, ha, ma],
      [ja, ya, nya, ma, ma],
      [dha, ja, ya, nya, ma],
      [ma, pa, dha, ja, ma],
    ],
  },
  {
    'hurufBaru': [ga],
    'namaHuruf': ['Ga'],
    'halaman': [
      [dha, ja, ya, ma, ga],
      [la, pa, ga, ja, ga],
      [wa, ga, pa, ga, sa],
      [da, ga, sa, wa, ga],
    ],
  },
  {
    'hurufBaru': [ba],
    'namaHuruf': ['Ba'],
    'halaman': [
      [ba, ca, ra, ka, ba],
      [ja, ya, nya, ba, ba],
      [ra, ba, wa, pa, ba],
      [na, ca, ga, ba, ha],
    ],
  },
  {
    'hurufBaru': [tha],
    'namaHuruf': ['Tha'],
    'halaman': [
      [pa, ha, ja, ya, tha],
      [tha, ba, tha, pa, dha],
      [dha, ja, ba, tha, pa],
      [ba, tha, pa, dha, ja],
    ],
  },
  {
    'hurufBaru': [nga],
    'namaHuruf': ['Nga'],
    'halaman': [
      [pa, dha, nga, tha, nga],
      [nya, ma, ba, nga, nga],
      [nga, ba, tha, nga, pa],
      [ma, ga, ba, tha, nga],
    ],
  },
  // Tambah halaman berikutnya sesuai kebutuhan...
];

// jilid 2>>>>>
const List<Map<String, dynamic>> jilid2 = [
  // ── DIVIDER ──
  {
    'tipe': 'divider',
    'judul': 'Sandangan Swara',
    'penjelasan':
        'Sandangan Swara adalah tanda yang digunakan untuk mengubah bunyi vokal dasar "a" pada aksara Jawa menjadi vokal lain (i, u, e, ê, o).\n\n'
        'Tanpa sandangan, setiap aksara berbunyi "a".\n'
        'Dengan sandangan swara, bunyinya berubah sesuai tanda yang ditambahkan.',
  },

  // ── WULU ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Wulu'],
    'hurufBaru': ['ꦶ'],
    'penjelasan':
        'Sandangan Wulu (ꦶ) diletakkan di atas aksara.\nMengubah bunyi menjadi vokal "i".',
    'contoh': [
      {'aksara': 'ꦲꦶ', 'bacaan': 'hi'},
      {'aksara': 'ꦤꦶ', 'bacaan': 'ni'},
      {'aksara': 'ꦕꦶ', 'bacaan': 'ci'},
      {'aksara': 'ꦫꦶ', 'bacaan': 'ri'},
      {'aksara': 'ꦏꦶ', 'bacaan': 'ki'},
      {'aksara': 'ꦢꦶ', 'bacaan': 'di'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦶ'],
    'namaHuruf': ['Wulu'],
    'penjelasan': 'Wulu (ꦶ) → bunyi "i"',
    'halaman': [
      ['ꦲꦶ', 'ꦤꦶ', 'ꦕꦶ', 'ꦫꦶ', 'ꦏꦶ'],
      ['ꦢꦶ', 'ꦠꦶ', 'ꦱꦶ', 'ꦮꦶ', 'ꦭꦶ'],
      ['ꦥꦶ', 'ꦝꦶ', 'ꦗꦶ', 'ꦪꦶ', 'ꦚꦶ'],
      ['ꦩꦶ', 'ꦒꦶ', 'ꦧꦶ', 'ꦛꦶ', 'ꦔꦶ'],
    ],
  },

  // ── SUKU ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Suku'],
    'hurufBaru': ['ꦸ'],
    'penjelasan':
        'Sandangan Suku (ꦸ) diletakkan di bawah aksara.\nMengubah bunyi menjadi vokal "u".',
    'contoh': [
      {'aksara': 'ꦲꦸ', 'bacaan': 'hu'},
      {'aksara': 'ꦤꦸ', 'bacaan': 'nu'},
      {'aksara': 'ꦕꦸ', 'bacaan': 'cu'},
      {'aksara': 'ꦫꦸ', 'bacaan': 'ru'},
      {'aksara': 'ꦏꦸ', 'bacaan': 'ku'},
      {'aksara': 'ꦢꦸ', 'bacaan': 'du'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦸ'],
    'namaHuruf': ['Suku'],
    'penjelasan': 'Suku (ꦸ) → bunyi "u"',
    'halaman': [
      ['ꦲꦸ', 'ꦤꦸ', 'ꦕꦸ', 'ꦫꦸ', 'ꦏꦸ'],
      ['ꦢꦸ', 'ꦠꦸ', 'ꦱꦸ', 'ꦮꦸ', 'ꦭꦸ'],
      ['ꦥꦸ', 'ꦝꦸ', 'ꦗꦸ', 'ꦪꦸ', 'ꦚꦸ'],
      ['ꦩꦸ', 'ꦒꦸ', 'ꦧꦸ', 'ꦛꦸ', 'ꦔꦸ'],
    ],
  },

  // ── TALING ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Taling'],
    'hurufBaru': ['ꦺ'],
    'penjelasan':
        'Sandangan Taling (ꦺ) diletakkan di depan/kiri aksara.\nMengubah bunyi menjadi vokal "e".',
    'contoh': [
      {'aksara': 'ꦺꦲ', 'bacaan': 'he'},
      {'aksara': 'ꦺꦤ', 'bacaan': 'ne'},
      {'aksara': 'ꦺꦕ', 'bacaan': 'ce'},
      {'aksara': 'ꦺꦫ', 'bacaan': 're'},
      {'aksara': 'ꦺꦏ', 'bacaan': 'ke'},
      {'aksara': 'ꦺꦢ', 'bacaan': 'de'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦺ'],
    'namaHuruf': ['Taling'],
    'penjelasan': 'Taling (ꦺ) → bunyi "e"',
    'halaman': [
      ['ꦺꦲ', 'ꦺꦤ', 'ꦺꦕ', 'ꦺꦫ', 'ꦺꦏ'],
      ['ꦺꦢ', 'ꦺꦠ', 'ꦺꦱ', 'ꦺꦮ', 'ꦺꦭ'],
      ['ꦺꦥ', 'ꦺꦝ', 'ꦺꦗ', 'ꦺꦪ', 'ꦺꦚ'],
      ['ꦺꦩ', 'ꦺꦒ', 'ꦺꦧ', 'ꦺꦛ', 'ꦺꦔ'],
    ],
  },

  // ── PEPET ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Pepet'],
    'hurufBaru': ['ꦼ'],
    'penjelasan':
        'Sandangan Pepet (ꦼ) diletakkan di atas aksara.\nMengubah bunyi menjadi vokal "ê" (e schwa, seperti "e" pada kata "emas").',
    'contoh': [
      {'aksara': 'ꦲꦼ', 'bacaan': 'hê'},
      {'aksara': 'ꦤꦼ', 'bacaan': 'nê'},
      {'aksara': 'ꦕꦼ', 'bacaan': 'cê'},
      {'aksara': 'ꦫꦼ', 'bacaan': 'rê'},
      {'aksara': 'ꦏꦼ', 'bacaan': 'kê'},
      {'aksara': 'ꦢꦼ', 'bacaan': 'dê'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦼ'],
    'namaHuruf': ['Pepet'],
    'penjelasan': 'Pepet (ꦼ) → bunyi "ê"',
    'halaman': [
      ['ꦲꦼ', 'ꦤꦼ', 'ꦕꦼ', 'ꦫꦼ', 'ꦏꦼ'],
      ['ꦢꦼ', 'ꦠꦼ', 'ꦱꦼ', 'ꦮꦼ', 'ꦭꦼ'],
      ['ꦥꦼ', 'ꦝꦼ', 'ꦗꦼ', 'ꦪꦼ', 'ꦚꦼ'],
      ['ꦩꦼ', 'ꦒꦼ', 'ꦧꦼ', 'ꦛꦼ', 'ꦔꦼ'],
    ],
  },

  // ── TALING TARUNG ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Taling Tarung'],
    'hurufBaru': ['ꦺꦴ'],
    'penjelasan':
        'Sandangan Taling Tarung (ꦺꦴ) diletakkan mengapit aksara.\nMengubah bunyi menjadi vokal "o".',
    'contoh': [
      {'aksara': 'ꦺꦲꦴ', 'bacaan': 'ho'},
      {'aksara': 'ꦺꦤꦴ', 'bacaan': 'no'},
      {'aksara': 'ꦺꦕꦴ', 'bacaan': 'co'},
      {'aksara': 'ꦺꦫꦴ', 'bacaan': 'ro'},
      {'aksara': 'ꦺꦏꦴ', 'bacaan': 'ko'},
      {'aksara': 'ꦺꦢꦴ', 'bacaan': 'do'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦺꦴ'],
    'namaHuruf': ['Taling Tarung'],
    'penjelasan': 'Taling Tarung (ꦺꦴ) → bunyi "o"',
    'halaman': [
      ['ꦺꦲꦴ', 'ꦺꦤꦴ', 'ꦺꦕꦴ', 'ꦺꦫꦴ', 'ꦺꦏꦴ'],
      ['ꦺꦢꦴ', 'ꦺꦠꦴ', 'ꦺꦱꦴ', 'ꦺꦮꦴ', 'ꦺꦭꦴ'],
      ['ꦺꦥꦴ', 'ꦺꦝꦴ', 'ꦺꦗꦴ', 'ꦺꦪꦴ', 'ꦺꦚꦴ'],
      ['ꦺꦩꦴ', 'ꦺꦒꦴ', 'ꦺꦧꦴ', 'ꦺꦛꦴ', 'ꦺꦔꦴ'],
    ],
  },

  // ── DIVIDER ──
  {
    'tipe': 'divider',
    'judul': 'Sandangan Panyigeg',
    'penjelasan':
        'Sandangan Panyigeg Wanda adalah tanda untuk menutup suku kata dengan bunyi konsonan.\n\n'
        '• Wignyan (ꦃ) → penutup "h"\n'
        '• Layar (ꦂ) → penutup "r"\n'
        '• Cecak (ꦁ) → penutup "ng"\n'
        '• Pangkon (꧀) → mematikan bunyi aksara',
  },

  // ── WIGNYAN ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Wignyan'],
    'hurufBaru': ['ꦃ'],
    'penjelasan':
        'Wignyan (ꦃ) diletakkan di akhir aksara.\nMenambahkan bunyi penutup "h".',
    'contoh': [
      {'aksara': 'ꦲꦃ', 'bacaan': 'hah'},
      {'aksara': 'ꦤꦃ', 'bacaan': 'nah'},
      {'aksara': 'ꦕꦃ', 'bacaan': 'cah'},
      {'aksara': 'ꦫꦃ', 'bacaan': 'rah'},
      {'aksara': 'ꦏꦃ', 'bacaan': 'kah'},
      {'aksara': 'ꦢꦃ', 'bacaan': 'dah'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦃ'],
    'namaHuruf': ['Wignyan'],
    'penjelasan': 'Wignyan (ꦃ) → penutup "h"',
    'halaman': [
      ['ꦲꦃ', 'ꦤꦃ', 'ꦕꦃ', 'ꦫꦃ', 'ꦏꦃ'],
      ['ꦢꦃ', 'ꦠꦃ', 'ꦱꦃ', 'ꦮꦃ', 'ꦭꦃ'],
      ['ꦥꦃ', 'ꦝꦃ', 'ꦗꦃ', 'ꦪꦃ', 'ꦚꦃ'],
      ['ꦩꦃ', 'ꦒꦃ', 'ꦧꦃ', 'ꦛꦃ', 'ꦔꦃ'],
    ],
  },

  // ── LAYAR ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Layar'],
    'hurufBaru': ['ꦂ'],
    'penjelasan':
        'Layar (ꦂ) diletakkan di atas aksara.\nMenambahkan bunyi penutup "r".',
    'contoh': [
      {'aksara': 'ꦲꦂ', 'bacaan': 'har'},
      {'aksara': 'ꦤꦂ', 'bacaan': 'nar'},
      {'aksara': 'ꦕꦂ', 'bacaan': 'car'},
      {'aksara': 'ꦫꦂ', 'bacaan': 'rar'},
      {'aksara': 'ꦏꦂ', 'bacaan': 'kar'},
      {'aksara': 'ꦢꦂ', 'bacaan': 'dar'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦂ'],
    'namaHuruf': ['Layar'],
    'penjelasan': 'Layar (ꦂ) → penutup "r"',
    'halaman': [
      ['ꦲꦂ', 'ꦤꦂ', 'ꦕꦂ', 'ꦫꦂ', 'ꦏꦂ'],
      ['ꦢꦂ', 'ꦠꦂ', 'ꦱꦂ', 'ꦮꦂ', 'ꦭꦂ'],
      ['ꦥꦂ', 'ꦝꦂ', 'ꦗꦂ', 'ꦪꦂ', 'ꦚꦂ'],
      ['ꦩꦂ', 'ꦒꦂ', 'ꦧꦂ', 'ꦛꦂ', 'ꦔꦂ'],
    ],
  },

  // ── CECAK ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Cecak'],
    'hurufBaru': ['ꦁ'],
    'penjelasan':
        'Cecak (ꦁ) diletakkan di atas aksara.\nMenambahkan bunyi penutup "ng".',
    'contoh': [
      {'aksara': 'ꦲꦁ', 'bacaan': 'hang'},
      {'aksara': 'ꦤꦁ', 'bacaan': 'nang'},
      {'aksara': 'ꦕꦁ', 'bacaan': 'cang'},
      {'aksara': 'ꦫꦁ', 'bacaan': 'rang'},
      {'aksara': 'ꦏꦁ', 'bacaan': 'kang'},
      {'aksara': 'ꦢꦁ', 'bacaan': 'dang'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['ꦁ'],
    'namaHuruf': ['Cecak'],
    'penjelasan': 'Cecak (ꦁ) → penutup "ng"',
    'halaman': [
      ['ꦲꦁ', 'ꦤꦁ', 'ꦕꦁ', 'ꦫꦁ', 'ꦏꦁ'],
      ['ꦢꦁ', 'ꦠꦁ', 'ꦱꦁ', 'ꦮꦁ', 'ꦭꦁ'],
      ['ꦥꦁ', 'ꦝꦁ', 'ꦗꦁ', 'ꦪꦁ', 'ꦚꦁ'],
      ['ꦩꦁ', 'ꦒꦁ', 'ꦧꦁ', 'ꦛꦁ', 'ꦔꦁ'],
    ],
  },

  // ── PANGKON ──
  {
    'tipe': 'contoh',
    'namaHuruf': ['Pangkon'],
    'hurufBaru': ['꧀'],
    'penjelasan':
        'Pangkon (꧀) diletakkan di bawah aksara.\nMematikan bunyi vokal aksara menjadi bunyi konsonan murni.',
    'contoh': [
      {'aksara': 'ꦲ꧀', 'bacaan': 'h'},
      {'aksara': 'ꦤ꧀', 'bacaan': 'n'},
      {'aksara': 'ꦕ꧀', 'bacaan': 'c'},
      {'aksara': 'ꦫ꧀', 'bacaan': 'r'},
      {'aksara': 'ꦏ꧀', 'bacaan': 'k'},
      {'aksara': 'ꦢ꧀', 'bacaan': 'd'},
    ],
  },
  {
    'tipe': 'halaman',
    'hurufBaru': ['꧀'],
    'namaHuruf': ['Pangkon'],
    'penjelasan': 'Pangkon (꧀) → mematikan bunyi vokal menjadi konsonan',
    'halaman': [
      ['ꦲꦤ꧀', 'ꦲꦕ꧀', 'ꦲꦏ꧀', 'ꦲꦢ꧀'],
      ['ꦲꦠ꧀', 'ꦲꦱ꧀', 'ꦲꦮ꧀', 'ꦲꦥ꧀'],
      ['ꦲꦗ꧀', 'ꦲꦪ꧀', 'ꦲꦚ꧀', 'ꦲꦩ꧀'],
      ['ꦲꦒ꧀', 'ꦲꦧ꧀', 'ꦲꦛ꧀', 'ꦲꦤ꧀'],
    ],
  },
];

// jilid 3>>>>>
const List<Map<String, dynamic>> jilid3 = [
  
];
// Tambahkan map ini untuk akses dinamis
const Map<int, List<Map<String, dynamic>>> semuaJilid = {1: jilid1, 2: jilid2};

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
];

// ==============================
// DATA JILID 2 — SANDANGAN
// ==============================
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

// ==============================
// DATA JILID 3 — PASANGAN AKSARA
// ==============================
const List<Map<String, dynamic>> jilid3 = [
  // ── DIVIDER PEMBUKA ──────────────────────────────────────────────────────
  {
    'tipe': 'divider',
    'judul': 'Pasangan Aksara',
    'penjelasan':
        'Pasangan adalah bentuk khusus aksara yang digunakan untuk mematikan vokal aksara di depannya.\n\n'
        'Cara menulis: aksara yang vokalnya dimatikan + aksara pasangan.\n\n'
        'Contoh: "nka" → ꦤ꧀ꦏ — aksara Na dimatikan, diikuti pasangan Ka di bawahnya.\n\n'
        'Pasangan ditulis di bawah aksara yang mendahuluinya, kecuali pasangan Ha, Sa, dan Pa yang ditulis di belakang.',
  },

  // ── PASANGAN HA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦲ'],
    'namaHuruf': ['Pasangan Ha'],
    'penjelasan':
        'Pasangan Ha (꧀ꦲ) ditulis di BELAKANG aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "h".',
    'contoh': [
      {'aksara': 'ꦫꦏ꧀ꦲꦱ', 'bacaan': 'rak-sa'},
      {'aksara': 'ꦥꦸꦏ꧀ꦲꦸ', 'bacaan': 'puk-hu'},
      {'aksara': 'ꦱꦏ꧀ꦲꦶ', 'bacaan': 'sak-si'},
      {'aksara': 'ꦭꦺꦴꦏ꧀ꦲ', 'bacaan': 'lok-ha'},
      {'aksara': 'ꦠꦸꦏ꧀ꦲꦸ', 'bacaan': 'tuk-hu'},
      {'aksara': 'ꦩꦭ꧀ꦲꦸ', 'bacaan': 'mal-hu'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦲ'],
    'namaHuruf': ['Pasangan Ha'],
    'penjelasan': 'Pasangan Ha — ditulis di belakang aksara',
    'halaman': [
      [
        {'atas': 'ꦤ', 'bawah': '', 'gabung': 'ꦤ꧀ꦲ', 'bacaan': 'man-ha'},
        {'atas': 'ꦕ', 'bawah': 'ꦲ', 'gabung': 'ꦕ꧀ꦲ', 'bacaan': 'pic-ha'},
        {'atas': 'ꦫ', 'bawah': 'ꦲ', 'gabung': 'ꦫ꧀ꦲ', 'bacaan': 'war-ha'},
      ],
      [
        {'atas': 'ꦏ', 'bawah': 'ꦲ', 'gabung': 'ꦏ꧀ꦲ', 'bacaan': 'lok-ha'},
        {'atas': 'ꦢ', 'bawah': 'ꦲ', 'gabung': 'ꦢ꧀ꦲ', 'bacaan': 'wid-ha'},
        {'atas': 'ꦠ', 'bawah': 'ꦲ', 'gabung': 'ꦠ꧀ꦲ', 'bacaan': 'sat-ha'},
      ],
      [
        {'atas': 'ꦱ', 'bawah': 'ꦲ', 'gabung': 'ꦱ꧀ꦲ', 'bacaan': 'bis-ha'},
        {'atas': 'ꦮ', 'bawah': 'ꦲ', 'gabung': 'ꦮ꧀ꦲ', 'bacaan': 'law-ha'},
        {'atas': 'ꦭ', 'bawah': 'ꦲ', 'gabung': 'ꦭ꧀ꦲ', 'bacaan': 'mal-ha'},
      ],
    ],
  },

  // ── PASANGAN NA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦤ'],
    'namaHuruf': ['Pasangan Na'],
    'penjelasan':
        'Pasangan Na (꧀ꦤ) ditulis di BAWAH aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "n".',
    'contoh': [
      {'aksara': 'ꦮꦫ꧀ꦤ', 'bacaan': 'war-na'},
      {'aksara': 'ꦠꦸꦫ꧀ꦤ', 'bacaan': 'tur-na'},
      {'aksara': 'ꦥꦸꦫ꧀ꦤ', 'bacaan': 'pur-na'},
      {'aksara': 'ꦏꦫ꧀ꦤ', 'bacaan': 'kar-na'},
      {'aksara': 'ꦕꦫ꧀ꦤ', 'bacaan': 'car-na'},
      {'aksara': 'ꦗꦸꦫ꧀ꦤ', 'bacaan': 'jur-na'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦤ'],
    'namaHuruf': ['Pasangan Na'],
    'penjelasan': 'Pasangan Na — ditulis di bawah aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦤ', 'gabung': 'ꦲ꧀ꦤ', 'bacaan': 'bah-na'},
        {'atas': 'ꦕ', 'bawah': 'ꦤ', 'gabung': 'ꦕ꧀ꦤ', 'bacaan': 'pic-na'},
        {'atas': 'ꦫ', 'bawah': 'ꦤ', 'gabung': 'ꦫ꧀ꦤ', 'bacaan': 'war-na'},
      ],
      [
        {'atas': 'ꦏ', 'bawah': 'ꦤ', 'gabung': 'ꦏ꧀ꦤ', 'bacaan': 'kar-na'},
        {'atas': 'ꦢ', 'bawah': 'ꦤ', 'gabung': 'ꦢ꧀ꦤ', 'bacaan': 'wid-na'},
        {'atas': 'ꦠ', 'bawah': 'ꦤ', 'gabung': 'ꦠ꧀ꦤ', 'bacaan': 'rat-na'},
      ],
      [
        {'atas': 'ꦱ', 'bawah': 'ꦤ', 'gabung': 'ꦱ꧀ꦤ', 'bacaan': 'bas-na'},
        {'atas': 'ꦮ', 'bawah': 'ꦤ', 'gabung': 'ꦮ꧀ꦤ', 'bacaan': 'daw-na'},
        {'atas': 'ꦭ', 'bawah': 'ꦤ', 'gabung': 'ꦭ꧀ꦤ', 'bacaan': 'bal-na'},
      ],
    ],
  },

  // ── PASANGAN CA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦕ'],
    'namaHuruf': ['Pasangan Ca'],
    'penjelasan':
        'Pasangan Ca (꧀ꦕ) ditulis di BAWAH aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "c".',
    'contoh': [
      {'aksara': 'ꦏꦤ꧀ꦕ', 'bacaan': 'kan-ca'},
      {'aksara': 'ꦥꦤ꧀ꦕ', 'bacaan': 'pan-ca'},
      {'aksara': 'ꦭꦤ꧀ꦕ', 'bacaan': 'lan-ca'},
      {'aksara': 'ꦩꦤ꧀ꦕ', 'bacaan': 'man-ca'},
      {'aksara': 'ꦧꦺꦤ꧀ꦕ', 'bacaan': 'ben-ca'},
      {'aksara': 'ꦒꦤ꧀ꦕ', 'bacaan': 'gan-ca'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦕ'],
    'namaHuruf': ['Pasangan Ca'],
    'penjelasan': 'Pasangan Ca — ditulis di bawah aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦕ', 'gabung': 'ꦲ꧀ꦕ', 'bacaan': 'bah-ca'},
        {'atas': 'ꦤ', 'bawah': 'ꦕ', 'gabung': 'ꦤ꧀ꦕ', 'bacaan': 'kan-ca'},
        {'atas': 'ꦫ', 'bawah': 'ꦕ', 'gabung': 'ꦫ꧀ꦕ', 'bacaan': 'bar-ca'},
      ],
      [
        {'atas': 'ꦏ', 'bawah': 'ꦕ', 'gabung': 'ꦏ꧀ꦕ', 'bacaan': 'wak-ca'},
        {'atas': 'ꦢ', 'bawah': 'ꦕ', 'gabung': 'ꦢ꧀ꦕ', 'bacaan': 'mad-ca'},
        {'atas': 'ꦠ', 'bawah': 'ꦕ', 'gabung': 'ꦠ꧀ꦕ', 'bacaan': 'bat-ca'},
      ],
      [
        {'atas': 'ꦱ', 'bawah': 'ꦕ', 'gabung': 'ꦱ꧀ꦕ', 'bacaan': 'mas-ca'},
        {'atas': 'ꦮ', 'bawah': 'ꦕ', 'gabung': 'ꦮ꧀ꦕ', 'bacaan': 'law-ca'},
        {'atas': 'ꦭ', 'bawah': 'ꦕ', 'gabung': 'ꦭ꧀ꦕ', 'bacaan': 'bal-ca'},
      ],
    ],
  },

  // ── PASANGAN KA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦏ'],
    'namaHuruf': ['Pasangan Ka'],
    'penjelasan':
        'Pasangan Ka (꧀ꦏ) ditulis di BAWAH aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "k".',
    'contoh': [
      {'aksara': 'ꦲꦔ꧀ꦏ', 'bacaan': 'ang-ka'},
      {'aksara': 'ꦠꦸꦔ꧀ꦏ', 'bacaan': 'tung-ka'},
      {'aksara': 'ꦭꦺꦴꦔ꧀ꦏ', 'bacaan': 'long-ka'},
      {'aksara': 'ꦧꦔ꧀ꦏ', 'bacaan': 'bang-ka'},
      {'aksara': 'ꦒꦔ꧀ꦏ', 'bacaan': 'gang-ka'},
      {'aksara': 'ꦠꦔ꧀ꦏ', 'bacaan': 'tang-ka'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦏ'],
    'namaHuruf': ['Pasangan Ka'],
    'penjelasan': 'Pasangan Ka — ditulis di bawah aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦏ', 'gabung': 'ꦲ꧀ꦏ', 'bacaan': 'bah-ka'},
        {'atas': 'ꦤ', 'bawah': 'ꦏ', 'gabung': 'ꦤ꧀ꦏ', 'bacaan': 'ang-ka'},
        {'atas': 'ꦕ', 'bawah': 'ꦏ', 'gabung': 'ꦕ꧀ꦏ', 'bacaan': 'bac-ka'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦏ', 'gabung': 'ꦫ꧀ꦏ', 'bacaan': 'bar-ka'},
        {'atas': 'ꦢ', 'bawah': 'ꦏ', 'gabung': 'ꦢ꧀ꦏ', 'bacaan': 'wid-ka'},
        {'atas': 'ꦠ', 'bawah': 'ꦏ', 'gabung': 'ꦠ꧀ꦏ', 'bacaan': 'tang-ka'},
      ],
      [
        {'atas': 'ꦱ', 'bawah': 'ꦏ', 'gabung': 'ꦱ꧀ꦏ', 'bacaan': 'mas-ka'},
        {'atas': 'ꦮ', 'bawah': 'ꦏ', 'gabung': 'ꦮ꧀ꦏ', 'bacaan': 'daw-ka'},
        {'atas': 'ꦭ', 'bawah': 'ꦏ', 'gabung': 'ꦭ꧀ꦏ', 'bacaan': 'bal-ka'},
      ],
    ],
  },

  // ── PASANGAN DA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦢ'],
    'namaHuruf': ['Pasangan Da'],
    'penjelasan':
        'Pasangan Da (꧀ꦢ) ditulis di BAWAH aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "d".',
    'contoh': [
      {'aksara': 'ꦠꦤ꧀ꦢ', 'bacaan': 'tan-da'},
      {'aksara': 'ꦭꦤ꧀ꦢ', 'bacaan': 'lan-da'},
      {'aksara': 'ꦧꦤ꧀ꦢ', 'bacaan': 'ban-da'},
      {'aksara': 'ꦏꦤ꧀ꦢ', 'bacaan': 'kan-da'},
      {'aksara': 'ꦒꦤ꧀ꦢ', 'bacaan': 'gan-da'},
      {'aksara': 'ꦩꦤ꧀ꦢ', 'bacaan': 'man-da'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦢ'],
    'namaHuruf': ['Pasangan Da'],
    'penjelasan': 'Pasangan Da — ditulis di bawah aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦢ', 'gabung': 'ꦲ꧀ꦢ', 'bacaan': 'mah-da'},
        {'atas': 'ꦤ', 'bawah': 'ꦢ', 'gabung': 'ꦤ꧀ꦢ', 'bacaan': 'kan-da'},
        {'atas': 'ꦕ', 'bawah': 'ꦢ', 'gabung': 'ꦕ꧀ꦢ', 'bacaan': 'bac-da'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦢ', 'gabung': 'ꦫ꧀ꦢ', 'bacaan': 'war-da'},
        {'atas': 'ꦏ', 'bawah': 'ꦢ', 'gabung': 'ꦏ꧀ꦢ', 'bacaan': 'wak-da'},
        {'atas': 'ꦠ', 'bawah': 'ꦢ', 'gabung': 'ꦠ꧀ꦢ', 'bacaan': 'tan-da'},
      ],
      [
        {'atas': 'ꦱ', 'bawah': 'ꦢ', 'gabung': 'ꦱ꧀ꦢ', 'bacaan': 'mas-da'},
        {'atas': 'ꦮ', 'bawah': 'ꦢ', 'gabung': 'ꦮ꧀ꦢ', 'bacaan': 'law-da'},
        {'atas': 'ꦭ', 'bawah': 'ꦢ', 'gabung': 'ꦭ꧀ꦢ', 'bacaan': 'bal-da'},
      ],
    ],
  },

  // ── PASANGAN TA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦠ'],
    'namaHuruf': ['Pasangan Ta'],
    'penjelasan':
        'Pasangan Ta (꧀ꦠ) ditulis di BAWAH aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "t".',
    'contoh': [
      {'aksara': 'ꦥꦸꦠ꧀ꦠꦿ', 'bacaan': 'put-ra'},
      {'aksara': 'ꦱꦠ꧀ꦠꦿꦶ', 'bacaan': 'sat-ri'},
      {'aksara': 'ꦩꦶꦠ꧀ꦠ', 'bacaan': 'mit-ta'},
      {'aksara': 'ꦕꦶꦠ꧀ꦠ', 'bacaan': 'cit-ta'},
      {'aksara': 'ꦧꦠ꧀ꦠ', 'bacaan': 'bat-ta'},
      {'aksara': 'ꦢꦠ꧀ꦠ', 'bacaan': 'dat-ta'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦠ'],
    'namaHuruf': ['Pasangan Ta'],
    'penjelasan': 'Pasangan Ta — ditulis di bawah aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦠ', 'gabung': 'ꦲ꧀ꦠ', 'bacaan': 'mah-ta'},
        {'atas': 'ꦤ', 'bawah': 'ꦠ', 'gabung': 'ꦤ꧀ꦠ', 'bacaan': 'san-ta'},
        {'atas': 'ꦕ', 'bawah': 'ꦠ', 'gabung': 'ꦕ꧀ꦠ', 'bacaan': 'bac-ta'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦠ', 'gabung': 'ꦫ꧀ꦠ', 'bacaan': 'bar-ta'},
        {'atas': 'ꦏ', 'bawah': 'ꦠ', 'gabung': 'ꦏ꧀ꦠ', 'bacaan': 'wak-ta'},
        {'atas': 'ꦢ', 'bawah': 'ꦠ', 'gabung': 'ꦢ꧀ꦠ', 'bacaan': 'dat-ta'},
      ],
      [
        {'atas': 'ꦱ', 'bawah': 'ꦠ', 'gabung': 'ꦱ꧀ꦠ', 'bacaan': 'mas-ta'},
        {'atas': 'ꦮ', 'bawah': 'ꦠ', 'gabung': 'ꦮ꧀ꦠ', 'bacaan': 'law-ta'},
        {'atas': 'ꦭ', 'bawah': 'ꦠ', 'gabung': 'ꦭ꧀ꦠ', 'bacaan': 'bal-ta'},
      ],
    ],
  },

  // ── PASANGAN SA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦱ'],
    'namaHuruf': ['Pasangan Sa'],
    'penjelasan':
        'Pasangan Sa (꧀ꦱ) ditulis di BELAKANG aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "s".',
    'contoh': [
      {'aksara': 'ꦒꦤ꧀ꦱ', 'bacaan': 'gan-sa'},
      {'aksara': 'ꦮꦺꦴꦤ꧀ꦱ', 'bacaan': 'won-sa'},
      {'aksara': 'ꦠꦸꦭ꧀ꦱ', 'bacaan': 'tul-sa'},
      {'aksara': 'ꦥꦸꦤ꧀ꦱ', 'bacaan': 'pun-sa'},
      {'aksara': 'ꦭꦸꦩ꧀ꦱ', 'bacaan': 'lum-sa'},
      {'aksara': 'ꦏꦺꦤ꧀ꦱ', 'bacaan': 'ken-sa'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦱ'],
    'namaHuruf': ['Pasangan Sa'],
    'penjelasan': 'Pasangan Sa — ditulis di belakang aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦱ', 'gabung': 'ꦲ꧀ꦱ', 'bacaan': 'bah-sa'},
        {'atas': 'ꦤ', 'bawah': 'ꦱ', 'gabung': 'ꦤ꧀ꦱ', 'bacaan': 'gan-sa'},
        {'atas': 'ꦕ', 'bawah': 'ꦱ', 'gabung': 'ꦕ꧀ꦱ', 'bacaan': 'bac-sa'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦱ', 'gabung': 'ꦫ꧀ꦱ', 'bacaan': 'bar-sa'},
        {'atas': 'ꦏ', 'bawah': 'ꦱ', 'gabung': 'ꦏ꧀ꦱ', 'bacaan': 'wak-sa'},
        {'atas': 'ꦢ', 'bawah': 'ꦱ', 'gabung': 'ꦢ꧀ꦱ', 'bacaan': 'wid-sa'},
      ],
      [
        {'atas': 'ꦠ', 'bawah': 'ꦱ', 'gabung': 'ꦠ꧀ꦱ', 'bacaan': 'tul-sa'},
        {'atas': 'ꦮ', 'bawah': 'ꦱ', 'gabung': 'ꦮ꧀ꦱ', 'bacaan': 'law-sa'},
        {'atas': 'ꦭ', 'bawah': 'ꦱ', 'gabung': 'ꦭ꧀ꦱ', 'bacaan': 'bal-sa'},
      ],
    ],
  },

  // ── PASANGAN LA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦭ'],
    'namaHuruf': ['Pasangan La'],
    'penjelasan':
        'Pasangan La (꧀ꦭ) ditulis di BAWAH aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "l".',
    'contoh': [
      {'aksara': 'ꦥꦸꦭ꧀ꦭ', 'bacaan': 'pul-la'},
      {'aksara': 'ꦠꦸꦭ꧀ꦭ', 'bacaan': 'tul-la'},
      {'aksara': 'ꦒꦸꦭ꧀ꦭ', 'bacaan': 'gul-la'},
      {'aksara': 'ꦩꦸꦭ꧀ꦭ', 'bacaan': 'mul-la'},
      {'aksara': 'ꦕꦸꦭ꧀ꦭ', 'bacaan': 'cul-la'},
      {'aksara': 'ꦱꦸꦭ꧀ꦭ', 'bacaan': 'sul-la'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦭ'],
    'namaHuruf': ['Pasangan La'],
    'penjelasan': 'Pasangan La — ditulis di bawah aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦭ', 'gabung': 'ꦲ꧀ꦭ', 'bacaan': 'bah-la'},
        {'atas': 'ꦤ', 'bawah': 'ꦭ', 'gabung': 'ꦤ꧀ꦭ', 'bacaan': 'bal-la'},
        {'atas': 'ꦕ', 'bawah': 'ꦭ', 'gabung': 'ꦕ꧀ꦭ', 'bacaan': 'cul-la'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦭ', 'gabung': 'ꦫ꧀ꦭ', 'bacaan': 'bar-la'},
        {'atas': 'ꦏ', 'bawah': 'ꦭ', 'gabung': 'ꦏ꧀ꦭ', 'bacaan': 'wak-la'},
        {'atas': 'ꦢ', 'bawah': 'ꦭ', 'gabung': 'ꦢ꧀ꦭ', 'bacaan': 'wid-la'},
      ],
      [
        {'atas': 'ꦠ', 'bawah': 'ꦭ', 'gabung': 'ꦠ꧀ꦭ', 'bacaan': 'tul-la'},
        {'atas': 'ꦱ', 'bawah': 'ꦭ', 'gabung': 'ꦱ꧀ꦭ', 'bacaan': 'sul-la'},
        {'atas': 'ꦮ', 'bawah': 'ꦭ', 'gabung': 'ꦮ꧀ꦭ', 'bacaan': 'law-la'},
      ],
    ],
  },

  // ── PASANGAN PA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦥ'],
    'namaHuruf': ['Pasangan Pa'],
    'penjelasan':
        'Pasangan Pa (꧀ꦥ) ditulis di BELAKANG aksara yang dimatikan.\n'
        'Mematikan vokal aksara sebelumnya, lalu memunculkan bunyi "p".',
    'contoh': [
      {'aksara': 'ꦠꦸꦩ꧀ꦥ', 'bacaan': 'tum-pa'},
      {'aksara': 'ꦭꦸꦩ꧀ꦥ', 'bacaan': 'lum-pa'},
      {'aksara': 'ꦒꦸꦩ꧀ꦥ', 'bacaan': 'gum-pa'},
      {'aksara': 'ꦏꦸꦩ꧀ꦥ', 'bacaan': 'kum-pa'},
      {'aksara': 'ꦕꦸꦩ꧀ꦥ', 'bacaan': 'cum-pa'},
      {'aksara': 'ꦗꦸꦩ꧀ꦥ', 'bacaan': 'jum-pa'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦥ'],
    'namaHuruf': ['Pasangan Pa'],
    'penjelasan': 'Pasangan Pa — ditulis di belakang aksara',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦥ', 'gabung': 'ꦲ꧀ꦥ', 'bacaan': 'bah-pa'},
        {'atas': 'ꦤ', 'bawah': 'ꦥ', 'gabung': 'ꦤ꧀ꦥ', 'bacaan': 'lam-pa'},
        {'atas': 'ꦕ', 'bawah': 'ꦥ', 'gabung': 'ꦕ꧀ꦥ', 'bacaan': 'cum-pa'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦥ', 'gabung': 'ꦫ꧀ꦥ', 'bacaan': 'bar-pa'},
        {'atas': 'ꦏ', 'bawah': 'ꦥ', 'gabung': 'ꦏ꧀ꦥ', 'bacaan': 'kum-pa'},
        {'atas': 'ꦢ', 'bawah': 'ꦥ', 'gabung': 'ꦢ꧀ꦥ', 'bacaan': 'wid-pa'},
      ],
      [
        {'atas': 'ꦠ', 'bawah': 'ꦥ', 'gabung': 'ꦠ꧀ꦥ', 'bacaan': 'tum-pa'},
        {'atas': 'ꦱ', 'bawah': 'ꦥ', 'gabung': 'ꦱ꧀ꦥ', 'bacaan': 'mas-pa'},
        {'atas': 'ꦭ', 'bawah': 'ꦥ', 'gabung': 'ꦭ꧀ꦥ', 'bacaan': 'lum-pa'},
      ],
    ],
  },

  // ── DIVIDER LANJUTAN ─────────────────────────────────────────────────────
  {
    'tipe': 'divider',
    'judul': 'Pasangan Lanjutan',
    'penjelasan':
        'Melanjutkan pengenalan pasangan aksara:\n\n'
        '• Pasangan Dha (꧀ꦝ)\n'
        '• Pasangan Ja (꧀ꦗ)\n'
        '• Pasangan Ma (꧀ꦩ)\n'
        '• Pasangan Ga (꧀ꦒ)\n'
        '• Pasangan Ba (꧀ꦧ)\n'
        '• Pasangan Nga (꧀ꦔ)',
  },

  // ── PASANGAN DHA ─────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦝ'],
    'namaHuruf': ['Pasangan Dha'],
    'penjelasan': 'Pasangan Dha (꧀ꦝ) ditulis di BAWAH aksara yang dimatikan.',
    'contoh': [
      {'aksara': 'ꦒꦤ꧀ꦝ', 'bacaan': 'gan-dha'},
      {'aksara': 'ꦏꦤ꧀ꦝ', 'bacaan': 'kan-dha'},
      {'aksara': 'ꦱꦤ꧀ꦝ', 'bacaan': 'san-dha'},
      {'aksara': 'ꦮꦤ꧀ꦝ', 'bacaan': 'wan-dha'},
      {'aksara': 'ꦠꦤ꧀ꦝ', 'bacaan': 'tan-dha'},
      {'aksara': 'ꦥꦤ꧀ꦝ', 'bacaan': 'pan-dha'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦝ'],
    'namaHuruf': ['Pasangan Dha'],
    'penjelasan': 'Pasangan Dha',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦝ', 'gabung': 'ꦲ꧀ꦝ', 'bacaan': 'mah-dha'},
        {'atas': 'ꦤ', 'bawah': 'ꦝ', 'gabung': 'ꦤ꧀ꦝ', 'bacaan': 'gan-dha'},
        {'atas': 'ꦕ', 'bawah': 'ꦝ', 'gabung': 'ꦕ꧀ꦝ', 'bacaan': 'bac-dha'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦝ', 'gabung': 'ꦫ꧀ꦝ', 'bacaan': 'war-dha'},
        {'atas': 'ꦏ', 'bawah': 'ꦝ', 'gabung': 'ꦏ꧀ꦝ', 'bacaan': 'kan-dha'},
        {'atas': 'ꦠ', 'bawah': 'ꦝ', 'gabung': 'ꦠ꧀ꦝ', 'bacaan': 'tan-dha'},
      ],
    ],
  },

  // ── PASANGAN JA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦗ'],
    'namaHuruf': ['Pasangan Ja'],
    'penjelasan': 'Pasangan Ja (꧀ꦗ) ditulis di BAWAH aksara yang dimatikan.',
    'contoh': [
      {'aksara': 'ꦥꦸꦗ꧀ꦗ', 'bacaan': 'puj-ja'},
      {'aksara': 'ꦠꦸꦗ꧀ꦗ', 'bacaan': 'tuj-ja'},
      {'aksara': 'ꦒꦸꦗ꧀ꦗ', 'bacaan': 'guj-ja'},
      {'aksara': 'ꦩꦸꦗ꧀ꦗ', 'bacaan': 'muj-ja'},
      {'aksara': 'ꦱꦸꦗ꧀ꦗ', 'bacaan': 'suj-ja'},
      {'aksara': 'ꦧꦸꦗ꧀ꦗ', 'bacaan': 'buj-ja'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦗ'],
    'namaHuruf': ['Pasangan Ja'],
    'penjelasan': 'Pasangan Ja',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦗ', 'gabung': 'ꦲ꧀ꦗ', 'bacaan': 'mah-ja'},
        {'atas': 'ꦤ', 'bawah': 'ꦗ', 'gabung': 'ꦤ꧀ꦗ', 'bacaan': 'ban-ja'},
        {'atas': 'ꦕ', 'bawah': 'ꦗ', 'gabung': 'ꦕ꧀ꦗ', 'bacaan': 'bac-ja'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦗ', 'gabung': 'ꦫ꧀ꦗ', 'bacaan': 'war-ja'},
        {'atas': 'ꦏ', 'bawah': 'ꦗ', 'gabung': 'ꦏ꧀ꦗ', 'bacaan': 'wak-ja'},
        {'atas': 'ꦠ', 'bawah': 'ꦗ', 'gabung': 'ꦠ꧀ꦗ', 'bacaan': 'puj-ja'},
      ],
    ],
  },

  // ── PASANGAN MA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦩ'],
    'namaHuruf': ['Pasangan Ma'],
    'penjelasan': 'Pasangan Ma (꧀ꦩ) ditulis di BAWAH aksara yang dimatikan.',
    'contoh': [
      {'aksara': 'ꦠꦸꦩ꧀ꦩ', 'bacaan': 'tum-ma'},
      {'aksara': 'ꦭꦸꦩ꧀ꦩ', 'bacaan': 'lum-ma'},
      {'aksara': 'ꦒꦸꦩ꧀ꦩ', 'bacaan': 'gum-ma'},
      {'aksara': 'ꦱꦸꦩ꧀ꦩ', 'bacaan': 'sum-ma'},
      {'aksara': 'ꦢꦸꦩ꧀ꦩ', 'bacaan': 'dum-ma'},
      {'aksara': 'ꦏꦸꦩ꧀ꦩ', 'bacaan': 'kum-ma'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦩ'],
    'namaHuruf': ['Pasangan Ma'],
    'penjelasan': 'Pasangan Ma',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦩ', 'gabung': 'ꦲ꧀ꦩ', 'bacaan': 'mah-ma'},
        {'atas': 'ꦤ', 'bawah': 'ꦩ', 'gabung': 'ꦤ꧀ꦩ', 'bacaan': 'sum-ma'},
        {'atas': 'ꦕ', 'bawah': 'ꦩ', 'gabung': 'ꦕ꧀ꦩ', 'bacaan': 'bac-ma'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦩ', 'gabung': 'ꦫ꧀ꦩ', 'bacaan': 'war-ma'},
        {'atas': 'ꦏ', 'bawah': 'ꦩ', 'gabung': 'ꦏ꧀ꦩ', 'bacaan': 'kum-ma'},
        {'atas': 'ꦠ', 'bawah': 'ꦩ', 'gabung': 'ꦠ꧀ꦩ', 'bacaan': 'tum-ma'},
      ],
    ],
  },

  // ── PASANGAN GA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦒ'],
    'namaHuruf': ['Pasangan Ga'],
    'penjelasan': 'Pasangan Ga (꧀ꦒ) ditulis di BAWAH aksara yang dimatikan.',
    'contoh': [
      {'aksara': 'ꦠꦸꦔ꧀ꦒ', 'bacaan': 'tung-ga'},
      {'aksara': 'ꦭꦸꦔ꧀ꦒ', 'bacaan': 'lung-ga'},
      {'aksara': 'ꦒꦸꦔ꧀ꦒ', 'bacaan': 'gung-ga'},
      {'aksara': 'ꦏꦸꦔ꧀ꦒ', 'bacaan': 'kung-ga'},
      {'aksara': 'ꦱꦸꦔ꧀ꦒ', 'bacaan': 'sung-ga'},
      {'aksara': 'ꦢꦸꦔ꧀ꦒ', 'bacaan': 'dung-ga'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦒ'],
    'namaHuruf': ['Pasangan Ga'],
    'penjelasan': 'Pasangan Ga',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦒ', 'gabung': 'ꦲ꧀ꦒ', 'bacaan': 'mah-ga'},
        {'atas': 'ꦤ', 'bawah': 'ꦒ', 'gabung': 'ꦤ꧀ꦒ', 'bacaan': 'sung-ga'},
        {'atas': 'ꦕ', 'bawah': 'ꦒ', 'gabung': 'ꦕ꧀ꦒ', 'bacaan': 'bac-ga'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦒ', 'gabung': 'ꦫ꧀ꦒ', 'bacaan': 'war-ga'},
        {'atas': 'ꦏ', 'bawah': 'ꦒ', 'gabung': 'ꦏ꧀ꦒ', 'bacaan': 'kung-ga'},
        {'atas': 'ꦠ', 'bawah': 'ꦒ', 'gabung': 'ꦠ꧀ꦒ', 'bacaan': 'tung-ga'},
      ],
    ],
  },

  // ── PASANGAN BA ──────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦧ'],
    'namaHuruf': ['Pasangan Ba'],
    'penjelasan': 'Pasangan Ba (꧀ꦧ) ditulis di BAWAH aksara yang dimatikan.',
    'contoh': [
      {'aksara': 'ꦭꦩ꧀ꦧ', 'bacaan': 'lam-ba'},
      {'aksara': 'ꦒꦩ꧀ꦧ', 'bacaan': 'gam-ba'},
      {'aksara': 'ꦠꦩ꧀ꦧ', 'bacaan': 'tam-ba'},
      {'aksara': 'ꦱꦩ꧀ꦧ', 'bacaan': 'sam-ba'},
      {'aksara': 'ꦏꦩ꧀ꦧ', 'bacaan': 'kam-ba'},
      {'aksara': 'ꦢꦩ꧀ꦧ', 'bacaan': 'dam-ba'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦧ'],
    'namaHuruf': ['Pasangan Ba'],
    'penjelasan': 'Pasangan Ba',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦧ', 'gabung': 'ꦲ꧀ꦧ', 'bacaan': 'mah-ba'},
        {'atas': 'ꦤ', 'bawah': 'ꦧ', 'gabung': 'ꦤ꧀ꦧ', 'bacaan': 'lam-ba'},
        {'atas': 'ꦕ', 'bawah': 'ꦧ', 'gabung': 'ꦕ꧀ꦧ', 'bacaan': 'bac-ba'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦧ', 'gabung': 'ꦫ꧀ꦧ', 'bacaan': 'war-ba'},
        {'atas': 'ꦏ', 'bawah': 'ꦧ', 'gabung': 'ꦏ꧀ꦧ', 'bacaan': 'tam-ba'},
        {'atas': 'ꦠ', 'bawah': 'ꦧ', 'gabung': 'ꦠ꧀ꦧ', 'bacaan': 'gam-ba'},
      ],
    ],
  },

  // ── PASANGAN NGA ─────────────────────────────────────────────────────────
  {
    'tipe': 'contoh',
    'hurufBaru': ['꧀ꦔ'],
    'namaHuruf': ['Pasangan Nga'],
    'penjelasan': 'Pasangan Nga (꧀ꦔ) ditulis di BAWAH aksara yang dimatikan.',
    'contoh': [
      {'aksara': 'ꦮꦺꦴꦔ꧀ꦔ', 'bacaan': 'wong-nga'},
      {'aksara': 'ꦠꦺꦴꦔ꧀ꦔ', 'bacaan': 'tong-nga'},
      {'aksara': 'ꦭꦺꦴꦔ꧀ꦔ', 'bacaan': 'long-nga'},
      {'aksara': 'ꦒꦺꦴꦔ꧀ꦔ', 'bacaan': 'gong-nga'},
      {'aksara': 'ꦱꦺꦴꦔ꧀ꦔ', 'bacaan': 'song-nga'},
      {'aksara': 'ꦏꦺꦴꦔ꧀ꦔ', 'bacaan': 'kong-nga'},
    ],
  },
  {
    'tipe': 'pasangan',
    'hurufBaru': ['꧀ꦔ'],
    'namaHuruf': ['Pasangan Nga'],
    'penjelasan': 'Pasangan Nga',
    'halaman': [
      [
        {'atas': 'ꦲ', 'bawah': 'ꦔ', 'gabung': 'ꦲ꧀ꦔ', 'bacaan': 'mah-nga'},
        {'atas': 'ꦤ', 'bawah': 'ꦔ', 'gabung': 'ꦤ꧀ꦔ', 'bacaan': 'won-nga'},
        {'atas': 'ꦕ', 'bawah': 'ꦔ', 'gabung': 'ꦕ꧀ꦔ', 'bacaan': 'bac-nga'},
      ],
      [
        {'atas': 'ꦫ', 'bawah': 'ꦔ', 'gabung': 'ꦫ꧀ꦔ', 'bacaan': 'war-nga'},
        {'atas': 'ꦏ', 'bawah': 'ꦔ', 'gabung': 'ꦏ꧀ꦔ', 'bacaan': 'kong-nga'},
        {'atas': 'ꦠ', 'bawah': 'ꦔ', 'gabung': 'ꦠ꧀ꦔ', 'bacaan': 'tong-nga'},
      ],
    ],
  },
];
// Akses dinamis semua jilid
const Map<int, List<Map<String, dynamic>>> semuaJilid = {
  1: jilid1,
  2: jilid2,
  3: jilid3,
};

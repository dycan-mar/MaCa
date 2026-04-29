import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app/theme.dart';
import '../data/aksara_data.dart';
import 'coming_soon.dart';

class BelajarAksaraScreen extends StatefulWidget {
  final int nomorJilid;
  final int? halamanAwal;

  const BelajarAksaraScreen({
    super.key,
    required this.nomorJilid,
    this.halamanAwal,
  });

  @override
  State<BelajarAksaraScreen> createState() => _BelajarAksaraScreenState();
}

class _BelajarAksaraScreenState extends State<BelajarAksaraScreen> {
  late int _halamanSaatIni;
  int? _halamanBookmark;
  late final PageController _pageController;

  // ── Ambil data jilid yang benar ────────────────────────────────────────────
  List<Map<String, dynamic>> get _dataJilid =>
      semuaJilid[widget.nomorJilid] ?? [];

  bool get _hasData => semuaJilid.containsKey(widget.nomorJilid);

  String get _bookmarkKey => 'bookmark_jilid_${widget.nomorJilid}';

  @override
  void initState() {
    super.initState();
    _halamanSaatIni = widget.halamanAwal ?? 0;
    if (_halamanSaatIni >= _dataJilid.length) {
      _halamanSaatIni = 0;
    }
    _pageController = PageController(initialPage: _halamanSaatIni);
    _loadBookmark();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _loadBookmark() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => _halamanBookmark = prefs.getInt(_bookmarkKey));
  }

  Future<void> _simpanBookmark(int halaman) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_bookmarkKey, halaman);
    setState(() => _halamanBookmark = halaman);
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Halaman ${halaman + 1} dibookmark!'),
        backgroundColor: AppTheme.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Future<void> _hapusBookmark() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_bookmarkKey);
    setState(() => _halamanBookmark = null);
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Bookmark dihapus'),
        backgroundColor: AppTheme.textMuted,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _keHalamanBookmark() {
    if (_halamanBookmark != null) {
      _pageController.animateToPage(
        _halamanBookmark!,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextHalaman() {
    if (_halamanSaatIni < _dataJilid.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevHalaman() {
    if (_halamanSaatIni > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Validasi: jika data jilid tidak ada, tampilkan coming soon
    if (!_hasData) {
      return ComingSoonScreen(nomorJilid: widget.nomorJilid);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Jilid ${widget.nomorJilid}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        actions: [
          if (_halamanBookmark != null && _halamanBookmark != _halamanSaatIni)
            IconButton(
              icon: const Icon(Icons.bookmark, color: Colors.amber),
              tooltip: 'Ke halaman bookmark (${_halamanBookmark! + 1})',
              onPressed: _keHalamanBookmark,
            ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                '${_halamanSaatIni + 1} / ${_dataJilid.length}',
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Progress bar
          LinearProgressIndicator(
            value: (_halamanSaatIni + 1) / _dataJilid.length,
            backgroundColor: AppTheme.secondary.withOpacity(0.2),
            color: AppTheme.secondary,
            minHeight: 6,
          ),

          // Konten halaman
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (i) => setState(() => _halamanSaatIni = i),
              itemCount: _dataJilid.length,
              itemBuilder: (context, index) {
                final data = _dataJilid[index];
                final String tipe = data['tipe'] as String? ?? 'halaman';
                final bool isHalamanIniBookmark = _halamanBookmark == index;

                return Stack(
                  children: [
                    // ── Pilih widget sesuai tipe ──────────────────────────
                    Builder(
                      builder: (context) {
                        late final Widget halaman;
                        switch (tipe) {
                          case 'divider':
                            halaman = _HalamanDivider(data: data);
                            break;
                          case 'contoh':
                            halaman = _HalamanContoh(data: data);
                            break;
                          case 'pasangan':
                            halaman = _HalamanPasangan(data: data);
                            break;
                          default:
                            halaman = _HalamanBaca(data: data);
                        }
                        return halaman;
                      },
                    ),

                    // ── Bookmark tab ──────────────────────────────────────
                    Positioned(
                      top: -6,
                      right: 28,
                      child: GestureDetector(
                        onTap: () => isHalamanIniBookmark
                            ? _hapusBookmark()
                            : _simpanBookmark(index),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 28,
                          height: 44,
                          decoration: BoxDecoration(
                            color: isHalamanIniBookmark
                                ? Colors.amber
                                : Colors.grey.withOpacity(0.7),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            boxShadow: isHalamanIniBookmark
                                ? [
                                    BoxShadow(
                                      color: Colors.amber.withOpacity(0.4),
                                      blurRadius: 8,
                                      offset: const Offset(0, 3),
                                    ),
                                  ]
                                : [],
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                isHalamanIniBookmark
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                                color: isHalamanIniBookmark
                                    ? Colors.white
                                    : Colors.grey[200],
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          // Tombol navigasi
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _halamanSaatIni > 0 ? _prevHalaman : null,
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Sebelumnya'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      side: const BorderSide(color: AppTheme.primary),
                      foregroundColor: AppTheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _halamanSaatIni < _dataJilid.length - 1
                        ? _nextHalaman
                        : () => context.go('/'),
                    icon: const Icon(Icons.arrow_forward),
                    label: Text(
                      _halamanSaatIni < _dataJilid.length - 1
                          ? 'Berikutnya'
                          : 'Selesai',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// Sub-widget per tipe halaman
// ══════════════════════════════════════════════════════════════════════════════

/// Tipe: 'divider' — halaman pembuka bab baru
class _HalamanDivider extends StatelessWidget {
  final Map<String, dynamic> data;
  const _HalamanDivider({required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                data['judul'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              data['penjelasan'] as String,
              style: const TextStyle(
                fontSize: 14,
                color: AppTheme.textDark,
                height: 1.7,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Tipe: 'contoh' — pengenalan sandangan/pasangan + contoh bacaan
class _HalamanContoh extends StatelessWidget {
  final Map<String, dynamic> data;
  const _HalamanContoh({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<String> hurufBaru = List<String>.from(data['hurufBaru']);
    final List<String> namaHuruf = List<String>.from(data['namaHuruf']);
    final List<Map<String, dynamic>> contoh = (data['contoh'] as List)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth < 380 ? 2 : 3;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Badge huruf/sandangan/pasangan baru
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(hurufBaru.length, (i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          Text(
                            hurufBaru[i],
                            style: AppTheme.aksaraStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            namaHuruf[i],
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 12),

              // Penjelasan
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: AppTheme.secondary.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppTheme.secondary.withOpacity(0.3),
                  ),
                ),
                child: Text(
                  data['penjelasan'] as String,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppTheme.textDark,
                    height: 1.6,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Grid contoh aksara + bacaan
              GridView.count(
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1,
                children: contoh.map((c) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppTheme.secondary.withOpacity(0.4),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          c['aksara'] as String,
                          style: AppTheme.aksaraStyle(fontSize: 28),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          c['bacaan'] as String,
                          style: const TextStyle(
                            fontSize: 13,
                            color: AppTheme.textMuted,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Tipe: 'halaman' (default) — latihan baca huruf/sandangan
class _HalamanBaca extends StatelessWidget {
  final Map<String, dynamic> data;
  const _HalamanBaca({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<String> hurufBaru = List<String>.from(data['hurufBaru']);
    final List<String> namaHuruf = List<String>.from(data['namaHuruf']);
    final List<List<String>> baris = List<List<String>>.from(
      (data['halaman'] as List).map((b) => List<String>.from(b as List)),
    );
    final String? penjelasan = data['penjelasan'] as String?;

    // Deteksi Taling / Taling Tarung (karakter muncul di KIRI, butuh ruang lebih)
    const talingChars = {'ꦺ', 'ꦺꦴ'};
    final bool isTaling = hurufBaru.any((h) => talingChars.contains(h));

    return LayoutBuilder(
      builder: (context, constraints) {
        // Taling paksa 4 kolom; lainnya ikut jumlah kolom dari data (biasanya 5)
        final int jumlahKolom = isTaling
            ? 4
            : (baris.isNotEmpty ? baris.first.length : 5);

        // Padding dalam sel lebih lega untuk Taling agar karakter kiri tidak terpotong
        final double cellPaddingH = isTaling ? 10.0 : 4.0;
        final double cellPaddingV = isTaling ? 8.0 : 4.0;

        final double horizontalPadding = 20 * 2;
        final double totalGap = 8 * (jumlahKolom - 1).toDouble();
        final double cellSize =
            (constraints.maxWidth - horizontalPadding - totalGap) / jumlahKolom;
        // Font size proporsional: ~48% dari ukuran kotak, minimal 14, maksimal 30
        final double fontSize = (cellSize * 0.48).clamp(14.0, 30.0);

        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Header huruf/sandangan baru
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(hurufBaru.length, (i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          Text(
                            hurufBaru[i],
                            style: AppTheme.aksaraStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            namaHuruf[i],
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 16),

              // Label
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  penjelasan ?? 'Baca huruf-huruf berikut:',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppTheme.textMuted,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Grid huruf — isi dapat digulir jika terlalu tinggi
              Flexible(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: baris.map((row) {
                      // Kalau taling dipaksa 4 kolom, potong baris yang lebih dari 4
                      final displayRow = isTaling && row.length > jumlahKolom
                          ? row.sublist(0, jumlahKolom)
                          : row;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: displayRow.map((huruf) {
                            final bool isHurufBaru = hurufBaru.contains(huruf);
                            return Container(
                              width: cellSize,
                              height: cellSize,
                              decoration: BoxDecoration(
                                color: isHurufBaru
                                    ? AppTheme.secondary.withOpacity(0.15)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(
                                  (cellSize * 0.18).clamp(6.0, 12.0),
                                ),
                                border: Border.all(
                                  color: isHurufBaru
                                      ? AppTheme.secondary
                                      : AppTheme.secondary.withOpacity(0.3),
                                  width: isHurufBaru ? 2 : 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: cellPaddingH,
                                  vertical: cellPaddingV,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    huruf,
                                    style: AppTheme.aksaraStyle(
                                      fontSize: fontSize,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Tipe: 'pasangan' — latihan baca aksara + pasangannya
class _HalamanPasangan extends StatelessWidget {
  final Map<String, dynamic> data;
  const _HalamanPasangan({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<String> hurufBaru = List<String>.from(data['hurufBaru']);
    final List<String> namaHuruf = List<String>.from(data['namaHuruf']);
    final List<List<Map<String, dynamic>>> baris = (data['halaman'] as List)
        .map(
          (b) => (b as List)
              .map((e) => Map<String, dynamic>.from(e as Map))
              .toList(),
        )
        .toList();
    final String? penjelasan = data['penjelasan'] as String?;

    return LayoutBuilder(
      builder: (context, constraints) {
        const int jumlahKolom = 3;
        const double horizontalPadding = 20 * 2;
        const double totalGap = 8 * (jumlahKolom - 1);
        final double cellSize =
            (constraints.maxWidth - horizontalPadding - totalGap) / jumlahKolom;
        final double fontSize = (cellSize * 0.38).clamp(18.0, 34.0);

        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // ── Header pasangan baru ──────────────────────────────────
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(hurufBaru.length, (i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Text(
                            hurufBaru[i],
                            style: AppTheme.aksaraStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            namaHuruf[i],
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 12),

              // ── Label ─────────────────────────────────────────────────
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  penjelasan ?? 'Baca pasangan berikut:',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppTheme.textMuted,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ── Grid pasangan ─────────────────────────────────────────
              Flexible(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: baris.map((row) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: row.map((sel) {
                            final String gabung = sel['gabung'] as String;
                            final String bacaan = sel['bacaan'] as String;
                            // Highlight semua sel — karena ini halaman latihan pasangan spesifik
                            final bool isPasanganBaru = hurufBaru.any(
                              (h) => gabung.contains(h.replaceAll('꧀', '')),
                            );

                            return Container(
                              width: cellSize,
                              height: cellSize * 1.15,
                              decoration: BoxDecoration(
                                color: isPasanganBaru
                                    ? AppTheme.secondary.withOpacity(0.15)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(
                                  (cellSize * 0.18).clamp(6.0, 12.0),
                                ),
                                border: Border.all(
                                  color: isPasanganBaru
                                      ? AppTheme.secondary
                                      : AppTheme.secondary.withOpacity(0.3),
                                  width: isPasanganBaru ? 2 : 1,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Aksara gabungan — font render otomatis pasangan di bawah
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        gabung,
                                        style: AppTheme.aksaraStyle(
                                          fontSize: fontSize,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  // Label bacaan
                                  Text(
                                    bacaan,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: AppTheme.textMuted,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

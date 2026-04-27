import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app/theme.dart';
import '../data/aksara_data.dart';
import '../models/aksara.dart';

class BelajarAksaraScreen extends StatefulWidget {
  final int nomorJilid;

  const BelajarAksaraScreen({super.key, required this.nomorJilid});

  @override
  State<BelajarAksaraScreen> createState() => _BelajarAksaraScreenState();
}

class _BelajarAksaraScreenState extends State<BelajarAksaraScreen> {
  late List<List<Aksara>> _semuaHalaman;
  int _halamanSaatIni = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _semuaHalaman = generateHalamanJilid1();
  }

  void _nextHalaman() {
    if (_halamanSaatIni < _semuaHalaman.length - 1) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Jilid ${widget.nomorJilid}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                'Halaman ${_halamanSaatIni + 1} / ${_semuaHalaman.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Progress bar
          LinearProgressIndicator(
            value: (_halamanSaatIni + 1) / _semuaHalaman.length,
            backgroundColor: AppTheme.secondary.withOpacity(0.2),
            color: AppTheme.secondary,
            minHeight: 6,
          ),

          // Konten halaman
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (i) => setState(() => _halamanSaatIni = i),
              itemCount: _semuaHalaman.length,
              itemBuilder: (context, halamanIndex) {
                final hurufBaru = daftarAksara[halamanIndex];
                final isiHalaman = _semuaHalaman[halamanIndex];

                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Huruf baru yang dipelajari di halaman ini
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: AppTheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              hurufBaru.unicode,
                              style: AppTheme.aksaraStyle(
                                fontSize: 48,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              hurufBaru.nama,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Label
                      const Text(
                        'Baca huruf-huruf berikut:',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppTheme.textMuted,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Grid huruf latihan
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1,
                          ),
                          itemCount: isiHalaman.length,
                          itemBuilder: (context, i) {
                            final aksara = isiHalaman[i];
                            final bool isHurufBaru =
                                aksara.unicode == hurufBaru.unicode;
                            return Container(
                              decoration: BoxDecoration(
                                color: isHurufBaru
                                    ? AppTheme.secondary.withOpacity(0.2)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: isHurufBaru
                                      ? AppTheme.secondary
                                      : AppTheme.secondary.withOpacity(0.3),
                                  width: isHurufBaru ? 2 : 1,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  aksara.unicode,
                                  style: AppTheme.aksaraStyle(fontSize: 28),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
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
                    onPressed: _halamanSaatIni < _semuaHalaman.length - 1
                        ? _nextHalaman
                        : null,
                    icon: const Icon(Icons.arrow_forward),
                    label: Text(
                      _halamanSaatIni < _semuaHalaman.length - 1
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
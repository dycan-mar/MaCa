import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app/theme.dart';

class ComingSoonScreen extends StatelessWidget {
  final int nomorJilid;

  const ComingSoonScreen({super.key, required this.nomorJilid});

  // Daftar jilid beserta deskripsi
  static const Map<int, String> jilidDeskripsi = {
    4: 'Sandhangan Panyigeg',
    5: 'Aksara Murda & Swara',
    6: 'Angka Jawa & Tanda Baca',
  };

  @override
  Widget build(BuildContext context) {
    final deskripsi = jilidDeskripsi[nomorJilid] ?? 'Coming Soon';

    return Scaffold(
      appBar: AppBar(
        title: Text('Jilid $nomorJilid'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ilustrasi
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppTheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Icon(
                    Icons.schedule_outlined,
                    size: 64,
                    color: AppTheme.primary,
                  ),
                ),
                const SizedBox(height: 32),

                // Judul
                const Text(
                  'Segera Hadir',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textDark,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),

                // Deskripsi Jilid
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppTheme.primary.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppTheme.primary.withOpacity(0.2),
                    ),
                  ),
                  child: Text(
                    'Jilid $nomorJilid - $deskripsi',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 24),

                // Pesan
                const Text(
                  'Materi untuk jilid ini masih dalam proses penyiapan. Kami bekerja keras untuk memberikan konten berkualitas tinggi.\n\nTerima kasih atas kesabaran Anda!',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.textMuted,
                    height: 1.8,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),

                // Tombol kembali
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => context.go('/'),
                    icon: const Icon(Icons.home),
                    label: const Text('Kembali ke Beranda'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

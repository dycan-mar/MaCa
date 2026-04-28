import 'package:flutter/material.dart';
import '../app/theme.dart';
import '../widgets/jilid_card.dart'; // sesuaikan path import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // ── Data semua jilid — ubah subtitle sesuai kurikulum ──────────────────────
  static const List<JilidData> _jilidList = [
    JilidData(nomor: 1, subtitle: 'Mengenal Aksara Dasar'),
    JilidData(nomor: 2, subtitle: 'Sandhangan '),
    JilidData(nomor: 3, subtitle: 'Pasangan Aksara'),
    JilidData(nomor: 4, subtitle: 'Sandhangan Panyigeg'),
    JilidData(nomor: 5, subtitle: 'Aksara Murda & Swara'),
    JilidData(nomor: 6, subtitle: 'Angka Jawa & Tanda Baca'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 48),
              _buildHeader(),
              const SizedBox(height: 40),
              Expanded(child: _buildJilidList()),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // ── Header ─────────────────────────────────────────────────────────────────

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          'ꦲꦤꦕꦫꦏ',
          style: AppTheme.aksaraStyle(fontSize: 52, color: AppTheme.primary),
        ),
        const SizedBox(height: 8),
        const Text(
          "Iqra' Hanacaraka",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppTheme.textDark,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          "Belajar Aksara Jawa dengan Metode Iqra'",
          style: TextStyle(fontSize: 13, color: AppTheme.textMuted),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  // ── List jilid ─────────────────────────────────────────────────────────────

  Widget _buildJilidList() {
    return ListView.separated(
      itemCount: _jilidList.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, i) => JilidCard(jilid: _jilidList[i]),
    );
  }
}

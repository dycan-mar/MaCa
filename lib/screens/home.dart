import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app/theme.dart';
import '../widgets/jilid_card.dart'; // sesuaikan path import

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<JilidData> _jilidList = [
    JilidData(nomor: 1, subtitle: 'Mengenal Aksara Dasar'),
    JilidData(nomor: 2, subtitle: 'Sandhangan '),
    JilidData(nomor: 3, subtitle: 'Pasangan Aksara'),
    JilidData(nomor: 4, subtitle: 'Sandhangan Panyigeg'),
    JilidData(nomor: 5, subtitle: 'Aksara Murda & Swara'),
    JilidData(nomor: 6, subtitle: 'Angka Jawa & Tanda Baca'),
  ];

  List<int?> _bookmarkPages = [];
  bool _isLoadingBookmarks = true;

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _bookmarkPages = List<int?>.generate(
        _jilidList.length,
        (index) => prefs.getInt('bookmark_jilid_${index + 1}'),
      );
      _isLoadingBookmarks = false;
    });
  }

  int get _bookmarkCount =>
      _bookmarkPages.where((pageIndex) => pageIndex != null).length;

  void _showBookmarkMenu() {
    final bookmarks = _bookmarkPages
        .asMap()
        .entries
        .where((entry) => entry.value != null)
        .toList();

    if (bookmarks.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Belum ada halaman bookmark')),
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 42,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppTheme.textMuted.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Bookmark Aktif',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                ...bookmarks.map((entry) {
                  final jilid = entry.key + 1;
                  final halaman = entry.value!;
                  return ListTile(
                    leading: const Icon(
                      Icons.bookmark,
                      color: AppTheme.primary,
                    ),
                    title: Text('Jilid $jilid'),
                    subtitle: Text('Halaman ${halaman + 1}'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.pop(context);
                      context.go('/jilid/$jilid?bookmark=$halaman');
                    },
                  );
                }).toList(),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              sliver: SliverToBoxAdapter(child: _buildHeader()),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: JilidCard(jilid: _jilidList[index]),
                  ),
                  childCount: _jilidList.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Header ─────────────────────────────────────────────────────────────────

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          decoration: BoxDecoration(
            color: AppTheme.primary.withOpacity(0.08),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            'MACA AKSARA JAWA',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: AppTheme.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          "Belajar Aksara Jawa dengan Metode Iqra'",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textDark,
            height: 1.6,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        OutlinedButton.icon(
          onPressed: _isLoadingBookmarks ? null : _showBookmarkMenu,
          icon: const Icon(Icons.bookmark_border),
          label: Text(
            _isLoadingBookmarks
                ? 'Memuat bookmark...'
                : 'Buka Bookmark ($_bookmarkCount)',
          ),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppTheme.primary,
            side: const BorderSide(color: AppTheme.primary),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 52,
          height: 4,
          decoration: BoxDecoration(
            color: AppTheme.secondary,
            borderRadius: BorderRadius.circular(2),
          ),
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

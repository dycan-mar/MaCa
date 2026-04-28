import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app/theme.dart';

/// Data model untuk satu Jilid
class JilidData {
  final int nomor;
  final String subtitle;

  const JilidData({required this.nomor, required this.subtitle});
}

/// Widget card untuk satu Jilid — bisa dipakai di mana saja
class JilidCard extends StatelessWidget {
  final JilidData jilid;

  const JilidCard({super.key, required this.jilid});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => context.go('/jilid/${jilid.nomor}'),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              // Badge nomor
              _NomorBadge(nomor: jilid.nomor),
              const SizedBox(width: 16),

              // Label
              Expanded(
                child: _JilidLabel(
                  nomor: jilid.nomor,
                  subtitle: jilid.subtitle,
                ),
              ),

              // Arrow
              const Icon(Icons.chevron_right, color: AppTheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Sub-widget private ──────────────────────────────────────────────────────

class _NomorBadge extends StatelessWidget {
  final int nomor;
  const _NomorBadge({required this.nomor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          '$nomor',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _JilidLabel extends StatelessWidget {
  final int nomor;
  final String subtitle;
  const _JilidLabel({required this.nomor, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jilid $nomor',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppTheme.textDark,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 13, color: AppTheme.textMuted),
        ),
      ],
    );
  }
}

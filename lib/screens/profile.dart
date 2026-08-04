import 'package:flutter/material.dart';
import 'package:flutter_somnus/shared/app_scaffold.dart';
import 'package:flutter_somnus/widgets/somnus_glass_card.dart';
import 'package:material_symbols_icons/symbols.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return AppScaffold(
      currentIndex: 3,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: colorScheme.primary.withValues(alpha: 0.3),
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 56,
                          backgroundColor: colorScheme.surfaceContainerHigh,
                          backgroundImage: const NetworkImage(
                            'images/professional_headshot_of_a_calm_friendly_person_in_their_30s_soft_warm_lighting.png',
                          ),
                          // child: const Icon(
                          //   Symbols.person,
                          //   size: 56,
                          //   color: Colors.grey,
                          // ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: colorScheme.primary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: colorScheme.surface,
                            width: 2,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(
                            minWidth: 28,
                            minHeight: 28,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: colorScheme.primary,
                          ),
                          icon: Icon(
                            Symbols.edit,
                            color: colorScheme.onPrimary,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Alex Johnson',
                    style: textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      color: colorScheme.primary.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.2),
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Symbols.verified,
                          color: colorScheme.primary,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Premium Member',
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: SomnusGlassCard(
                    child: Column(
                      children: [
                        Text(
                          '124',
                          style: textTheme.displayMedium?.copyWith(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'NIGHTS TRACKED',
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SomnusGlassCard(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Symbols.auto_awesome,
                              color: colorScheme.tertiary,
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Lv. 12',
                              style: textTheme.displayMedium?.copyWith(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'DREAMER',
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Row(
              children: [
                Container(
                  width: 3,
                  height: 20,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'PREFERENCES',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SomnusGlassCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.3),
                              colorScheme.primary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Symbols.alarm,
                          color: colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Smart Alarm Preferences'),
                      const Spacer(),
                      Icon(
                        Symbols.keyboard_arrow_right,
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.3),
                              colorScheme.primary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Symbols.health_metrics,
                          color: colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Integrate Apple Health'),
                      const Spacer(),
                      Icon(
                        Symbols.keyboard_arrow_right,
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.3),
                              colorScheme.primary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Symbols.notifications,
                          color: colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Notifications'),
                      const Spacer(),
                      Icon(
                        Symbols.keyboard_arrow_right,
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.3),
                              colorScheme.primary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Symbols.workspace_premium,
                          color: colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Subscription Plan'),
                      const Spacer(),
                      Icon(
                        Symbols.keyboard_arrow_right,
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 3,
                  height: 20,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'SUPPORT',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SomnusGlassCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.3),
                              colorScheme.primary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Symbols.help_center,
                          color: colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Help Center'),
                      const Spacer(),
                      Icon(
                        Symbols.open_in_new,
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.3),
                              colorScheme.primary.withValues(alpha: 0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Symbols.chat_bubble,
                          color: colorScheme.primary,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Feedback'),
                      const Spacer(),
                      Icon(
                        Symbols.keyboard_arrow_right,
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: colorScheme.error,
                  foregroundColor: colorScheme.onError,
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  textStyle: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),
                ),
                icon: Icon(Symbols.logout, color: colorScheme.onError),
                label: Text('Sign Out'),
              ),
            ),
            const Text('Somnus v2.4.1'),
          ],
        ),
      ),
    );
  }
}

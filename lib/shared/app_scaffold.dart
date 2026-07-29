import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class AppScaffold extends StatefulWidget {
  final int currentIndex;
  final Widget child;

  const AppScaffold({
    super.key,
    required this.currentIndex,
    required this.child,
  });

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  void _onDestinationSelected(int index) {
    if (index == widget.currentIndex) return;

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/track');
        break;
      case 2:
        context.go('/trends');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: UnconstrainedBox(
          child: CircleAvatar(
            child: Image.asset('images/somnus_logo.png', fit: BoxFit.cover),
          ),
        ),
        title: const Text('Somnus'),
        actionsPadding: const EdgeInsets.only(right: 8),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'images/professional_headshot_of_a_calm_friendly_person_in_their_30s_soft_warm_lighting.png',
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: widget.currentIndex,
        indicatorColor: colorScheme.primary.withValues(alpha: 0.15),
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              Symbols.dashboard,
              fill: 1,
              color: colorScheme.primary,
            ),
            icon: Icon(Symbols.dashboard, color: colorScheme.onSurfaceVariant),
            label: 'Dashboard',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Symbols.bedtime,
              fill: 1,
              color: colorScheme.primary,
            ),
            icon: Icon(Symbols.bedtime, color: colorScheme.onSurfaceVariant),
            label: 'Track',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Symbols.show_chart,
              fill: 1,
              color: colorScheme.primary,
            ),
            icon: Icon(Symbols.show_chart, color: colorScheme.onSurfaceVariant),
            label: 'Trends',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Symbols.person,
              fill: 1,
              color: colorScheme.primary,
            ),
            icon: Icon(Symbols.person, color: colorScheme.onSurfaceVariant),
            label: 'Profile',
          ),
        ],
      ),
      body: widget.child,
    );
  }
}

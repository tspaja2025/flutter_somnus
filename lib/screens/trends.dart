import 'package:flutter/material.dart';
import 'package:flutter_somnus/shared/app_scaffold.dart';
import 'package:flutter_somnus/widgets/somnus_glass_card.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Trends extends StatelessWidget {
  const Trends({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 2,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Sleep Insights'),
            const Text('Your patterns are stabilizing'),
            SomnusGlassCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('AVERAGE DURATION'),
                  const Text('7h 42m'),
                ],
              ),
            ),
            SomnusGlassCard(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('SLEEP DEBT'),
                      const Text('1h 15m remaining'),
                      const Text("You're catching up well this week!"),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 64,
                        height: 64,
                        child: CircularProgressIndicator(
                          value: 0.78,
                          strokeWidth: 8,
                          strokeCap: StrokeCap.round,
                        ),
                      ),
                      const Icon(Symbols.hourglass),
                    ],
                  ),
                ],
              ),
            ),
            const Text('DEEP INSIGHTS'),
            SomnusGlassCard(
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: const Icon(Symbols.chair),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Weekend Catch-up'),
                        const Text(
                          'Consistency is better than sleeping in on Sundays.',
                        ),
                      ],
                    ),
                  ),
                  const Icon(Symbols.arrow_forward),
                ],
              ),
            ),
            SomnusGlassCard(
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: const Icon(Symbols.coffee),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Coffee Impact on REM'),
                        const Text(
                          'Your late afternoon espresso reduced REM by 22%.',
                        ),
                      ],
                    ),
                  ),
                  const Icon(Symbols.arrow_forward),
                ],
              ),
            ),
            SomnusGlassCard(
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: const Icon(Symbols.ecg_heart),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Average Heart Rate'),
                        const Text(
                          'Resting HR was 54 bpm, indicating good recovery.',
                        ),
                      ],
                    ),
                  ),
                  const Icon(Symbols.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

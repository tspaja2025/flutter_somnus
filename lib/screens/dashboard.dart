import 'package:flutter/material.dart';
import 'package:flutter_somnus/shared/app_scaffold.dart';
import 'package:flutter_somnus/widgets/somnus_glass_card.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 0,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Wednesday, July 29'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Good Morning, Alex'),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: const Icon(Symbols.wb_twilight),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: CircularProgressIndicator(
                    value: 0.78,
                    strokeWidth: 16,
                    strokeCap: StrokeCap.round,
                  ),
                ),
                Column(
                  children: [
                    const Text('SLEEP QUALITY'),
                    const Text('78%'),
                    const Text('Optimal Range'),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SomnusGlassCard(
                  child: Column(
                    children: [
                      const Icon(Symbols.nest_clock_farsight_analog),
                      const Text('Duration'),
                      const Text('7h 24m'),
                    ],
                  ),
                ),
                SomnusGlassCard(
                  child: Column(
                    children: [
                      const Icon(Symbols.rebase_edit),
                      const Text('Consistency'),
                      const Text('92%'),
                    ],
                  ),
                ),
                SomnusGlassCard(
                  child: Column(
                    children: [
                      const Icon(Symbols.view_in_ar),
                      const Text('Deep'),
                      const Text('2h 15m'),
                    ],
                  ),
                ),
              ],
            ),
            SomnusGlassCard(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Ready for tonight?'),
                      const Text('Wind down with guided breathing.'),
                    ],
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Icon(
                      Symbols.play_arrow,
                      fill: 1,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            SomnusGlassCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Symbols.chart_data),
                      const Text("LAST NIGHT'S SUMMARY"),
                      const Spacer(),
                      const Icon(Symbols.arrow_forward),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Symbols.lightbulb),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('REM Insight'),
                            const Text(
                              "Your REM cycle was 15% longer than avarage. This suggests great cognitive recovery after yesterday's learning sessions.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SomnusGlassCard(
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Symbols.alarm,
                            fill: 1,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const Text('Set Alarm'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SomnusGlassCard(
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Symbols.notes,
                            fill: 1,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const Text('Journal'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

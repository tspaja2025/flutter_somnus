import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_somnus/shared/app_scaffold.dart';
import 'package:flutter_somnus/widgets/somnus_glass_card.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return AppScaffold(
      currentIndex: 0,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('EEEE, MMMM d').format(DateTime.now()),
              style: textTheme.bodyMedium?.copyWith(color: colorScheme.primary),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Good Morning, Alex', style: textTheme.headlineMedium),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Icon(Symbols.wb_twilight, color: colorScheme.primary),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 220,
                    height: 220,
                    child: CircularProgressIndicator(
                      color: colorScheme.primary,
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.08),
                      value: 0.78,
                      strokeWidth: 14,
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'SLEEP QUALITY',
                        style: textTheme.labelSmall?.copyWith(
                          letterSpacing: 0.6,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Text(
                        '78%',
                        style: textTheme.displayLarge?.copyWith(
                          fontSize: 42,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        child: Text(
                          '● Optimal Range',
                          style: textTheme.bodyMedium?.copyWith(
                            color: Colors.greenAccent.withValues(alpha: 0.9),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: SomnusGlassCard(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Icon(
                          Symbols.nest_clock_farsight_analog,
                          color: colorScheme.secondary,
                          size: 22,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Duration',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(letterSpacing: 1.2),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '7h 24m',
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SomnusGlassCard(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Icon(
                          Symbols.rebase_edit,
                          color: colorScheme.secondary,
                          size: 22,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Consistency',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(letterSpacing: 1.2),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '92%',
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SomnusGlassCard(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Icon(
                          Symbols.view_in_ar,
                          color: colorScheme.secondary,
                          size: 22,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Deep',
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall?.copyWith(letterSpacing: 1.2),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '2h 15m',
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SomnusGlassCard(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ready for tonight?',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Wind down with guided breathing.',
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: Icon(
                      Symbols.play_arrow,
                      fill: 1,
                      color: colorScheme.onPrimary,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            SomnusGlassCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Symbols.chart_data,
                        color: colorScheme.secondary,
                        size: 28,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "LAST NIGHT'S SUMMARY",
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Symbols.keyboard_arrow_right, size: 20),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: BarChart(
                      BarChartData(
                        barTouchData: BarTouchData(
                          enabled: true,
                          touchTooltipData: BarTouchTooltipData(
                            getTooltipColor: (_) => Colors.blueGrey,
                            tooltipHorizontalAlignment:
                                FLHorizontalAlignment.right,
                            tooltipMargin: -10,
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String weekDay = switch (group.x) {
                                0 => 'Monday',
                                1 => 'Tuesday',
                                2 => 'Wednesday',
                                3 => 'Thursday',
                                4 => 'Friday',
                                5 => 'Saturday',
                                6 => 'Sunday',
                                _ => throw Error(),
                              };
                              return BarTooltipItem(
                                '$weekDay\n',
                                const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ((rod.toY - 1).toStringAsFixed(
                                      1,
                                    )).toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          leftTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(show: false),
                        barGroups: List.generate(
                          7,
                          (i) => switch (i) {
                            0 => makeGroupData(
                              context,
                              0,
                              5,
                              isTouched: i == -1,
                            ),
                            1 => makeGroupData(
                              context,
                              1,
                              6.5,
                              isTouched: i == -1,
                            ),
                            2 => makeGroupData(
                              context,
                              2,
                              5,
                              isTouched: i == -1,
                            ),
                            3 => makeGroupData(
                              context,
                              3,
                              7.5,
                              isTouched: i == -1,
                            ),
                            4 => makeGroupData(
                              context,
                              4,
                              9,
                              isTouched: i == -1,
                            ),
                            5 => makeGroupData(
                              context,
                              5,
                              11.5,
                              isTouched: i == -1,
                            ),
                            6 => makeGroupData(
                              context,
                              6,
                              6.5,
                              isTouched: i == -1,
                            ),
                            _ => throw Error(),
                          },
                        ),
                        gridData: const FlGridData(show: false),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainer,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Symbols.lightbulb, color: colorScheme.tertiary),
                        const SizedBox(width: 16),
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
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
                        const SizedBox(width: 4),
                        Text(
                          'Set Alarm',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SomnusGlassCard(
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                colorScheme.tertiary.withValues(alpha: 0.3),
                                colorScheme.tertiary.withValues(alpha: 0.1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Symbols.notes,
                            color: colorScheme.tertiary,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Journal',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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

  BarChartGroupData makeGroupData(
    BuildContext context,
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 16,
    List<int> showTooltips = const [],
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched
              ? Colors.green
              : colorScheme.primary.withValues(alpha: 0.7),
          width: width,
          borderRadius: BorderRadius.circular(4),
          borderSide: isTouched
              ? BorderSide(color: Colors.green.shade800)
              : BorderSide(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.7),
                  width: 0,
                ),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 12,
            color: colorScheme.surfaceContainerHighest,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }
}

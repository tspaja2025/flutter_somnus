import 'package:flutter/material.dart';
import 'package:flutter_somnus/shared/app_scaffold.dart';
import 'package:flutter_somnus/widgets/somnus_glass_card.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 1,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('TRACKING SESSION ACTIVE'),
            const Text('Rest well, Alex.'),
            const Text('10:35'),
            Row(
              children: [
                const Icon(Symbols.nest_clock_farsight_analog),
                const Text('IN BED SINCE 10:45 PM'),
              ],
            ),
            SomnusGlassCard(
              child: Row(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Symbols.water_drop),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('AMBIENT SOUND'),
                      const Text('Rain on Tin Roof'),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: const Icon(Symbols.volume_up),
                  ),
                ],
              ),
            ),
            SomnusGlassCard(
              child: Row(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Symbols.alarm),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Smart Alarm'),
                      const Text('Wakes you in light sleep'),
                    ],
                  ),
                  const Spacer(),
                  Switch(
                    value: _value,
                    onChanged: (bool value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Symbols.stop),
                label: const Text('STOP TRACKING'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Ações da conta',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const BoxCard(
                boxContent: _RecentPointsContent(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RecentPointsContent extends StatelessWidget {
  const _RecentPointsContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Pontos totais:'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
          ),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
          ),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(
                  color: ThemeColors.recentPoints['free_delivery'],
                ),
              ),
              const Text('Entrega grátis: 15000pts')
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(
                color: ThemeColors.recentPoints['streaming'],
              ),
            ),
            const Text('1 mês de streaming: 30000pts')
          ],
        )
      ],
    );
  }
}

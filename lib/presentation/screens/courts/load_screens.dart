import 'package:flutter/material.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: CircularProgressIndicator(
            strokeWidth: 3,
          )),
          const SizedBox(height: 20),
          Text('Cargando', style: textStyles.titleMedium),
        ],
      ),
    );
  }
}

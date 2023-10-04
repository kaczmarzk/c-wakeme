import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({
    required this.body,
    this.cubit,
    this.lazy = false,
    super.key,
  });

  final Widget body;
  final Cubit? cubit;
  final bool lazy;

  @override
  Widget build(BuildContext context) {
    if (cubit == null) return _CommonScaffold(body: body);

    return BlocProvider(
      create: (_) => cubit!,
      lazy: lazy,
      child: _CommonScaffold(body: body),
    );
  }
}

class _CommonScaffold extends StatelessWidget {
  const _CommonScaffold({required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: body,
      );
}

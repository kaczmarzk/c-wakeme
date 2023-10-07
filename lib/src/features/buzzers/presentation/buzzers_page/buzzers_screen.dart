import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/cubit/buzzers_screen_cubit.dart';
import 'package:wakeme/src/presentation/common/widgets/common_screen.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/widgets/buzzers_add_buzzer_button.dart';
import 'package:wakeme/src/features/buzzers/presentation/buzzers_page/widgets/buzzers_list_widget.dart';
import 'package:wakeme/src/presentation/common/widgets/common_sliver_appbar.dart';

@RoutePage()
class BuzzersScreen extends StatelessWidget {
  const BuzzersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<BuzzersScreenCubit>()..fetchBuzzers(),
      child: const CommonScreen(
        floating: BuzzersAddBuzzerButton(),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: [
          CommonSliverAppBar(title: 'Buzzers'),
          BlocBuilder<BuzzersScreenCubit, BuzzersScreenState>(
            builder: (_, state) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => BuzzersListWidget(state.buzzers[index]),
                childCount: state.buzzers.length,
              ),
            ),
          ),
        ],
      );
}

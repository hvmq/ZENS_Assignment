import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zens_assignment_flutter/bloc/jokes_event.dart';
import 'package:zens_assignment_flutter/services/sharedpreferences_serveice.dart';
import 'package:zens_assignment_flutter/utils/app_color.dart';
import '../../bloc/jokes_bloc.dart';
import '../../bloc/jokes_state.dart';
import '../widgets/app_widgets.dart';

class JokePage extends StatelessWidget {
  const JokePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          const HeaderWidget(),
          Expanded(
            child: BlocBuilder<JokeBloc, JokeState>(
              builder: (context, state) {
                if (state is JokeLoadInProgress) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is JokeLoadSuccess) {
                  return BodyWidget(
                    jokeText: state.jokes[state.currentJokeIndex],
                    onPress: (isFunny) async {
                      context.read<JokeBloc>().add(JokeRefreshed());
                      SharedPreferencesService.saveLocal(
                          "joke${state.currentJokeIndex}", isFunny);
                    },
                  );
                } else if (state is JokeLoadFailure) {
                  return Center(child: Text(state.error));
                }
                context.read<JokeBloc>().add(JokeRequested());
                return const SizedBox.shrink();
              },
            ),
          ),
          const BottomWidget()
        ],
      ),
    );
  }
}

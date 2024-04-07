import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zens_assignment_flutter/utils/app_string.dart';
import '../data/repositories/joke_repository.dart';
import 'jokes_event.dart';
import 'jokes_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final JokeRepository jokeRepository;
  int currentJokeIndex = 0;

  JokeBloc({required this.jokeRepository}) : super(JokeInitial()) {
    on<JokeRequested>((event, emit) async {
      try {
        final jokes = jokeRepository.fetchJokes();
        emit(JokeLoadSuccess(jokes: jokes, currentJokeIndex: 0));
      } catch (error) {
        emit(JokeLoadFailure(error: error.toString()));
      }
    });

    on<JokeRefreshed>((event, emit) {
      final jokes = jokeRepository.fetchJokes();
      if (currentJokeIndex < jokes.length - 1) {
        currentJokeIndex += 1;
        emit(JokeLoadSuccess(jokes: jokes, currentJokeIndex: currentJokeIndex));
      } else {
        emit(JokeLoadFailure(error: AppString.loadJokeFail));
      }
    });
  }
}

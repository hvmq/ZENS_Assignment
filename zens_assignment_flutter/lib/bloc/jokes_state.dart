abstract class JokeState {}

class JokeInitial extends JokeState {}

class JokeLoadInProgress extends JokeState {}

class JokeLoadSuccess extends JokeState {
  final List<String> jokes;
  final int currentJokeIndex;

  JokeLoadSuccess({required this.jokes, required this.currentJokeIndex});
}

class JokeLoadFailure extends JokeState {
  final String error;

  JokeLoadFailure({required this.error});
}

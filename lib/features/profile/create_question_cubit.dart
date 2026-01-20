import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';

part 'create_question_state.dart';

class CreateQuestionCubit extends Cubit<CreateQuestionState> {
  final QuizRepository _quizRepository;

  CreateQuestionCubit(this._quizRepository) : super(CreateQuestionInitial());

  Future<void> fetchCategories() async {
    final result = _quizRepository.getCategories();
  }
}

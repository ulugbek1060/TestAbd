import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_question_state.dart';

class CreateQuestionCubit extends Cubit<CreateQuestionState> {
  CreateQuestionCubit() : super(CreateQuestionInitial());
}

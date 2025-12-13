import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';
import 'package:testabd/features/user_profile/user_profile_state.dart';
import 'package:testabd/main.dart';

@injectable
class UserProfileCubit extends Cubit<UserProfileState> {
  final AccountRepository _accountRepository;
  final QuizRepository _quizRepository;
  final String username;

  @factoryMethod
  UserProfileCubit.create(
    @factoryParam this.username,
    this._accountRepository,
    this._quizRepository,
  ) : super(UserProfileState()) {
    logger.d(username);
  }

  Future<void> loadUserDetail() async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _accountRepository.getUserProfile(username);
    result.fold(
      (error) {
        logger.e('Error:$error');
        emit(state.copyWith(isLoading: false, error: error.message));
      },
      (value) {
        logger.d('Loaded: $value');
        emit(state.copyWith(isLoading: false, profile: value));
        loadTopics(value.user?.id ?? 0);
      },
    );
  }

  Future<void> loadTopics(int userId) async {
    final result = await _quizRepository.getTopics(userId);
    result.fold((error) {

    }, (value) {
            
    });
  }
}

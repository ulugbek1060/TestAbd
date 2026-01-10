import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/core/utils/app_mode_service.dart';
import 'package:testabd/domain/account/account_repository.dart';
import 'package:testabd/domain/auth/auth_repository.dart';
import 'package:testabd/domain/quiz/quiz_repository.dart';
import 'package:testabd/features/profile/profile_state.dart';
import 'package:testabd/main.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepository _authRepository;
  final AppSettingsService _appModeService;
  final AccountRepository _accountRepository;
  final QuizRepository _quizRepository;
  final AppMessageHandler _messageHandler;

  late final StreamSubscription _themeSubscription;
  late final StreamSubscription _myInfoSubscription;

  ProfileCubit(
    this._authRepository,
    this._accountRepository,
    this._appModeService,
    this._quizRepository,
    this._messageHandler,
  ) : super(ProfileState()) {


    // listen the my info subscription
    _myInfoSubscription = _accountRepository.userInfoStream.listen((event) {
      // fetch user connections
      fetchConnections(event?.id);
      // emit state
      emit(state.copyWith(myInfoModel: event));
    });
  }

  Future<void> refresh() async {
    fetchUserInfo();
  }

  @override
  Future<void> close() {
    _themeSubscription.cancel();
    _myInfoSubscription.cancel();
    return super.close();
  }

  Future<void> fetchUserInfo() async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    
    await Future.delayed(Duration(milliseconds: 500));

    final result = await _accountRepository.fetchMyInfo();
    result.fold(
      (error) {
        _messageHandler.handleDialog(error);
      },
      (value) {
        // data fetched
      },
    );
    emit(state.copyWith(isLoading: false));
  }

  Future<void> fetchConnections(int? userId) async {
    if (userId == null) return;
    if (state.userConnectionsState.isLoading) return;

    emit(
      state.copyWith(
        userConnectionsState: state.userConnectionsState.copyWith(
          isLoading: true,
        ),
      ),
    );

    final result = await _accountRepository.getUserConnections(userId);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            userConnectionsState: state.userConnectionsState.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
        _messageHandler.handleDialog(error);
      },
      (value) {
        emit(
          state.copyWith(
            userConnectionsState: state.userConnectionsState.copyWith(
              isLoading: false,
              connections: value,
            ),
          ),
        );
      },
    );


  }

  Future<void> fetchQuestionBookmark() async {
    if (state.questionsBookmarkState.isLoading) return;

    emit(
      state.copyWith(
        questionsBookmarkState: state.questionsBookmarkState.copyWith(
          isLoading: true,
        ),
      ),
    );

    final result = await _quizRepository.getQuestionsBookmark();

    result.fold(
      (error) {
        emit(
          state.copyWith(
            questionsBookmarkState: state.questionsBookmarkState.copyWith(
              isLoading: false,
              error: error.message,
            ),
          ),
        );
        _messageHandler.handleDialog(error);
      },
      (value) {
        emit(
          state.copyWith(
            questionsBookmarkState: state.questionsBookmarkState.copyWith(
              isLoading: false,
              questionsBookmark: value,
            ),
          ),
        );
      },
    );
  }

  Future<void> fetchBlockQuizBookmark() async {
    // TODO fetch block quiz bookmark
  }

  Future<void> fetchCountries() async {
    // TODO fetch countries
  }

  Future<void> fetchRecent() async {
    // TODO fetch recent
  }
  // logout
  void logout() async {
    final result = await _authRepository.logout();
    result.fold(
      (error) {
        logger.e(error.message);
      },
      (_) {
        logger.d('Logout success');
      },
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';

part 'user_connection_state.freezed.dart';

@freezed
class UserConnectionState with _$UserConnectionState {
  const factory UserConnectionState({
    @Default(false) bool isLoading,
    @Default(UserConnectionsModel()) UserConnectionsModel connections,
    String? error,
  }) = _UserConnectionState;
}

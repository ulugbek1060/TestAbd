import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';

part 'profile_connection_state.freezed.dart';

@freezed
class ProfileConnectionState with _$ProfileConnectionState {
  const factory ProfileConnectionState({
    @Default(false) bool isLoading,
    @Default(UserConnectionsModel()) UserConnectionsModel connections,
    String? error,
  }) = _ProfileConnectionState;
}

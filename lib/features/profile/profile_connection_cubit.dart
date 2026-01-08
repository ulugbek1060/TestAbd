import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:testabd/features/profile/profile_connection_state.dart';


@injectable
class ProfileConnectionCubit extends Cubit<ProfileConnectionState> {
  ProfileConnectionCubit() : super(ProfileConnectionState());

  Future<void> load() async {}

  Future<void> refresh() async {}

  Future<void> onFollowUser(int? userId) async {}

}

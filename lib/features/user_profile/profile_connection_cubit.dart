import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_connection_state.dart';

class ProfileConnectionCubit extends Cubit<ProfileConnectionState> {
  ProfileConnectionCubit() : super(ProfileConnectionInitial());
}

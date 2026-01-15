import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edeit_profile_state.dart';

class EdeitProfileCubit extends Cubit<EdeitProfileState> {
  EdeitProfileCubit() : super(EdeitProfileInitial());
}

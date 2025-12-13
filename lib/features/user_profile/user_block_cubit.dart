import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_block_state.dart';

class UserBlockCubit extends Cubit<UserBlockState> {
  UserBlockCubit() : super(UserBlockInitial());
}

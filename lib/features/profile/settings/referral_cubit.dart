import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'referral_state.dart';

class ReferalCubit extends Cubit<ReferalState> {
  ReferalCubit() : super(ReferalInitial());
}

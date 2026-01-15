import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:testabd/core/utils/app_message_handler.dart';
import 'package:testabd/data/remote_source/account/account_source.dart';
import 'package:testabd/domain/account/account_repository.dart';

part 'referral_state.dart';

@injectable
class ReferralCubit extends Cubit<ReferralState> {
  final AccountRepository _accountRepository;
  final AppMessageHandler _appMessageHandler;

  ReferralCubit(this._accountRepository, this._appMessageHandler)
    : super(ReferalInitial());


  Future<void> fetchReferrals() async {
    _accountRepository.getReferralsList();
  }
}

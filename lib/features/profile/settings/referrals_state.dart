import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testabd/domain/account/entities/referral_list_model.dart';

part 'referrals_state.freezed.dart';

@freezed
class ReferralsState with _$ReferralsState {
  const factory ReferralsState({
    String? error,
    @Default(false) bool isLoading,
    @Default(null) ReferralListModel? referrals,
  }) = _ReferralsState;
}

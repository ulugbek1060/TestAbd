import 'package:equatable/equatable.dart';
import 'package:testabd/data/local_source/entities/my_info_db.dart';

class WeeklyTestCountModel extends Equatable {
  final int? dush;
  final int? sesh;
  final int? chor;
  final int? pay;
  final int? jum;
  final int? shan;
  final int? yak;

  const WeeklyTestCountModel({
    this.dush,
    this.sesh,
    this.chor,
    this.pay,
    this.jum,
    this.shan,
    this.yak,
  });

  static WeeklyTestCountDb toDb(WeeklyTestCountModel? model) {
    return WeeklyTestCountDb(
      dush: model?.dush,
      sesh: model?.sesh,
      chor: model?.chor,
      pay: model?.pay,
      jum: model?.jum,
      shan: model?.shan,
      yak: model?.yak,
    );
  }

  static WeeklyTestCountModel fromDb(WeeklyTestCountDb? dbModel) {
    return WeeklyTestCountModel(
      dush: dbModel?.dush,
      sesh: dbModel?.sesh,
      chor: dbModel?.chor,
      pay: dbModel?.pay,
      jum: dbModel?.jum,
      shan: dbModel?.shan,
      yak: dbModel?.yak,
    );
  }

  @override
  List<Object?> get props => [dush, sesh, chor, pay, jum, shan, yak];
}

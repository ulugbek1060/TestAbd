// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyInfoDbAdapter extends TypeAdapter<MyInfoDb> {
  @override
  final int typeId = 0;

  @override
  MyInfoDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyInfoDb(
      id: fields[0] as int?,
      country: fields[1] as CountryHiveModel?,
      region: fields[2] as RegionHiveModel?,
      district: fields[3] as DistrictHiveModel?,
      settlement: fields[4] as SettlementHiveModel?,
      categoriesOfInterest: (fields[5] as List?)?.cast<String>(),
      coinPercentage: fields[6] as double?,
      weeklyTestCount: fields[7] as WeeklyTestCountDb?,
      streakDay: fields[8] as int?,
      testsSolved: fields[9] as int?,
      correctCount: fields[10] as int?,
      wrongCount: fields[11] as int?,
      averageTime: fields[12] as double?,
      lastLogin: fields[13] as DateTime?,
      isSuperuser: fields[14] as bool?,
      username: fields[15] as String?,
      firstName: fields[16] as String?,
      lastName: fields[17] as String?,
      email: fields[18] as String?,
      isStaff: fields[19] as bool?,
      dateJoined: fields[20] as DateTime?,
      profileImage: fields[21] as String?,
      bio: fields[22] as String?,
      phoneNumber: fields[23] as String?,
      createdAt: fields[24] as DateTime?,
      isActive: fields[25] as bool?,
      role: fields[26] as String?,
      isPremium: fields[27] as bool?,
      isBadged: fields[28] as bool?,
      joinDate: fields[29] as DateTime?,
      level: fields[30] as String?,
      liveQuizScore: fields[31] as int?,
      isEmailVerified: fields[32] as bool?,
      coins: fields[33] as int?,
      referralCode: fields[34] as String?,
      telegramId: fields[35] as String?,
      invitedBy: fields[36] as dynamic,
      groups: (fields[37] as List?)?.cast<String>(),
      userPermissions: (fields[38] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, MyInfoDb obj) {
    writer
      ..writeByte(39)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.country)
      ..writeByte(2)
      ..write(obj.region)
      ..writeByte(3)
      ..write(obj.district)
      ..writeByte(4)
      ..write(obj.settlement)
      ..writeByte(5)
      ..write(obj.categoriesOfInterest)
      ..writeByte(6)
      ..write(obj.coinPercentage)
      ..writeByte(7)
      ..write(obj.weeklyTestCount)
      ..writeByte(8)
      ..write(obj.streakDay)
      ..writeByte(9)
      ..write(obj.testsSolved)
      ..writeByte(10)
      ..write(obj.correctCount)
      ..writeByte(11)
      ..write(obj.wrongCount)
      ..writeByte(12)
      ..write(obj.averageTime)
      ..writeByte(13)
      ..write(obj.lastLogin)
      ..writeByte(14)
      ..write(obj.isSuperuser)
      ..writeByte(15)
      ..write(obj.username)
      ..writeByte(16)
      ..write(obj.firstName)
      ..writeByte(17)
      ..write(obj.lastName)
      ..writeByte(18)
      ..write(obj.email)
      ..writeByte(19)
      ..write(obj.isStaff)
      ..writeByte(20)
      ..write(obj.dateJoined)
      ..writeByte(21)
      ..write(obj.profileImage)
      ..writeByte(22)
      ..write(obj.bio)
      ..writeByte(23)
      ..write(obj.phoneNumber)
      ..writeByte(24)
      ..write(obj.createdAt)
      ..writeByte(25)
      ..write(obj.isActive)
      ..writeByte(26)
      ..write(obj.role)
      ..writeByte(27)
      ..write(obj.isPremium)
      ..writeByte(28)
      ..write(obj.isBadged)
      ..writeByte(29)
      ..write(obj.joinDate)
      ..writeByte(30)
      ..write(obj.level)
      ..writeByte(31)
      ..write(obj.liveQuizScore)
      ..writeByte(32)
      ..write(obj.isEmailVerified)
      ..writeByte(33)
      ..write(obj.coins)
      ..writeByte(34)
      ..write(obj.referralCode)
      ..writeByte(35)
      ..write(obj.telegramId)
      ..writeByte(36)
      ..write(obj.invitedBy)
      ..writeByte(37)
      ..write(obj.groups)
      ..writeByte(38)
      ..write(obj.userPermissions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyInfoDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CountryHiveModelAdapter extends TypeAdapter<CountryHiveModel> {
  @override
  final int typeId = 1;

  @override
  CountryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountryHiveModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      code: fields[2] as String?,
      lat: fields[3] as double?,
      lon: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, CountryHiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.code)
      ..writeByte(3)
      ..write(obj.lat)
      ..writeByte(4)
      ..write(obj.lon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RegionHiveModelAdapter extends TypeAdapter<RegionHiveModel> {
  @override
  final int typeId = 2;

  @override
  RegionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RegionHiveModel(
      name: fields[0] as String?,
      lat: fields[1] as double?,
      lon: fields[2] as double?,
      country: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RegionHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.lon)
      ..writeByte(3)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DistrictHiveModelAdapter extends TypeAdapter<DistrictHiveModel> {
  @override
  final int typeId = 3;

  @override
  DistrictHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DistrictHiveModel(
      name: fields[0] as String?,
      lat: fields[1] as double?,
      lon: fields[2] as double?,
      region: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, DistrictHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.lon)
      ..writeByte(3)
      ..write(obj.region);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DistrictHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SettlementHiveModelAdapter extends TypeAdapter<SettlementHiveModel> {
  @override
  final int typeId = 4;

  @override
  SettlementHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SettlementHiveModel(
      name: fields[0] as String?,
      lat: fields[1] as double?,
      lon: fields[2] as double?,
      district: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, SettlementHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.lon)
      ..writeByte(3)
      ..write(obj.district);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettlementHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeeklyTestCountDbAdapter extends TypeAdapter<WeeklyTestCountDb> {
  @override
  final int typeId = 5;

  @override
  WeeklyTestCountDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeeklyTestCountDb(
      dush: fields[0] as int?,
      sesh: fields[1] as int?,
      chor: fields[2] as int?,
      pay: fields[3] as int?,
      jum: fields[4] as int?,
      shan: fields[5] as int?,
      yak: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, WeeklyTestCountDb obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.dush)
      ..writeByte(1)
      ..write(obj.sesh)
      ..writeByte(2)
      ..write(obj.chor)
      ..writeByte(3)
      ..write(obj.pay)
      ..writeByte(4)
      ..write(obj.jum)
      ..writeByte(5)
      ..write(obj.shan)
      ..writeByte(6)
      ..write(obj.yak);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeeklyTestCountDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

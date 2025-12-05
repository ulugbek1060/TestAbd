import 'package:testabd/data/remote_source/account/model/my_info_response.dart'
    hide WeeklyTestCount;
import 'package:testabd/data/remote_source/account/model/user_register_response.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/domain/auth/entities/register_model.dart';
import 'package:testabd/domain/quiz/entities/followed_quiz_model.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/domain/quiz/entities/quiz_user.dart';

import 'remote_source/account/model/notifications_response.dart';
import 'remote_source/quiz/responses/followed_quiz_response.dart';

extension UserMapper on UserRegisterResponse {
  RegisterModel toDomain() => RegisterModel(
    id: id,
    username: username,
    email: email,
    token: token,
    referralCode: referralCode,
  );
}

extension MyInfoMapper on MyInfoResponse {
  MyInfoModel toDomain() {
    return MyInfoModel(
      id: id,
      country: country,
      region: region,
      district: district,
      settlement: settlement,
      categoriesOfInterest: categoriesOfInterest,
      coinPercentage: coinPercentage.toDouble(),
      weeklyTestCount: WeeklyTestCount(
        dush: weeklyTestCount.monday,
        sesh: weeklyTestCount.tuesday,
        chor: weeklyTestCount.wednesday,
        pay: weeklyTestCount.thursday,
        jum: weeklyTestCount.friday,
        shan: weeklyTestCount.saturday,
        yak: weeklyTestCount.sunday,
      ),
      streakDay: streakDay,
      testsSolved: testsSolved,
      correctCount: correctCount,
      wrongCount: wrongCount,
      averageTime: averageTime.toDouble(),
      lastLogin: lastLogin != null ? DateTime.tryParse(lastLogin!) : null,
      isSuperuser: isSuperuser,
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      isStaff: isStaff,
      dateJoined: dateJoined != null ? DateTime.tryParse(dateJoined!) : null,
      profileImage: profileImage,
      bio: bio,
      phoneNumber: phoneNumber,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      isActive: isActive,
      role: role,
      isPremium: isPremium,
      isBadged: isBadged,
      joinDate: joinDate != null ? DateTime.tryParse(joinDate!) : null,
      level: level,
      liveQuizScore: liveQuizScore,
      isEmailVerified: isEmailVerified,
      coins: coins,
      referralCode: referralCode,
      telegramId: telegramId,
      invitedBy: invitedBy,
      groups: groups,
      userPermissions: userPermissions,
    );
  }
}

extension NotificationMapper on NotificationsResponse {
  NotificationModel toDomain() {
    return NotificationModel(
      id: id,
      verb: verb,
      message: message,
      actor: actor,
      contentType: contentType,
      objectId: objectId,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      isRead: isRead,
    );
  }
}

extension FollowedQuizMapper on FollowedQuizResponse {
  FollowedQuizModel toDomain() {
    return FollowedQuizModel(
      count: count,
      next: next,
      previous: previous,
      results: results
          .map(
            (e) => QuizItem(
              id: e.id,
              test: e.test,
              testTitle: e.testTitle,
              questionText: e.questionText,
              questionType: e.questionType,
              orderIndex: e.orderIndex,
              media: e.media,
              answers: e.answers
                  .map(
                    (a) => AnswerModel(
                      id: a.id,
                      letter: a.letter,
                      answerText: a.answerText,
                      isCorrect: a.isCorrect,
                    ),
                  )
                  .toList(),
              testDescription: e.testDescription,
              correctAnswerText: e.correctAnswerText,
              answerLanguage: e.answerLanguage,
              correctCount: e.correctCount,
              wrongCount: e.wrongCount,
              difficultyPercentage: e.difficultyPercentage,
              userAttemptCount: e.userAttemptCount,
              user: e.user != null
                  ? QuizUser(
                      id: e.user!.id,
                      username: e.user!.username,
                      profileImage: e.user!.profileImage,
                      isBadged: e.user!.isBadged,
                      isPremium: e.user!.isPremium,
                      isFollowing: e.user!.isFollowing,
                    )
                  : null,
              createdAt: e.createdAt,
              roundImage: e.roundImage,
              isBookmarked: e.isBookmarked,
              isFollowing: e.isFollowing,
              category: e.category,
            ),
          )
          .toList(),
    );
  }
}

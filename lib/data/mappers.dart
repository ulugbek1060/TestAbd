import 'package:testabd/data/local_source/entities/my_info_db.dart';
import 'package:testabd/data/remote_source/account/model/my_info_response.dart'
    hide WeeklyTestCount;
import 'package:testabd/data/remote_source/auth/model/user_register_response.dart';
import 'package:testabd/data/remote_source/quiz/models/user_question_response.dart';
import 'package:testabd/domain/account/entities/leaderboard_model.dart';
import 'package:testabd/domain/account/entities/my_info_model.dart';
import 'package:testabd/domain/account/entities/notification_model.dart';
import 'package:testabd/domain/account/entities/user_connections_model.dart';
import 'package:testabd/domain/account/entities/user_profile_model.dart';
import 'package:testabd/domain/auth/entities/register_model.dart';
import 'package:testabd/domain/quiz/entities/answer_item.dart';
import 'package:testabd/domain/quiz/entities/check_answer_model.dart';
import 'package:testabd/domain/quiz/entities/global_quiz_model.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';

import '../domain/quiz/entities/topics_model.dart';
import 'remote_source/account/model/leaderboard_response.dart';
import 'remote_source/account/model/notifications_response.dart';
import 'remote_source/account/model/user_connections_response.dart';
import 'remote_source/account/model/user_profile_response.dart';
import 'remote_source/quiz/models/answer_response.dart';
import 'remote_source/quiz/models/followed_questions_response.dart';
import 'remote_source/quiz/models/topic_related_questions_response.dart';

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

extension FollowedQuizMapper on FollowedQuestionsResponse {
  GlobalQuizModel toDomain() {
    return GlobalQuizModel(
      count: count,
      next: next,
      previous: previous,
      results: results
          .map(
            (e) => QuizItem(
              id: e.id,
              test: e.test,
              testTitle: e.test_title,
              questionText: e.question_text,
              questionType: QuestionType.fromString(e.question_type),
              orderIndex: e.order_index,
              media: e.media,
              answers: e.answers
                  .map(
                    (a) => AnswerItem(
                      id: a.id,
                      letter: a.letter,
                      answerText: a.answer_text,
                      isCorrect: a.is_correct ?? false,
                    ),
                  )
                  .toList(),
              testDescription: e.test_description,
              correctAnswerText: e.correct_answer_text,
              answerLanguage: e.answer_language,
              correctCount: e.correct_count,
              wrongCount: e.wrong_count,
              difficultyPercentage: e.difficulty_percentage,
              userAttemptCount: e.user_attempt_count,
              user: e.user != null
                  ? User(
                      id: e.user!.id,
                      username: e.user!.username,
                      profileImage: e.user!.profile_image,
                      isBadged: e.user!.is_badged,
                      isPremium: e.user!.is_premium,
                      isFollowing: e.user!.is_following,
                    )
                  : null,
              createdAt: e.created_at,
              roundImage: e.round_image,
              isBookmarked: e.is_bookmarked,
              isFollowing: e.is_following,
              category: e.category,
            ),
          )
          .toList(),
    );
  }
}

extension AnswerMapper on AnswerResponse {
  CheckAnswerModel toDomain() {
    return CheckAnswerModel(
      id: id,
      questionId: questionId,
      writtenAnswer: writtenAnswer,
      isCorrect: isCorrect,
      duration: duration,
      feedback: feedback,
      createdAt: createdAt,
    );
  }
}

/// ===================UserProfileMapper========================================

extension UserProfileMapper on UserProfileResponse {
  UserProfileModel toDomain() {
    return UserProfileModel(
      user: user != null
          ? UserModel(
              id: user!.id,
              username: user!.username,
              firstName: user!.firstName,
              lastName: user!.lastName,
              bio: user!.bio,
              profileImage: user!.profileImage,
              followersCount: user!.followersCount,
              followingCount: user!.followingCount,
              isFollowing: user!.isFollowing,
              level: user!.level,
              joinDate: user!.joinDate != null
                  ? DateTime.tryParse(user!.joinDate!)
                  : null,
              coins: user!.coins,
            )
          : null,
      stats: stats != null
          ? UserStatsModel(
              totalTests: stats!.totalTests,
              correctAnswers: stats!.correctAnswers,
              wrongAnswers: stats!.wrongAnswers,
              accuracy: stats!.accuracy,
            )
          : null,
    );
  }
}

/// ===================TopicRelatedQuestionsMapper==============================

extension TopicRelatedQuestionsMapper on TopicRelatedQuestionsResponse {
  TopicsModel toDomain() {
    return TopicsModel(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toModel()).toList(),
    );
  }
}

extension TopicItemResponseMapper on TopicQuestionItemResponse {
  TopicItem toModel() {
    return TopicItem(
      id: id,
      user: user?.toModel(),
      title: title,
      description: description,
      category: category,
      visibility: visibility,
      accessMode: access_mode,
      participantRoles: participant_roles,
      maxParticipants: max_participants,
      startTime: start_time,
      endTime: end_time,
      minScoreToFinish: min_score_to_finish,
      participantCountToFinish: participant_count_to_finish,
      country: country,
      region: region,
      district: district,
      isRegionPremium: is_region_premium,
      createdAt: DateTime.parse(created_at ?? ''),
      difficultyPercentage: difficulty_percentage,
      totalQuestions: total_questions,
      questions: questions.map((e) => e.toModel()).toList(),
    );
  }
}

extension TopicQuestionResponseMapper on TopicQuestionResponse {
  TopicQuestion toModel() {
    return TopicQuestion(
      id: id,
      test: test,
      testTitle: test_title,
      questionText: question_text,
      questionType: question_type,
      orderIndex: order_index,
      media: media,
      answers: answers.map((e) => e.toModel()).toList(),
      testDescription: test_description,
      correctAnswerText: correct_answer_text,
      answerLanguage: answer_language,
      correctCount: correct_count,
      wrongCount: wrong_count,
      difficultyPercentage: difficulty_percentage,
      userAttemptCount: user_attempt_count,
      user: user?.toModel(),
      createdAt: created_at,
      roundImage: round_image,
      isBookmarked: is_bookmarked,
      isFollowing: is_following,
      category: category,
    );
  }
}

extension TopicAnswerResponseMapper on TopicAnswerResponse {
  TopicAnswer toModel() {
    return TopicAnswer(
      id: id,
      letter: letter,
      answerText: answer_text,
      isCorrect: is_correct,
    );
  }
}

extension TopicUserShortResponseMapper on TopicUserShortResponse {
  TopicUserShort toModel() {
    return TopicUserShort(
      id: id,
      username: username,
      profileImage: profile_image,
      isBadged: is_badged,
      isPremium: is_premium,
      isFollowing: is_following,
    );
  }
}

extension UserQuestionResponseX on UserQuestionResponse {
  QuizItem toDomain() {
    return QuizItem(
      id: id,
      test: test,
      testTitle: test_title,
      questionText: question_text,
      questionType: QuestionType.fromString(question_type),
      orderIndex: order_index,
      media: media,
      answers: answers
          .map(
            (a) => AnswerItem(
              id: a.id,
              letter: a.letter,
              answerText: a.answer_text,
              isCorrect: a.is_correct ?? false,
            ),
          )
          .toList(),
      testDescription: test_description,
      correctAnswerText: correct_answer_text,
      answerLanguage: answer_language,
      correctCount: correct_count,
      wrongCount: wrong_count,
      difficultyPercentage: difficulty_percentage,
      userAttemptCount: user_attempt_count,
      user: user != null
          ? User(
              id: user!.id,
              username: user!.username,
              profileImage: user!.profile_image,
              isBadged: user!.is_badged,
              isPremium: user!.is_premium,
              isFollowing: user!.is_following,
            )
          : null,
      createdAt: DateTime.parse(created_at ?? ''),
      roundImage: round_image,
      isBookmarked: is_bookmarked,
      isFollowing: is_following,
      category: category,
    );
  }
}

///======================= user connections mapper =============================
extension UserConnectionsMapper on UserConnectionsResponse {
  UserConnectionsModel toDomain() {
    return UserConnectionsModel(
      followers: followers
          .map(
            (e) => UserConnectionModel(
              id: e.id ?? 0,
              username: e.username ?? '',
              firstName: e.first_name ?? '',
              lastName: e.last_name ?? '',
              profileImage: e.profile_image,
              isFollowing: e.is_following ?? false,
            ),
          )
          .toList(),
      following: following
          .map(
            (e) => UserConnectionModel(
              id: e.id ?? 0,
              username: e.username ?? '',
              firstName: e.first_name ?? '',
              lastName: e.last_name ?? '',
              profileImage: e.profile_image,
              isFollowing: e.is_following ?? false,
            ),
          )
          .toList(),
    );
  }
}

/// ====================== Leaderboard mapper ==================================

extension LeaderboardResponseMapper on LeaderboardResponse {
  LeaderboardModel toDomain() {
    return LeaderboardModel(
      count: count ?? 0,
      next: next,
      previous: previous,
      users: results.map((e) => e.toModel()).toList(),
    );
  }
}

extension LeaderboardUserResponseMapper on LeaderboardUserResponse {
  LeaderboardUser toModel() {
    return LeaderboardUser(
      id: id ?? 0,
      username: username ?? '',
      profileImage: profile_image,
      createdTests: created_tests ?? 0,
      coins: coins ?? 0,
      todayRank: today_rank ?? 0,
      yesterdayRank: yesterday_rank ?? 0,
      rankChange: rank_change,
      rankChangeValue: rank_change_value ?? 0,
      testsSolved: tests_solved ?? 0,
      avgTime: avg_time ?? 0.0,
      followers: followers ?? 0,
      following: following ?? 0,
      isFollowing: is_following ?? false,
    );
  }
}

/// ====================== User Info Mapper ==================================
extension MyInfoModelX on MyInfoModel {
  MyInfoDb toHiveModel() {
    return MyInfoDb(
      id: id,
      country: country,
      region: region,
      district: district,
      settlement: settlement,
      categoriesOfInterest: categoriesOfInterest?.cast<String>(),
      coinPercentage: coinPercentage,
      weeklyTestCount: weeklyTestCount?.toHiveModel(),
      streakDay: streakDay,
      testsSolved: testsSolved,
      correctCount: correctCount,
      wrongCount: wrongCount,
      averageTime: averageTime,
      lastLogin: lastLogin,
      isSuperuser: isSuperuser,
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      isStaff: isStaff,
      dateJoined: dateJoined,
      profileImage: profileImage,
      bio: bio,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
      isActive: isActive,
      role: role,
      isPremium: isPremium,
      isBadged: isBadged,
      joinDate: joinDate,
      level: level,
      liveQuizScore: liveQuizScore,
      isEmailVerified: isEmailVerified,
      coins: coins,
      referralCode: referralCode,
      telegramId: telegramId,
      invitedBy: invitedBy,
      groups: groups?.cast<String>(),
      userPermissions: userPermissions?.cast<String>(),
    );
  }
}

extension WeeklyTestCountX on WeeklyTestCount {
  WeeklyTestCountDb toHiveModel() {
    return WeeklyTestCountDb(
      dush: dush,
      sesh: sesh,
      chor: chor,
      pay: pay,
      jum: jum,
      shan: shan,
      yak: yak,
    );
  }
}

extension MyInfoHiveModelX on MyInfoDb {
  MyInfoModel toDomain() {
    return MyInfoModel(
      id: id,
      country: country,
      region: region,
      district: district,
      settlement: settlement,
      categoriesOfInterest: categoriesOfInterest,
      coinPercentage: coinPercentage,
      weeklyTestCount: weeklyTestCount?.toDomain(),
      streakDay: streakDay,
      testsSolved: testsSolved,
      correctCount: correctCount,
      wrongCount: wrongCount,
      averageTime: averageTime,
      lastLogin: lastLogin,
      isSuperuser: isSuperuser,
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      isStaff: isStaff,
      dateJoined: dateJoined,
      profileImage: profileImage,
      bio: bio,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
      isActive: isActive,
      role: role,
      isPremium: isPremium,
      isBadged: isBadged,
      joinDate: joinDate,
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

extension WeeklyTestCountHiveModelX on WeeklyTestCountDb {
  WeeklyTestCount toDomain() {
    return WeeklyTestCount(
      dush: dush,
      sesh: sesh,
      chor: chor,
      pay: pay,
      jum: jum,
      shan: shan,
      yak: yak,
    );
  }
}
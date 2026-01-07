import 'package:testabd/data/remote_source/quiz/models/bookmark_questions_response.dart';
import 'package:testabd/domain/entity/category_model.dart';
import 'package:testabd/domain/entity/question_detail_model.dart';
import 'package:testabd/domain/entity/user_item_model.dart';

class QuestionsBookmarkModel {
  final int? count;
  final String? next;
  final String? previous;
  final List<BookmarkedQuizItem> results;

  const QuestionsBookmarkModel({
    this.count,
    this.results = const [],
    this.next,
    this.previous,
  });

  static QuestionsBookmarkModel fromResponse(
    BookmarkQuestionsResponse response,
  ) {
    return QuestionsBookmarkModel(
      count: response.count,
      next: response.next,
      previous: response.previous,
      results: response.results
          .map(
            (e) => BookmarkedQuizItem(
              id: e.id,

              // user
              user: UserItemModel(
                id: e.user?.id,
                username: e.user?.username,
                profileImage: e.user?.profileImage,
                isBadged: e.user?.isBadged,
                isPremium: e.user?.isPremium,
                isFollowing: e.user?.isFollowing,
              ),

              // question detail
              questionDetail: QuestionDetailModel(
                id: e.questionDetail?.id,
                questionText: e.questionDetail?.questionText,
                questionType: e.questionDetail?.questionType,
                difficultyPercentage: e.questionDetail?.difficultyPercentage
                    ?.toDouble(),
                createdAt: DateTime.tryParse(e.questionDetail?.createdAt ?? ''),
                testTitle: e.questionDetail?.testTitle,
                category: CategoryModel(
                  id: e.questionDetail?.category?.id,
                  totalTests: e.questionDetail?.category?.totalTests,
                  totalQuestions: e.questionDetail?.category?.totalTests,
                  title: e.questionDetail?.category?.title,
                  slug: e.questionDetail?.category?.slug,
                  description: e.questionDetail?.category?.description,
                  emoji: e.questionDetail?.category?.emoji,
                  image: e.questionDetail?.category?.image,
                ),
              ),
              createdAt: DateTime.tryParse(e.createdAt ?? ''),
            ),
          )
          .toList(),
    );
  }
}

class BookmarkedQuizItem {
  final int? id;
  final UserItemModel? user;
  final QuestionDetailModel? questionDetail;
  final DateTime? createdAt;

  const BookmarkedQuizItem({
    this.id,
    this.user,
    this.questionDetail,
    this.createdAt,
  });
}

import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/utils/formatters.dart';
import 'package:testabd/domain/quiz/entities/answer_item.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/features/home/followed_quiz_cubit.dart';
import 'package:testabd/main.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowedQuizCubit, FollowedQuizState>(
      builder: (context, state) {
        return SliverList(
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            final quiz = state.questions[index];
            return QuestionCardItem(quiz: quiz);
          }, childCount: state.questions.length),
        );
      },
    );
  }
}

class QuestionCardItem extends StatelessWidget {
  final QuizItem quiz;

  const QuestionCardItem({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Container(
      /// card container height
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        /// card background image
        image: DecorationImage(
          image: NetworkImage(quiz.roundImage ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            /// header of the card
            Row(
              children: [
                // circle image
                _HeaderUserImage(
                  imageUrl: quiz.user?.profileImage,
                  username: quiz.user?.username ?? '',
                  size: 40,
                ),

                SizedBox(width: 6),

                // username and date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      capitalize(quiz.user?.username),
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                    Text(
                      formatDate(quiz.createdAt),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            /// Quiz sections question and answers
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// quiz
                  Flexible(
                    child: Text(
                      quiz.questionText ?? '',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ),

                  /// space
                  SizedBox(height: 16),

                  /// answers
                  _AnswersList(
                    questionId: quiz.id,
                    answers: quiz.answers,
                    questionType: quiz.questionType,
                    myAnswersId: quiz.myAnswersId,
                    isCorrect: quiz.isCorrect,
                    isCompleted: quiz.isCorrect,
                  ),
                ],
              ),
            ),

            /// divider
            Divider(color: AppColors.lowEmphasized),

            /// question information
            _BottomQuestionInformation(
              correctCount: quiz.correctCount?.toString() ?? '',
              wrongCount: quiz.wrongCount?.toString() ?? '',
              title: quiz.testTitle ?? '',
              description: quiz.testDescription ?? '',
              onShare: () {},
              onSave: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _AnswersList extends StatelessWidget {
  final int? questionId;
  final List<AnswerItem> answers;
  final List<int>? myAnswersId;
  final QuestionType? questionType;
  final bool isCorrect;
  final bool isCompleted;

  const _AnswersList({
    super.key,
    required this.questionId,
    required this.answers,
    required this.myAnswersId,
    required this.questionType,
    required this.isCorrect,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FollowedQuizCubit>();
    switch (questionType) {
      case QuestionType.multiple:
        return MultipleAnswerCard(
          answers: answers,
          myAnswersId: myAnswersId,
          isCorrect: isCorrect,
          onItemTap: (answerId) => cubit.setAnswer(answerId),
          onSubmitTap: (answerIds) =>
              cubit.submitAnswer(questionId!, answerIds),
        );
      case QuestionType.single:
        return SingleAnswerCard(
          answers: answers,
          myAnswersId: myAnswersId,
          isCorrectAnswer: isCorrect,
          onSubmitTap: (answerId) =>
              cubit.submitAnswer(questionId!, [answerId ?? -1]),
        );
      case QuestionType.trueFalse:
        return TrueFalseAnswerCard(
          answers: answers,
          myAnswersId: myAnswersId,
          isCorrectAnswer: isCorrect,
          onSubmitTap: (answerId) =>
              cubit.submitAnswer(questionId!, [answerId ?? -1]),
        );
      default:
        return SingleAnswerCard(
          answers: answers,
          myAnswersId: myAnswersId,
          isCorrectAnswer: isCorrect,
          onSubmitTap: (answerId) =>
              cubit.submitAnswer(questionId!, [answerId ?? -1]),
        );
    }
  }
}

class MultipleAnswerCard extends StatelessWidget {
  final List<AnswerItem> answers;
  final List<int>? myAnswersId;
  final bool isCorrect;
  final void Function(int? answerId) onItemTap;
  final void Function(List<int> answers) onSubmitTap;

  const MultipleAnswerCard({
    super.key,
    required this.answers,
    required this.myAnswersId,
    required this.isCorrect,
    required this.onItemTap,
    required this.onSubmitTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: answers.map((e) {
        return InkWell(
          onTap: () => onItemTap(e.id),
          child: _BlurContainer(
            borderRadius: 16,
            borderColor: Colors.white,
            child: Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    e.answerText ?? '',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: Colors.white),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  bool checkAnswers(int? answerId) {
    if (myAnswersId == null) return false;
    if (myAnswersId!.isEmpty) return false;
    if (myAnswersId!.contains(answerId)) return true;
    return false;
  }
}

class SingleAnswerCard extends StatelessWidget {
  final List<AnswerItem> answers;
  final List<int>? myAnswersId;
  final bool isCorrectAnswer;
  final void Function(int? answerId) onSubmitTap;

  const SingleAnswerCard({
    super.key,
    required this.answers,
    required this.myAnswersId,
    required this.isCorrectAnswer,
    required this.onSubmitTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: answers.map((e) {
        final isCorrect = checkAnswers(e.id) && isCorrectAnswer;
        return InkWell(
          onTap: () => onSubmitTap(e.id),
          child: _BlurContainer(
            borderRadius: 16,
            borderColor: checkAnswers(e.id) ? Colors.green : Colors.white,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: isCorrect
                      ? Icon(Icons.check, color: Colors.green)
                      : Text(
                          e.letter ?? '',
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(color: Colors.white),
                        ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    e.answerText ?? '',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: Colors.white),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  bool checkAnswers(int? answerId) {
    if (myAnswersId == null) return false;
    if (myAnswersId!.isEmpty) return false;
    if (myAnswersId!.contains(answerId)) return true;
    return false;
  }
}

class TrueFalseAnswerCard extends StatelessWidget {
  final List<AnswerItem> answers;
  final List<int>? myAnswersId;
  final bool isCorrectAnswer;
  final void Function(int? answerId) onSubmitTap;

  const TrueFalseAnswerCard({
    super.key,
    required this.answers,
    required this.myAnswersId,
    required this.isCorrectAnswer,
    required this.onSubmitTap,
  });

  @override
  Widget build(BuildContext context) {
    logger.d(myAnswersId);
    return Row(
      mainAxisSize: MainAxisSize.max,
      spacing: 16,
      children: answers.mapIndexed((index, e) {
        final isCorrect = checkAnswers(e.id) && isCorrectAnswer;
        return Expanded(
          child: InkWell(
            onTap: () => onSubmitTap(e.id),
            child: _BlurContainer(
              borderRadius: 16,
              borderColor: checkAnswers(e.id) ? Colors.green : Colors.white,
              child: Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (index == 0)
                    Icon(
                      isCorrect ? Icons.check_circle : Icons.thumb_up_rounded,
                      color: Colors.green,
                    ),
                  if (index == 1)
                    Icon(
                      isCorrect ? Icons.check_circle : Icons.thumb_down_rounded,
                      color: isCorrect ? Colors.green : Colors.red,
                    ),
                  Text(
                    e.answerText ?? '',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: Colors.white),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  bool checkAnswers(int? answerId) {
    if (myAnswersId == null) return false;
    if (myAnswersId!.isEmpty) return false;
    if (myAnswersId!.contains(answerId)) return true;
    return false;
  }
}

class _HeaderUserImage extends StatelessWidget {
  final String? imageUrl;
  final String username;
  final double size;
  final double borderWidth;
  final Color borderColor;

  const _HeaderUserImage({
    super.key,
    this.imageUrl,
    required this.username,
    this.size = 50.0,
    this.borderWidth = 2.0,
    this.borderColor = Colors.white,
  });

  String _getInitial() {
    if (username.isEmpty) return '';
    return username[0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        color: borderColor, // Border color
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: (size - borderWidth * 2) / 2,
        backgroundColor: Colors.grey.shade300,
        backgroundImage: (imageUrl != null && imageUrl!.isNotEmpty)
            ? NetworkImage(imageUrl!)
            : null,
        child: (imageUrl == null || imageUrl!.isEmpty)
            ? Text(
                _getInitial(),
                style: TextStyle(
                  fontSize: (size - borderWidth * 2) / 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            : null,
      ),
    );
  }
}

class _BlurContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final Color borderColor;
  final double blurX;
  final double blurY;
  final double opacity;

  const _BlurContainer({
    required this.child,
    this.borderRadius = 16,
    this.borderColor = Colors.white,
    this.blurX = 10,
    this.blurY = 10,
    this.opacity = 0.15,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurX, sigmaY: blurY),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor),
            color: Colors.white.withOpacity(opacity),
          ),
          child: child,
        ),
      ),
    );
  }
}

class _BottomQuestionInformation extends StatelessWidget {
  final String correctCount;
  final String wrongCount;
  final String title;
  final String description;
  final Function() onShare;
  final Function() onSave;

  const _BottomQuestionInformation({
    super.key,
    required this.correctCount,
    required this.wrongCount,
    required this.title,
    required this.description,
    required this.onShare,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // difficulty percentage
            if (correctCount.isNotEmpty)
              Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green),
                  const SizedBox(width: 4),
                  Text(
                    correctCount,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            const SizedBox(width: 8),

            if (wrongCount.isNotEmpty)
              Row(
                children: [
                  Icon(Icons.cancel, color: Colors.red),
                  const SizedBox(width: 4),
                  Text(
                    wrongCount,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ],
              ),

            Spacer(),

            // share buttons
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share, color: Colors.white),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border_rounded, color: Colors.white),
            ),
          ],
        ),
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.white),
        ),
        Text(
          description,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}

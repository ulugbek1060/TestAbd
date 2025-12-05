import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/utils/app_assets.dart';
import 'package:testabd/core/utils/formatters.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/domain/quiz/entities/quiz_item.dart';
import 'package:testabd/features/home/followed_quiz_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<FollowedQuizCubit>()..loadQuiz()),
      ],
      child: _View(),
    );
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_shouldLoadNextPage()) {
      context.read<FollowedQuizCubit>().loadQuiz();
    }
  }

  bool _shouldLoadNextPage() {
    final state = context.read<FollowedQuizCubit>().state;
    if (state.isLoading || state.isLastPage) return false;
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return maxScroll - currentScroll <= _scrollThreshold;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          /// Appbar
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('TestAbd'),
            centerTitle: false,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: AssetImage(AppImages.logo)),
            ),
            actions: [
              Text('Meroschi'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_rounded),
              ),
            ],
          ),

          /// Stories Section
          SliverToBoxAdapter(child: StoriesSection()),

          /// Posts Section
          _PostSectionWidget(),
        ],
      ),
    );
  }
}

class _PostSectionWidget extends StatelessWidget {
  const _PostSectionWidget();

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
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(quiz.roundImage ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header of the card
            Row(
              children: [
                // circle image
                UserImageWidget(
                  imageUrl: quiz.user?.profileImage,
                  username: quiz.user?.username ?? '',
                  size: 50,
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

            SizedBox(height: 16),

            // quiz
            Text(
              quiz.questionText ?? '',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: Colors.white),
            ),

            SizedBox(height: 16),

            // answers
            ...quiz.answers.map((e) {
              return Row(
                children: [
                  CircleAvatar(
                    backgroundColor: e.isCorrect! ? Colors.green : Colors.red,
                    child: Text(
                      e.letter ?? '',
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    e.answerText ?? '',
                    maxLines: 2,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class UserImageWidget extends StatelessWidget {
  final String? imageUrl;
  final String username;
  final double size;
  final double borderWidth;
  final Color borderColor;

  const UserImageWidget({
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

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      height: 80,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: CircleAvatar(backgroundImage: AssetImage(AppImages.logo)),
          ),
        ],
      ),
    );
  }
}

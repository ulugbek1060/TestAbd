import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/features/home/followed_quiz_cubit.dart';
import 'package:testabd/features/home/widgets/posts_widget.dart';
import 'package:testabd/features/home/widgets/stories_widget.dart';
import 'package:testabd/router/app_router.dart';

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
            actions: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide.none,
                ),
                onPressed: () {
                  context.push(AppRouter.leaderboard);
                },
                child: Text('meroschi'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none_rounded),
              ),
            ],
          ),

          /// Stories Section
          StoriesWidget(),

          /// Posts Section
          PostsWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testabd/core/utils/app_assets.dart';
import 'package:testabd/di/app_config.dart';
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
    final cubit = context.read<FollowedQuizCubit>();
    return BlocBuilder<FollowedQuizCubit, FollowedQuizState>(
      builder: (context, state) {
        return SliverList(
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            final quiz = state.questions[index];
            return Container(
              color: index % 2 == 0 ? Colors.blueAccent : Colors.lightBlue,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(
                child: Text(
                  'Item ${quiz.questionText}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          }, childCount: state.questions.length),
        );
      },
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

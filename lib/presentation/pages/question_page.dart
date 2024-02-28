import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/core/extensions/extensions.dart';
import 'package:lat_htauk_bay_din/data/data.dart';
import 'package:lat_htauk_bay_din/presentation/presentation.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class QuestionPage extends StatelessWidget {
  final QAModel qaModel;
  const QuestionPage({super.key, required this.qaModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: QuestionPageBody(
        qaModel: qaModel,
      ),
    );
  }
}

class QuestionPageBody extends StatefulWidget {
  final QAModel qaModel;
  const QuestionPageBody({super.key, required this.qaModel});

  @override
  State<QuestionPageBody> createState() => _QuestionPageBodyState();
}

class _QuestionPageBodyState extends State<QuestionPageBody> {
  bool isSearchOpen = false;

  @override
  void initState() {
    context.read<SearchBloc>().add(SearchQuestion(
        query: "", questionList: widget.qaModel.questionList ?? []));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearchOpen
            ? TextFormField(
                autofocus: true,
                decoration: const InputDecoration(border: InputBorder.none),
                onChanged: (v) {
                  context.read<SearchBloc>().add(SearchQuestion(
                      query: v,
                      questionList: widget.qaModel.questionList ?? []));
                },
              )
            : Text(
                "မေးခွန်းများ",
                style: context.getTitleMedium,
              ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isSearchOpen = !isSearchOpen;
                  context.read<SearchBloc>().add(SearchQuestion(
                      query: "",
                      questionList: widget.qaModel.questionList ?? []));
                });
              },
              icon: Icon(isSearchOpen ? Icons.close : Icons.search))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10).copyWith(bottom: 0),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return ListView.separated(
              itemCount: state.questionList?.length ?? 0,
              itemBuilder: (context, index) {
                var question = state.questionList?[index];
                return ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      isSearchOpen = false;
                    });
                    context.read<SearchBloc>().add(SearchQuestion(
                        query: "",
                        questionList: widget.qaModel.questionList ?? []));
                    context.push(Routes.latHtaukPage, extra: question);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: context.secondary!),
                    ),
                    child: Text(
                      question?.questionName ?? "",
                      style: context.getBodyMedium,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 10.gap();
              },
            );
          },
        ),
      ),
    );
  }
}

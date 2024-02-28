import 'package:flutter/material.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/core/extensions/extensions.dart';
import 'package:lat_htauk_bay_din/domain/domain.dart';

class AnswerPage extends StatelessWidget {
  final Answer answer;
  const AnswerPage({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return AnswerPageBody(
      answer: answer,
    );
  }
}

class AnswerPageBody extends StatefulWidget {
  final Answer answer;

  const AnswerPageBody({super.key, required this.answer});

  @override
  State<AnswerPageBody> createState() => _AnswerPageBodyState();
}

class _AnswerPageBodyState extends State<AnswerPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.answer.answerResult ?? "",
              style: context.getTitleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

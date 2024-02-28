import 'package:go_router/go_router.dart';
import 'package:lat_htauk_bay_din/data/data.dart';
import 'package:lat_htauk_bay_din/presentation/presentation.dart';

import '../../domain/domain.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: Routes.questionPage,
      builder: (context, state) {
        return QuestionPage(
          qaModel: state.extra as QAModel,
        );
      },
    ),
    GoRoute(
      path: Routes.latHtaukPage,
      builder: (context, state) {
        return LatHtaukPage(
          question: state.extra as Question,
        );
      },
    ),
    GoRoute(
      path: Routes.answerPage,
      builder: (context, state) {
        return AnswerPage(
          answer: state.extra as Answer,
        );
      },
    ),
  ],
);

class Routes {
  static String questionPage = "/question";
  static String latHtaukPage = "/lat_htauk";
  static String answerPage = "/answerPage";
}

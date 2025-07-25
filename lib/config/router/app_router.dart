import 'package:go_router/go_router.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';
import 'package:ludycom_test/presentation/screens/detail_screen.dart';
import 'package:ludycom_test/presentation/screens/lading_screen.dart';

class AppRouter {
  final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const LadingScreen();
        },
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) {
          final catEntity = state.extra as CatEntity;
          return DetailScreen( catEntity: catEntity,);
        },
      ),
    ],
  );
}
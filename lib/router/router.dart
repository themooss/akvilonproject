import 'package:auto_route/auto_route.dart';
import 'package:akvilonproject/features/home/home.dart';
import 'package:akvilonproject/features/favorites/favorite.dart';
import 'package:akvilonproject/features/files/files.dart';
import 'package:akvilonproject/features/menu/menu.dart';
import 'package:akvilonproject/features/settings/settings.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(
            page: MenuRoute.page,
            path: 'menu',
          ),
          AutoRoute(page: FilesRoute.page, path: 'files'),
          AutoRoute(page: SettingsRoute.page, path: 'settings'),
          AutoRoute(page: FavoriteRoute.page, path: 'favorite'),
        ]),
      ];
}

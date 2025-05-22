import 'package:akvilonproject/router/router.dart';
import 'package:akvilonproject/ui/ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../const/text/text.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
        routes: const [
          MenuRoute(),
          FilesRoute(),
          FavoriteRoute(),
          SettingsRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
                backgroundColor: theme.scaffoldBackgroundColor,
                title: AppBarContainer(
                  text: screenNames[tabsRouter.activeIndex],
                ),
                centerTitle: true),
            body: child,
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: BottomNavigationBar(
                selectedItemColor: theme.primaryColor,
                unselectedItemColor: theme.hintColor,
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) => _openPage(index, tabsRouter),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu_book), label: "Меню"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.file_open), label: "Файлы"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: "Избранное"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: "Настройки")
                ],
              ),
            ),
          );
        });
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}

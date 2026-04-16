import 'package:friendzy_ui_app/View/screens/add.dart';
import 'package:friendzy_ui_app/View/screens/botton_nav_bar.dart';
import 'package:friendzy_ui_app/View/screens/connect.dart';
import 'package:friendzy_ui_app/View/screens/discover.dart';
import 'package:friendzy_ui_app/View/screens/home.dart';
import 'package:friendzy_ui_app/View/screens/matches.dart';
import 'package:friendzy_ui_app/View/screens/messages.dart';
import 'package:friendzy_ui_app/View/screens/welcome.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  
final GoRouter router =GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/',
    name: 'welcome',
    builder: (context, state) => WelcomeScreen()),
     GoRoute(path: '/home',
    name: 'home',
    builder: (context, state) => HomeScreen()),
    GoRoute(path: '/discover',
    name: 'discover',
    builder: (context, state) => DiscoverScreen()),
    GoRoute(path: '/add',
    name: 'add',
    builder: (context, state) => AddScreen()),
    GoRoute(path: '/matches',
    name: 'matches',
    builder: (context, state) => MatchesScreen()),
    GoRoute(path: '/messages',
    name: 'messages',
    builder: (context, state) => MessageScreen()),
    GoRoute(path: '/connect',
    name: 'connect',
    builder: (context, state) => ConnectScreen()),
    GoRoute(path: '/bottom_navigation_bar',
    name: 'bottomNavigationBar',
    builder: (context, state) => BottomNavigationBarScreen()),
  ]

);

}
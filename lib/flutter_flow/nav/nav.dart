import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const UserLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const UserLoginWidget(),
        ),
        FFRoute(
          name: 'user_login',
          path: '/userLogin',
          builder: (context, params) => const UserLoginWidget(),
        ),
        FFRoute(
          name: 'wb_prd_add',
          path: '/wbPrdAdd',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: WbPrdAddWidget(
              busType: params.getParam(
                'busType',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'wb_prd_list',
          path: '/wbPrdList',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: WbPrdListWidget(
              busEmail: params.getParam(
                'busEmail',
                ParamType.String,
              ),
              busType: params.getParam(
                'busType',
                ParamType.String,
              ),
              paramBusMob: params.getParam(
                'paramBusMob',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'wb_ord_add',
          path: '/wbOrdAdd',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: WbOrdAddWidget(
              prdID: params.getParam(
                'prdID',
                ParamType.int,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'wb_ord_upd',
          path: '/wbOrdUpd',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: WbOrdUpdWidget(
              ordID: params.getParam(
                'ordID',
                ParamType.int,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'user_profile',
          path: '/userProfile',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: UserProfileWidget(),
          ),
        ),
        FFRoute(
          name: 'wb_sup_list',
          path: '/wbSupList',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: WbSupListWidget(
              busType: params.getParam(
                'busType',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'user_bus_add',
          path: '/userBusAdd',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: UserBusAddWidget(),
          ),
        ),
        FFRoute(
          name: 'user_profile_type',
          path: '/userProfileType',
          builder: (context, params) => const NavBarPage(
            initialPage: '',
            page: UserProfileTypeWidget(),
          ),
        ),
        FFRoute(
          name: 'milk_scheduler',
          path: '/milkScheduler',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: MilkSchedulerWidget(
              prdID: params.getParam(
                'prdID',
                ParamType.int,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'srv_ord_del_schedule',
          path: '/srvOrdDelSchedule',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: SrvOrdDelScheduleWidget(
              paramOrdID: params.getParam(
                'paramOrdID',
                ParamType.int,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'srv_req_add',
          path: '/srvReqAdd',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: SrvReqAddWidget(
              paramBusEmail: params.getParam(
                'paramBusEmail',
                ParamType.String,
              ),
              paramBusType: params.getParam(
                'paramBusType',
                ParamType.String,
              ),
              paragBusName: params.getParam(
                'paragBusName',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'srv_req_dtl',
          path: '/srvReqDtl',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: SrvReqDtlWidget(
              paramReqID: params.getParam(
                'paramReqID',
                ParamType.int,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'srv_req_list',
          path: '/srvReqList',
          builder: (context, params) => const SrvReqListWidget(),
        ),
        FFRoute(
          name: 'icon',
          path: '/icon',
          builder: (context, params) => const IconWidget(),
        ),
        FFRoute(
          name: 'home_new',
          path: '/homeNew',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'home_new')
              : HomeNewWidget(
                  paramBusType: params.getParam(
                    'paramBusType',
                    ParamType.String,
                  ),
                ),
        ),
        FFRoute(
          name: 'Orders',
          path: '/orders',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Orders')
              : NavBarPage(
                  initialPage: 'Orders',
                  page: OrdersWidget(
                    paramBusType: params.getParam(
                      'paramBusType',
                      ParamType.String,
                    ),
                  ),
                ),
        ),
        FFRoute(
          name: 'location',
          path: '/location',
          builder: (context, params) => const LocationWidget(),
        ),
        FFRoute(
          name: 'glogin',
          path: '/glogin',
          builder: (context, params) => const GloginWidget(),
        ),
        FFRoute(
          name: 'Auth_test',
          path: '/authTest',
          builder: (context, params) => const AuthTestWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/userLogin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}

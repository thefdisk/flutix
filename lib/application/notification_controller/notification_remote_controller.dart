import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:awesome_notifications_fcm/awesome_notifications_fcm.dart';
import 'package:flutter/material.dart';

import '../../injection.dart';
import '../../presentation/routes/app_router.dart';

class NotificationController {
  static final NotificationController _instance =
      NotificationController._internal();

  factory NotificationController() => _instance;

  NotificationController._internal();

  String _firebaseToken = '';
  String get firebaseToken => _firebaseToken;

  String _nativeToken = '';
  String get nativeToken => _nativeToken;

  ReceivedAction? initialAction;

  static Future<void> initializeLocalNotifications({
    required bool debug,
  }) async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'This is channel for default notifications',
          importance: NotificationImportance.High,
        ),
      ],
      debug: debug,
    );

    _instance.initialAction =
        await AwesomeNotifications().getInitialNotificationAction(
      removeFromActionEvents: false,
    );
  }

  static Future<void> initializeRemoteNotifications({
    required bool debug,
  }) async {
    await AwesomeNotificationsFcm().initialize(
      onFcmTokenHandle: onFcmTokenHandle,
      onFcmSilentDataHandle: onFcmSilentDataHandle,
      onNativeTokenHandle: onNativeTokenHandle,
      licenseKeys: null,
      debug: debug,
    );
  }

  static Future<void> startListeningNotificationEvents() async {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
      onNotificationDisplayedMethod: onNotificationDisplayedMethod,
    );
  }

  static Future<void> getInitialNotificationAction() async {
    ReceivedAction? receivedAction =
        await AwesomeNotifications().getInitialNotificationAction(
      removeFromActionEvents: true,
    );

    if (receivedAction == null) return;

    debugPrint('Notification action launched app: $receivedAction');
  }

  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(
    ReceivedAction receivedAction,
  ) async {
    debugPrint('Notification clicked');
  }

  @pragma('vm:entry-point')
  static Future<void> onNotificationDisplayedMethod(
    ReceivedNotification receivedNotification,
  ) async {
    debugPrint('Notification displayed');
  }

  @pragma('vm:entry-point')
  static Future<void> onFcmTokenHandle(String token) async {
    debugPrint('FCM token $token');
    _instance._firebaseToken = token;
  }

  @pragma('vm:entry-point')
  static Future<void> onFcmSilentDataHandle(FcmSilentData silentData) async {
    debugPrint('"SilentData" : ${silentData.toString()}');

    if (silentData.createdLifeCycle != NotificationLifeCycle.Foreground) {
      debugPrint('BACKGROUND');
    } else {
      debugPrint('FOREGROUND');
    }
  }

  @pragma('vm:entry-point')
  static Future<void> onNativeTokenHandle(String token) async {
    debugPrint('Native token $token');
    _instance._nativeToken = token;
  }

  static Future<bool> displayNotificationRationale() async {
    bool userAuthorized = false;
    BuildContext context = getIt<AppRouter>().navigatorKey.currentContext!;

    await showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text(
            'Get Notified!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.notifications),
              SizedBox(height: 20),
              Text(
                'Allow Awesome Notifications to send you beautiful notifications!',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => context.popRoute(),
              child: Text(
                'Deny',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () async {
                userAuthorized = true;
                context.popRoute();
              },
              child: Text(
                'Allow',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.deepPurple),
              ),
            ),
          ],
        );
      },
    );
    return userAuthorized &&
        await AwesomeNotifications().requestPermissionToSendNotifications();
  }

  static Future<void> createNewNotification() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();

    if (!isAllowed) {
      isAllowed = await displayNotificationRationale();
    }

    if (!isAllowed) return;

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: -1, // -1 is replaced by a random number
        channelKey: 'alerts',
        title: 'Huston! The eagle has landed!',
        body:
            "A small step for a man, but a giant leap to Flutter's community!",
        bigPicture:
            'https://storage.googleapis.com/cms-storage-bucket/d406c736e7c4c57f5f61.png',
        largeIcon:
            'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
        notificationLayout: NotificationLayout.BigPicture,
        payload: {'notificationId': '1234567890'},
      ),
      actionButtons: [
        NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
        NotificationActionButton(
          key: 'REPLY',
          label: 'Reply Message',
          requireInputText: true,
          actionType: ActionType.SilentAction,
        ),
        NotificationActionButton(
          key: 'DISMISS',
          label: 'Dismiss',
          actionType: ActionType.DismissAction,
          isDangerousOption: true,
        )
      ],
    );
  }

  static Future<void> resetBadge() async {
    await AwesomeNotifications().resetGlobalBadge();
  }

  static Future<String> requestFirebaseToken() async {
    if (await AwesomeNotificationsFcm().isFirebaseAvailable) {
      try {
        return await AwesomeNotificationsFcm().requestFirebaseAppToken();
      } catch (exception) {
        debugPrint('$exception');
      }
    } else {
      debugPrint('Firebase is not available on this project');
    }
    return '';
  }
}

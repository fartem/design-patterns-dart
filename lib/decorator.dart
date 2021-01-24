abstract class Notification {
  void send();
}

class EmailNotification extends Notification {
  @override
  void send() => print('Send notification by email');
}

class SlackNotification extends Notification {
  @override
  void send() => print('Send notificaiton by Slack');
}

class PhoneNumberNotification extends Notification {
  @override
  void send() => print('Send notificaiton by phone number');
}

abstract class NotificationDecorator extends Notification {
  final Notification _notification;

  NotificationDecorator(this._notification);

  @override
  void send() => _notification.send();
}

class ErrorNotificationSenderDecorator extends NotificationDecorator {
  ErrorNotificationSenderDecorator(Notification notification) : super(notification);

  @override
  void send() {
    super.send();
    createErrorReport();
  }

  void createErrorReport() => print('Error report');
}

abstract class OSInfo {
  String osName();
}

class LinuxOSInfo extends OSInfo {
  @override
  String osName() => 'Linux';
}

class MacOSInfo extends OSInfo {
  @override
  String osName() => 'macOS';
}

class WindowsOSInfo extends OSInfo {
  @override
  String osName() => 'Microsoft Windows';
}

class UnknownOSInfo extends OSInfo {
  @override
  String osName() => 'Unknown';
}

class FactoryProducer {
  static OSInfo osInfo(Map<String, String> env) {
    final osName = env['os'];
    switch (osName) {
      case 'linux':
        return LinuxOSInfo();
      case 'mac':
        return MacOSInfo();
      case 'windows':
        return WindowsOSInfo();
    }
    return UnknownOSInfo();
  }
}

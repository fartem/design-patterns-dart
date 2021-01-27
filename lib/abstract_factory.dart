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

abstract class OSInfoFactory {
  OSInfo osInfo();
}

class LinuxOSInfoFactory extends OSInfoFactory {
  @override
  OSInfo osInfo() => LinuxOSInfo();
}

class MacOSInfoFactory extends OSInfoFactory {
  @override
  OSInfo osInfo() => MacOSInfo();
}

class WindowsOSInfoFactory extends OSInfoFactory {
  @override
  OSInfo osInfo() => WindowsOSInfo();
}

class UnknownOSInfoFactory extends OSInfoFactory {
  @override
  OSInfo osInfo() => UnknownOSInfo();
}

class OSInfoFactoryProducer {
  static OSInfoFactory osInfo(Map<String, String> env) {
    final osName = env['os'];
    switch (osName) {
      case 'linux':
        return LinuxOSInfoFactory();
      case 'mac':
        return MacOSInfoFactory();
      case 'windows':
        return WindowsOSInfoFactory();
    }
    return UnknownOSInfoFactory();
  }
}

import 'dart:io';

abstract class Project {
  void insertFiles(List<File> files);
}

abstract class Dependency {
  void loadToProject(Project project);
}

class GitDependency extends Dependency {
  final String _user;
  final String _password;

  GitDependency(this._user, this._password);

  @override
  void loadToProject(Project project) {
    print('Dependency loaded from Git with credentials: $_user:$_password');
    project.insertFiles([]);
  }
}

class NetworkDependency extends Dependency {
  final String _url;

  NetworkDependency(this._url);

  @override
  void loadToProject(Project project) {
    print('Dependency loaded from Network by url: $_url');
    project.insertFiles([]);
  }
}

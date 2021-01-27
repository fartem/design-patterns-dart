abstract class Command {
  void execute();
}

class CopyCommand extends Command {
  @override
  void execute() => print('Copy');
}

class PasteCommand extends Command {
  @override
  void execute() => print('Paste');
}

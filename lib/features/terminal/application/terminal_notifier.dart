import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tayfunucuncu/features/terminal/domain/line_type.dart';
import 'package:tayfunucuncu/features/terminal/shared/terminal_outputs.dart';

part 'terminal_notifier.g.dart';

@riverpod
class TerminalNotifier extends _$TerminalNotifier {
  @override
  List<TerminalLine> build() {

    final initialMessages = _convertToLines(TerminalOutputs.welcome);


    final whoAmIInfo = _convertToLines(TerminalOutputs.whoami);

    return [
      ...initialMessages,

      TerminalLine(text: "guest@tayfun-vps:~\$ whoami", type: LineType.command),

      ...whoAmIInfo,

      TerminalLine(text: ""),
    ];
  }

  void handleCommand(String command) {
    if (command.trim().isEmpty) return;


    state = [
      ...state,
      TerminalLine(
        text: "guest@tayfun-vps:~\$ $command",
        type: LineType.command,
      ),
    ];

    final cleanCommand = command.trim().toLowerCase();


    switch (cleanCommand) {
      case 'help':
        _addLines(TerminalOutputs.help);
      case 'whoami':
        _addLines(TerminalOutputs.whoami);
      case 'projects':
        _addLines(TerminalOutputs.projects);
      case 'skills':
        _addLines(TerminalOutputs.skills);
      case 'contact':
        _addLines(TerminalOutputs.contact);
      case 'clear':

        state = _convertToLines(TerminalOutputs.welcome);
      default:
        _addError(TerminalOutputs.notFound(command));
    }
  }


  void _addLines(List<String> texts) {
    final newLines = _convertToLines(texts);
    state = [...state, ...newLines];
  }


  void _addError(String text) {
    state = [...state, TerminalLine(text: text, type: LineType.error)];
  }


  List<TerminalLine> _convertToLines(List<String> texts) {
    return texts.map((t) => TerminalLine(text: t)).toList();
  }
}

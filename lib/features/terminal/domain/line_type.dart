enum LineType { command, output, error }

class TerminalLine {
  final String text;
  final LineType type;

  TerminalLine({required this.text, this.type = LineType.output});
}

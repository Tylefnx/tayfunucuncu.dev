import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tayfunucuncu/features/terminal/application/terminal_notifier.dart';
import 'package:tayfunucuncu/features/terminal/domain/line_type.dart';

class TerminalFocus extends StatelessWidget {
  const TerminalFocus({
    super.key,
    required this.terminalStyle,
    required Color purpleColor,
    required TextEditingController controller,
    required FocusNode focusNode,
    required Color greenColor,
    required this.ref,
  }) : _purpleColor = purpleColor,
       _controller = controller,
       _focusNode = focusNode,
       _greenColor = greenColor;

  final TextStyle terminalStyle;
  final Color _purpleColor;
  final TextEditingController _controller;
  final FocusNode _focusNode;
  final Color _greenColor;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TerminalLabel(terminalStyle: terminalStyle, purpleColor: _purpleColor),
        Expanded(
          child: TerminalShell(
            controller: _controller,
            focusNode: _focusNode,
            terminalStyle: terminalStyle,
            greenColor: _greenColor,
            ref: ref,
          ),
        ),
      ],
    );
  }
}

class TerminalHistory extends StatelessWidget {
  const TerminalHistory({
    super.key,
    required ScrollController scrollController,
    required this.history,
    required Color greenColor,
    required Color redColor,
    required this.terminalStyle,
  }) : _scrollController = scrollController,
       _greenColor = greenColor,
       _redColor = redColor;

  final ScrollController _scrollController;
  final List<TerminalLine> history;
  final Color _greenColor;
  final Color _redColor;
  final TextStyle terminalStyle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: history.length,
        itemBuilder: (context, index) {
          final line = history[index];

          // Satır rengini tipine göre belirle
          Color lineColor = _greenColor;
          if (line.type == LineType.command) lineColor = Colors.white;
          if (line.type == LineType.error) lineColor = _redColor;

          return SelectableText(
            // Kopyalanabilir metin
            line.text,
            style: terminalStyle.copyWith(color: lineColor),
          );
        },
      ),
    );
  }
}

class TerminalShell extends StatelessWidget {
  const TerminalShell({
    super.key,
    required TextEditingController controller,
    required FocusNode focusNode,
    required this.terminalStyle,
    required Color greenColor,
    required this.ref,
  }) : _controller = controller,
       _focusNode = focusNode,
       _greenColor = greenColor;

  final TextEditingController _controller;
  final FocusNode _focusNode;
  final TextStyle terminalStyle;
  final Color _greenColor;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      style: terminalStyle.copyWith(color: _greenColor),
      cursorColor: _greenColor,
      cursorWidth: 10, // Blok İmleç
      decoration: const InputDecoration(
        border: InputBorder.none,
        isDense: true,
        contentPadding: EdgeInsets.zero,
      ),
      onSubmitted: (value) {
        if (value.isEmpty) {
          _focusNode.requestFocus();
          return;
        }
        // Provider'a komutu gönder
        ref.read(terminalProvider.notifier).handleCommand(value);
        _controller.clear();
        _focusNode.requestFocus(); // Tekrar odaklan
      },
    );
  }
}

class TerminalLabel extends StatelessWidget {
  const TerminalLabel({
    super.key,
    required this.terminalStyle,
    required Color purpleColor,
  }) : _purpleColor = purpleColor;

  final TextStyle terminalStyle;
  final Color _purpleColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      "guest@tayfun-vps:~\$ ",
      style: terminalStyle.copyWith(color: _purpleColor),
    );
  }
}

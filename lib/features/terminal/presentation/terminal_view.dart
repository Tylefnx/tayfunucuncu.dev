import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/terminal/application/terminal_notifier.dart';
import 'package:tayfunucuncu/features/terminal/presentation/terminal_view_components.dart';


class TerminalView extends ConsumerStatefulWidget {
  const TerminalView({super.key});

  @override
  ConsumerState<TerminalView> createState() => _TerminalViewState();
}

class _TerminalViewState extends ConsumerState<TerminalView> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final history = ref.watch(terminalProvider);


    ref.listen(terminalProvider, (previous, next) {
      _scrollToBottom();
    });

    final TextStyle terminalStyle = AppFonts.firaCode(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Catppuccin.text,
    );


    return GestureDetector(
      onTap: () => _focusNode.requestFocus(),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TerminalHistory(
              scrollController: _scrollController,
              history: history,
              greenColor: Catppuccin.green,
              redColor: Catppuccin.red,
              terminalStyle: terminalStyle,
            ),

            const SizedBox(height: 10),


            TerminalFocus(
              terminalStyle: terminalStyle,
              purpleColor: Catppuccin.mauve,
              controller: _controller,
              focusNode: _focusNode,
              greenColor: Catppuccin.green,
              ref: ref,
            ),
          ],
        ),
      ),
    );
  }
}

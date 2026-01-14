import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tayfunucuncu/features/terminal/domain/line_type.dart';
import 'package:tayfunucuncu/features/terminal/shared/terminal_outputs.dart';

part 'terminal_notifier.g.dart';

@riverpod
class TerminalNotifier extends _$TerminalNotifier {
  @override
  List<TerminalLine> build() {
    // 1. Adım: Standart karşılama mesajlarını al
    final initialMessages = _convertToLines(TerminalOutputs.welcome);

    // 2. Adım: "Auto-Run" mantığı.
    // Site boş açılmasın diye 'whoami' komutu çalışmış gibi yapıyoruz.
    final whoAmIInfo = _convertToLines(TerminalOutputs.whoami);

    return [
      ...initialMessages,
      // Sanki kullanıcı yazmış gibi komut satırı ekle
      TerminalLine(text: "guest@tayfun-vps:~\$ whoami", type: LineType.command),
      // Komutun cevabını ekle
      ...whoAmIInfo,
      // Altına biraz boşluk bırak
      TerminalLine(text: ""),
    ];
  }

  void handleCommand(String command) {
    if (command.trim().isEmpty) return;

    // 1. Kullanıcının yazdığı komutu ekrana bas
    state = [
      ...state,
      TerminalLine(
        text: "guest@tayfun-vps:~\$ $command",
        type: LineType.command,
      ),
    ];

    final cleanCommand = command.trim().toLowerCase();

    // 2. Cevabı Output dosyasından çekip ekrana bas
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
        // Clear yapınca sadece bomboş sayfa gelmesin,
        // tekrar karşılama mesajı gelsin ki şık dursun.
        // (İstersen state = []; yaparak tamamen silebilirsin)
        state = _convertToLines(TerminalOutputs.welcome);
      default:
        _addError(TerminalOutputs.notFound(command));
    }
  }

  // --- Yardımcı Metotlar ---

  // String listesini TerminalLine listesine çevirip State'e ekler
  void _addLines(List<String> texts) {
    final newLines = _convertToLines(texts);
    state = [...state, ...newLines];
  }

  // Tek satır hata mesajı basar
  void _addError(String text) {
    state = [...state, TerminalLine(text: text, type: LineType.error)];
  }

  // String listesini TerminalLine listesine dönüştürür
  List<TerminalLine> _convertToLines(List<String> texts) {
    return texts.map((t) => TerminalLine(text: t)).toList();
  }
}

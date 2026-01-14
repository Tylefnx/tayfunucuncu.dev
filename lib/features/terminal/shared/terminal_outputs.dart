class TerminalOutputs {
  TerminalOutputs._();

  static const List<String> welcome = [
    "Welcome to Tayfun OS v1.0.0 (Gentoo/Linux)",
    "System initialized. All services running.",
    "Type 'help' to see available commands.",
    "",
  ];

  static const List<String> help = [
    "Available commands:",
    "  whoami    - About the developer",
    "  projects  - Show featured projects (Go/Flutter/AI)",
    "  skills    - Technical capabilities",
    "  contact   - Get email address",
    "  clear     - Clear the terminal",
  ];

  static const List<String> whoami = [
    "Tayfun Ucuncu | Full Stack Mobile Engineer",
    "Specialized in Flutter, Golang, and Linux Systems.",
    "Currently building scalable architectures and secure apps.",
  ];

  static const List<String> projects = [
    "Fetching projects from GitHub...",
    "1. GymLogger (Go + Python LSTM + Flutter)",
    "   - An AI-powered fitness tracking system.",
    "2. Terminal Portfolio (This Website)",
    "   - Self-hosted on Oracle VPS using Docker.",
  ];

  static const List<String> skills = [
    "• Languages: Dart, Go, Python, Bash",
    "• Frameworks: Flutter, Riverpod, Gin, LSTM",
    "• DevOps: Linux (Gentoo/Arch), Docker, Nginx",
  ];

  static const List<String> contact = ["Email: tayfunucuncu@gmail.com"];

  static String notFound(String command) => "bash: $command: command not found";
}

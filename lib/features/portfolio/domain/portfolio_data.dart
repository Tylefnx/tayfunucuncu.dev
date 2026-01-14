import 'package:tayfunucuncu/features/portfolio/domain/project.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart'; // t objesi için gerekli

class PortfolioData {
  const PortfolioData._();

  // 'get' kullanarak her çağrıldığında o anki dile göre veriyi çekmesini sağlıyoruz
  static List<Project> get projects => [
    Project(
      title: t.portfolio.projects.gymlogger.title,
      description: t.portfolio.projects.gymlogger.description,
      // Tech stack genelde çevrilmez (Özel isim), o yüzden hardcoded kalabilir
      techStack: ["Flutter", "Go", "Python", "PostgreSQL"],
      link: t.portfolio.projects.gymlogger.link,
    ),
    Project(
      title: t.portfolio.projects.portfolio.title,
      description: t.portfolio.projects.portfolio.description,
      techStack: ["Flutter Web", "Docker", "Nginx", "Linux"],
      link: t.portfolio.projects.portfolio.link,
    ),
    Project(
      title: t.portfolio.projects.budgetbuddy.title,
      description: t.portfolio.projects.budgetbuddy.description,
      techStack: ["Flutter", "Riverpod", "SQLite"],
      link: t.portfolio.projects.budgetbuddy.link,
    ),
    Project(
      title: t.portfolio.projects.bsl.title,
      description: t.portfolio.projects.bsl.description,
      techStack: ["C", "Linux", "TUI", "Bash"],
      link: t.portfolio.projects.bsl.link,
    ),
  ];
}

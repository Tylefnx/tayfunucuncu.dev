import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tayfunucuncu/features/portfolio/domain/portfolio_data.dart';
import 'project_accordion_item.dart';

class ProjectList extends HookWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = PortfolioData.projects;

    // Hangi index'in açık olduğunu tutan state.
    // Başlangıçta 0 (ilk proje) açık olsun veya -1 (hepsi kapalı).
    final expandedIndex = useState<int>(0);

    return Column(
      children: List.generate(projects.length, (index) {
        return ProjectAccordionItem(
          project: projects[index],
          isExpanded: expandedIndex.value == index,
          onTap: () {
            // Zaten açıksa kapat (-1 yap), değilse o indexi aç
            if (expandedIndex.value == index) {
              expandedIndex.value = -1;
            } else {
              expandedIndex.value = index;
            }
          },
        );
      }),
    );
  }
}

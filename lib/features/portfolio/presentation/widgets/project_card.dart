import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/portfolio/domain/project.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/project_card_header.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/project_tech_chip.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Catppuccin.surface0,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Catppuccin.surface1.withOpacity(0.6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Başlık Alanı
          ProjectCardHeader(
            title: project.title,
            hasLink: project.link != null,
          ),

          const SizedBox(height: 12),

          Text(
            project.description,
            maxLines: 4, // 4 satırdan fazlasını kes (Eşitlik bozulmasın diye)
            overflow: TextOverflow.ellipsis,
            style: AppFonts.firaCode(fontSize: 15, color: Catppuccin.subtext0),
          ),

          const Spacer(),

          // 3. Tech Stack
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: project.techStack
                .map((tech) => ProjectTechChip(label: tech))
                .toList(),
          ),
        ],
      ),
    );
  }
}

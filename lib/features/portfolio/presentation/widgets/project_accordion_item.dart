import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/portfolio/domain/project.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/project_tech_chip.dart';

class ProjectAccordionItem extends StatelessWidget {
  final Project project;
  final bool isExpanded;
  final VoidCallback onTap;

  const ProjectAccordionItem({
    super.key,
    required this.project,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(

          color: isExpanded ? Catppuccin.surface0 : Catppuccin.base,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isExpanded
                ? Catppuccin.green.withOpacity(0.5)
                : Catppuccin.surface1.withOpacity(0.3),
            width: isExpanded ? 1.5 : 1,
          ),
          boxShadow: isExpanded
              ? [
                  BoxShadow(
                    color: Catppuccin.green.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [

                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isExpanded ? Catppuccin.green : Catppuccin.surface2,
                    boxShadow: isExpanded
                        ? [
                            BoxShadow(
                              color: Catppuccin.green.withOpacity(0.6),
                              blurRadius: 6,
                            ),
                          ]
                        : [],
                  ),
                ),
                const SizedBox(width: 16),


                Expanded(
                  child: Text(
                    project.title,
                    style: AppFonts.firaCode(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isExpanded ? Catppuccin.text : Catppuccin.subtext0,
                    ),
                  ),
                ),


                AnimatedRotation(
                  turns: isExpanded ? 0.25 : 0,
                  duration: const Duration(milliseconds: 300),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: isExpanded ? Catppuccin.green : Catppuccin.surface2,
                  ),
                ),
              ],
            ),


            AnimatedCrossFade(
              firstChild: Container(height: 0),
              secondChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Divider(color: Catppuccin.surface1.withOpacity(0.5)),
                  const SizedBox(height: 20),


                  Text(
                    project.description,
                    style: AppFonts.firaCode(
                      fontSize: 14,
                      color: Catppuccin.subtext0,
                    ),
                  ),

                  const SizedBox(height: 20),


                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: project.techStack
                        .map((tech) => ProjectTechChip(label: tech))
                        .toList(),
                  ),


                  if (project.link != null) ...[
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton.icon(
                        onPressed: () async {
                          final uri = Uri.parse(project.link!);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri);
                          }
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Catppuccin.blue,
                        ),
                        icon: const Icon(Icons.link, size: 18),
                        label: Text(
                          "View Source",
                          style: AppFonts.firaCode(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}

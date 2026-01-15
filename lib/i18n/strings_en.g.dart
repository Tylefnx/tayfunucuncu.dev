///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn._(_root);
	late final TranslationsNavEn nav = TranslationsNavEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsAboutEn about = TranslationsAboutEn._(_root);
	late final TranslationsServicesEn services = TranslationsServicesEn._(_root);
	late final TranslationsContactEn contact = TranslationsContactEn._(_root);
	late final TranslationsPortfolioEn portfolio = TranslationsPortfolioEn._(_root);
	late final TranslationsTerminalEn terminal = TranslationsTerminalEn._(_root);
	late final TranslationsFooterEn footer = TranslationsFooterEn._(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'tayfunucuncu.dev'
	String get title => 'tayfunucuncu.dev';
}

// Path: nav
class TranslationsNavEn {
	TranslationsNavEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'About'
	String get about => 'About';

	/// en: 'Portfolio'
	String get portfolio => 'Portfolio';

	/// en: 'Services'
	String get services => 'Services';

	/// en: 'Contact'
	String get contact => 'Contact';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Available for Freelance Work'
	String get statusPill => 'Available for Freelance Work';

	/// en: 'Mobile Engineering Meets System Administration.'
	String get heroTitle => 'Mobile Engineering Meets\nSystem Administration.';

	/// en: 'I don't just build apps; I architect secure, stable, and optimized digital ecosystems. Specialized in Flutter, Golang, and Linux Systems.'
	String get heroDescription => 'I don\'t just build apps; I architect secure, stable, and optimized digital ecosystems. Specialized in Flutter, Golang, and Linux Systems.';

	/// en: 'View Projects'
	String get viewProjects => 'View Projects';

	/// en: 'Contact Me'
	String get contactMe => 'Contact Me';
}

// Path: about
class TranslationsAboutEn {
	TranslationsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAboutHeaderEn header = TranslationsAboutHeaderEn._(_root);
	late final TranslationsAboutMissionEn mission = TranslationsAboutMissionEn._(_root);
	late final TranslationsAboutVisionEn vision = TranslationsAboutVisionEn._(_root);
}

// Path: services
class TranslationsServicesEn {
	TranslationsServicesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What I Do'
	String get title => 'What I Do';

	late final TranslationsServicesItemsEn items = TranslationsServicesItemsEn._(_root);
}

// Path: contact
class TranslationsContactEn {
	TranslationsContactEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Get In Touch'
	String get title => 'Get In Touch';

	/// en: 'Ready to discuss your next high-performance project? Reach out via the form or social media.'
	String get subtitle => 'Ready to discuss your next high-performance project?\nReach out via the form or social media.';

	late final TranslationsContactFormEn form = TranslationsContactFormEn._(_root);
}

// Path: portfolio
class TranslationsPortfolioEn {
	TranslationsPortfolioEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPortfolioProjectsEn projects = TranslationsPortfolioProjectsEn._(_root);
}

// Path: terminal
class TranslationsTerminalEn {
	TranslationsTerminalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get welcome => [
		'Welcome to Tayfun OS v1.0.0 (Linux System)',
		'System initialized. Secure protocols active.',
		'Type \'help\' to see available commands.',
		'',
	];
	late final TranslationsTerminalHelpEn help = TranslationsTerminalHelpEn._(_root);
	List<String> get whoami => [
		'Tayfun Ucuncu | Full Stack Mobile Engineer',
		'Specialized in Flutter, Golang, and Linux Infrastructure.',
		'Expert in Network Security and Secure API design.',
	];
	late final TranslationsTerminalProjectsEn projects = TranslationsTerminalProjectsEn._(_root);
	List<String> get skills => [
		'• Languages: Dart, Go, Python, Bash',
		'• Systems: Linux, Docker, Nginx, Cloud Infra',
		'• Security: VPN Protocols, Proxy Configs, Network Security',
	];

	/// en: 'Email: tayfunucuncu@gmail.com'
	String get contactEmail => 'Email: tayfunucuncu@gmail.com';

	/// en: 'bash: {{command}}: command not found'
	String get notFound => 'bash: {{command}}: command not found';
}

// Path: footer
class TranslationsFooterEn {
	TranslationsFooterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '© 2026 tayfunucuncu.dev | Built with Flutter and colored with Catppuccin'
	String get copyright => '© 2026 tayfunucuncu.dev | Built with Flutter and colored with Catppuccin';
}

// Path: about.header
class TranslationsAboutHeaderEn {
	TranslationsAboutHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Clean Code & System Integrity'
	String get title => 'Clean Code & System Integrity';

	/// en: 'Full Stack Developer and System Administrator with a focus on Clean Architecture and secure API integrations.'
	String get description => 'Full Stack Developer and System Administrator with a focus on Clean Architecture and secure API integrations.';
}

// Path: about.mission
class TranslationsAboutMissionEn {
	TranslationsAboutMissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Technical Approach'
	String get title => 'Technical Approach';

	/// en: 'To deliver production-ready applications by combining Flutter's UI power with robust Go backends and secured Linux environments.'
	String get content => 'To deliver production-ready applications by combining Flutter\'s UI power with robust Go backends and secured Linux environments.';
}

// Path: about.vision
class TranslationsAboutVisionEn {
	TranslationsAboutVisionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Core Values'
	String get title => 'Core Values';

	/// en: 'Maintaining high-performance standards through automation, security-first networking, and clean code principles.'
	String get content => 'Maintaining high-performance standards through automation, security-first networking, and clean code principles.';
}

// Path: services.items
class TranslationsServicesItemsEn {
	TranslationsServicesItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsServicesItemsMobileEn mobile = TranslationsServicesItemsMobileEn._(_root);
	late final TranslationsServicesItemsBackendEn backend = TranslationsServicesItemsBackendEn._(_root);
	late final TranslationsServicesItemsSystemEn system = TranslationsServicesItemsSystemEn._(_root);
	late final TranslationsServicesItemsSecurityEn security = TranslationsServicesItemsSecurityEn._(_root);
}

// Path: contact.form
class TranslationsContactFormEn {
	TranslationsContactFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Name'
	String get name => 'Your Name';

	/// en: 'e.g. John Doe'
	String get namePlaceholder => 'e.g. John Doe';
	
	/// en: 'john.doe@example.com'
	String get emailPlaceholder => 'john.doe@example.com';
	
	/// en: 'Tell me about your project...'
	String get messagePlaceholder => 'Tell me about your project...';

	/// en: 'Send Message'
	String get submit => 'Send Message';
}

// Path: portfolio.projects
class TranslationsPortfolioProjectsEn {
	TranslationsPortfolioProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPortfolioProjectsPortfolioEn portfolio = TranslationsPortfolioProjectsPortfolioEn._(_root);
	late final TranslationsPortfolioProjectsGymloggerEn gymlogger = TranslationsPortfolioProjectsGymloggerEn._(_root);
	late final TranslationsPortfolioProjectsBudgetbuddyEn budgetbuddy = TranslationsPortfolioProjectsBudgetbuddyEn._(_root);
	late final TranslationsPortfolioProjectsBslEn bsl = TranslationsPortfolioProjectsBslEn._(_root);
}

// Path: terminal.help
class TranslationsTerminalHelpEn {
	TranslationsTerminalHelpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Available commands:'
	String get title => 'Available commands:';

	/// en: 'whoami - About the developer'
	String get whoami => 'whoami    - About the developer';

	/// en: 'projects - Show featured projects (Go/Flutter/AI)'
	String get projects => 'projects  - Show featured projects (Go/Flutter/AI)';

	/// en: 'skills - Technical capabilities'
	String get skills => 'skills    - Technical capabilities';

	/// en: 'contact - Get email address'
	String get contact => 'contact   - Get email address';

	/// en: 'clear - Clear the terminal'
	String get clear => 'clear     - Clear the terminal';
}

// Path: terminal.projects
class TranslationsTerminalProjectsEn {
	TranslationsTerminalProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Connecting to GitHub API...'
	String get fetching => 'Connecting to GitHub API...';

	/// en: '1. Gymlogger (Go + Python LSTM + Flutter)'
	String get gymlogger => '1. Gymlogger (Go + Python LSTM + Flutter)';

	/// en: ' - Advanced AI-powered fitness ecosystem.'
	String get gymloggerDesc => '   - Advanced AI-powered fitness ecosystem.';

	/// en: '2. Terminal Portfolio (This Website)'
	String get portfolio => '2. Terminal Portfolio (This Website)';

	/// en: ' - Dockerized & Self-hosted on Linux VPS.'
	String get portfolioDesc => '   - Dockerized & Self-hosted on Linux VPS.';
}

// Path: services.items.mobile
class TranslationsServicesItemsMobileEn {
	TranslationsServicesItemsMobileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Mobile Development'
	String get title => 'Mobile Development';

	/// en: 'High-performance iOS & Android apps using Flutter and Clean Architecture.'
	String get desc => 'High-performance iOS & Android apps using Flutter and Clean Architecture.';
}

// Path: services.items.backend
class TranslationsServicesItemsBackendEn {
	TranslationsServicesItemsBackendEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Backend Engineering'
	String get title => 'Backend Engineering';

	/// en: 'Scalable server-side solutions with Golang, Python, and Gin framework.'
	String get desc => 'Scalable server-side solutions with Golang, Python, and Gin framework.';
}

// Path: services.items.system
class TranslationsServicesItemsSystemEn {
	TranslationsServicesItemsSystemEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'System Administration'
	String get title => 'System Administration';

	/// en: 'Expertise in Linux Systems, Docker, Nginx, and VPS management.'
	String get desc => 'Expertise in Linux Systems, Docker, Nginx, and VPS management.';
}

// Path: services.items.security
class TranslationsServicesItemsSecurityEn {
	TranslationsServicesItemsSecurityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Network & Security'
	String get title => 'Network & Security';

	/// en: 'Secure network architectures and VPN protocol configurations.'
	String get desc => 'Secure network architectures and VPN protocol configurations.';
}

// Path: portfolio.projects.portfolio
class TranslationsPortfolioProjectsPortfolioEn {
	TranslationsPortfolioProjectsPortfolioEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'tayfunucuncu.dev'
	String get title => 'tayfunucuncu.dev';

	/// en: 'Self hosted portfolio website with clean architecture.'
	String get description => 'Self hosted portfolio website with clean architecture.';

	/// en: 'https://github.com/Tylefnx/tayfunucuncu.dev'
	String get link => 'https://github.com/Tylefnx/tayfunucuncu.dev';
}

// Path: portfolio.projects.gymlogger
class TranslationsPortfolioProjectsGymloggerEn {
	TranslationsPortfolioProjectsGymloggerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Gymlogger'
	String get title => 'Gymlogger';

	/// en: 'AI-powered fitness tracking mobile application with Go backend and an LSTM model.'
	String get description => 'AI-powered fitness tracking mobile application with Go backend and an LSTM model.';

	/// en: 'https://github.com/Tylefnx/gymlogger'
	String get link => 'https://github.com/Tylefnx/gymlogger';
}

// Path: portfolio.projects.budgetbuddy
class TranslationsPortfolioProjectsBudgetbuddyEn {
	TranslationsPortfolioProjectsBudgetbuddyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'budgetbuddy'
	String get title => 'budgetbuddy';

	/// en: 'Personal finance tracking application focused on simplicity.'
	String get description => 'Personal finance tracking application focused on simplicity.';

	/// en: 'https://github.com/Tylefnx/budgetbuddy'
	String get link => 'https://github.com/Tylefnx/budgetbuddy';
}

// Path: portfolio.projects.bsl
class TranslationsPortfolioProjectsBslEn {
	TranslationsPortfolioProjectsBslEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Based Login System'
	String get title => 'Based Login System';

	/// en: 'Minimalist TUI based login manager for unix based systems.'
	String get description => 'Minimalist TUI based login manager for unix based systems.';

	/// en: 'https://github.com/Tylefnx/bls'
	String get link => 'https://github.com/Tylefnx/bls';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.title' => 'tayfunucuncu.dev',
			'nav.home' => 'Home',
			'nav.about' => 'About',
			'nav.portfolio' => 'Portfolio',
			'nav.services' => 'Services',
			'nav.contact' => 'Contact',
			'home.statusPill' => 'Available for Freelance Work',
			'home.heroTitle' => 'Mobile Engineering Meets\nSystem Administration.',
			'home.heroDescription' => 'I don\'t just build apps; I architect secure, stable, and optimized digital ecosystems. Specialized in Flutter, Golang, and Linux Systems.',
			'home.viewProjects' => 'View Projects',
			'home.contactMe' => 'Contact Me',
			'about.header.title' => 'Clean Code & System Integrity',
			'about.header.description' => 'Full Stack Developer and System Administrator with a focus on Clean Architecture and secure API integrations.',
			'about.mission.title' => 'Technical Approach',
			'about.mission.content' => 'To deliver production-ready applications by combining Flutter\'s UI power with robust Go backends and secured Linux environments.',
			'about.vision.title' => 'Core Values',
			'about.vision.content' => 'Maintaining high-performance standards through automation, security-first networking, and clean code principles.',
			'services.title' => 'What I Do',
			'services.items.mobile.title' => 'Mobile Development',
			'services.items.mobile.desc' => 'High-performance iOS & Android apps using Flutter and Clean Architecture.',
			'services.items.backend.title' => 'Backend Engineering',
			'services.items.backend.desc' => 'Scalable server-side solutions with Golang, Python, and Gin framework.',
			'services.items.system.title' => 'System Administration',
			'services.items.system.desc' => 'Expertise in Linux Systems, Docker, Nginx, and VPS management.',
			'services.items.security.title' => 'Network & Security',
			'services.items.security.desc' => 'Secure network architectures and VPN protocol configurations.',
			'contact.title' => 'Get In Touch',
			'contact.subtitle' => 'Ready to discuss your next high-performance project?\nReach out via the form or social media.',
			'contact.form.name' => 'Your Name',
			'contact.form.namePlaceholder' => 'e.g. Tayfun Üçüncü',
			'contact.form.email' => 'Email Address',
			'contact.form.emailPlaceholder' => 'contact@tayfun.dev',
			'contact.form.message' => 'Your Message',
			'contact.form.messagePlaceholder' => 'Tell me about your project and infrastructure needs...',
			'contact.form.submit' => 'Send Message',
			'portfolio.projects.portfolio.title' => 'tayfunucuncu.dev',
			'portfolio.projects.portfolio.description' => 'Self hosted portfolio website with clean architecture.',
			'portfolio.projects.portfolio.link' => 'https://github.com/Tylefnx/tayfunucuncu.dev',
			'portfolio.projects.gymlogger.title' => 'Gymlogger',
			'portfolio.projects.gymlogger.description' => 'AI-powered fitness tracking mobile application with Go backend and an LSTM model.',
			'portfolio.projects.gymlogger.link' => 'https://github.com/Tylefnx/gymlogger',
			'portfolio.projects.budgetbuddy.title' => 'budgetbuddy',
			'portfolio.projects.budgetbuddy.description' => 'Personal finance tracking application focused on simplicity.',
			'portfolio.projects.budgetbuddy.link' => 'https://github.com/Tylefnx/budgetbuddy',
			'portfolio.projects.bsl.title' => 'Based Login System',
			'portfolio.projects.bsl.description' => 'Minimalist TUI based login manager for unix based systems.',
			'portfolio.projects.bsl.link' => 'https://github.com/Tylefnx/bls',
			'terminal.welcome.0' => 'Welcome to Tayfun OS v1.0.0 (Linux System)',
			'terminal.welcome.1' => 'System initialized. Secure protocols active.',
			'terminal.welcome.2' => 'Type \'help\' to see available commands.',
			'terminal.welcome.3' => '',
			'terminal.help.title' => 'Available commands:',
			'terminal.help.whoami' => 'whoami    - About the developer',
			'terminal.help.projects' => 'projects  - Show featured projects (Go/Flutter/AI)',
			'terminal.help.skills' => 'skills    - Technical capabilities',
			'terminal.help.contact' => 'contact   - Get email address',
			'terminal.help.clear' => 'clear     - Clear the terminal',
			'terminal.whoami.0' => 'Tayfun Ucuncu | Full Stack Mobile Engineer',
			'terminal.whoami.1' => 'Specialized in Flutter, Golang, and Linux Infrastructure.',
			'terminal.whoami.2' => 'Expert in Network Security and Secure API design.',
			'terminal.projects.fetching' => 'Connecting to GitHub API...',
			'terminal.projects.gymlogger' => '1. Gymlogger (Go + Python LSTM + Flutter)',
			'terminal.projects.gymloggerDesc' => '   - Advanced AI-powered fitness ecosystem.',
			'terminal.projects.portfolio' => '2. Terminal Portfolio (This Website)',
			'terminal.projects.portfolioDesc' => '   - Dockerized & Self-hosted on Linux VPS.',
			'terminal.skills.0' => '• Languages: Dart, Go, Python, Bash',
			'terminal.skills.1' => '• Systems: Linux, Docker, Nginx, Cloud Infra',
			'terminal.skills.2' => '• Security: VPN Protocols, Proxy Configs, Network Security',
			'terminal.contactEmail' => 'Email: tayfunucuncu@gmail.com',
			'terminal.notFound' => 'bash: {{command}}: command not found',
			'footer.copyright' => '© 2026 tayfunucuncu.dev | Built with Flutter and colored with Catppuccin',
			_ => null,
		};
	}
}

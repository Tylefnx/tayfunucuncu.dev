///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppTr app = _TranslationsAppTr._(_root);
	@override late final _TranslationsNavTr nav = _TranslationsNavTr._(_root);
	@override late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
	@override late final _TranslationsAboutTr about = _TranslationsAboutTr._(_root);
	@override late final _TranslationsServicesTr services = _TranslationsServicesTr._(_root);
	@override late final _TranslationsContactTr contact = _TranslationsContactTr._(_root);
	@override late final _TranslationsPortfolioTr portfolio = _TranslationsPortfolioTr._(_root);
	@override late final _TranslationsTerminalTr terminal = _TranslationsTerminalTr._(_root);
	@override late final _TranslationsFooterTr footer = _TranslationsFooterTr._(_root);
}

// Path: app
class _TranslationsAppTr implements TranslationsAppEn {
	_TranslationsAppTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'tayfunucuncu.dev';
}

// Path: nav
class _TranslationsNavTr implements TranslationsNavEn {
	_TranslationsNavTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Anasayfa';
	@override String get about => 'Hakkımda';
	@override String get portfolio => 'Portfolyo';
	@override String get services => 'Hizmetler';
	@override String get contact => 'İletişim';
}

// Path: home
class _TranslationsHomeTr implements TranslationsHomeEn {
	_TranslationsHomeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get statusPill => 'Freelance Projeler İçin Müsait';
	@override String get heroTitle => 'Mobil Mühendislik ve\nSistem Yönetiminin Gücü.';
	@override String get heroDescription => 'Sadece uygulama geliştirmiyorum; güvenli, kararlı ve optimize edilmiş dijital ekosistemler mimarlıyorum. Flutter, Golang ve Linux Sistemleri üzerine uzmanlaştım.';
	@override String get viewProjects => 'Projeleri İncele';
	@override String get contactMe => 'İletişime Geç';
}

// Path: about
class _TranslationsAboutTr implements TranslationsAboutEn {
	_TranslationsAboutTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAboutHeaderTr header = _TranslationsAboutHeaderTr._(_root);
	@override late final _TranslationsAboutMissionTr mission = _TranslationsAboutMissionTr._(_root);
	@override late final _TranslationsAboutVisionTr vision = _TranslationsAboutVisionTr._(_root);
}

// Path: services
class _TranslationsServicesTr implements TranslationsServicesEn {
	_TranslationsServicesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Neler Yapıyorum';
	@override late final _TranslationsServicesItemsTr items = _TranslationsServicesItemsTr._(_root);
}

// Path: contact
class _TranslationsContactTr implements TranslationsContactEn {
	_TranslationsContactTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İletişime Geç';
	@override String get subtitle => 'Yüksek performanslı bir sonraki projenizi konuşmaya hazır mısınız?\nForm üzerinden veya sosyal medyadan bana ulaşabilirsiniz.';
	@override late final _TranslationsContactFormTr form = _TranslationsContactFormTr._(_root);
}

// Path: portfolio
class _TranslationsPortfolioTr implements TranslationsPortfolioEn {
	_TranslationsPortfolioTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPortfolioProjectsTr projects = _TranslationsPortfolioProjectsTr._(_root);
}

// Path: terminal
class _TranslationsTerminalTr implements TranslationsTerminalEn {
	_TranslationsTerminalTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override List<String> get welcome => [
		'Tayfun OS v1.0.0\'a Hoş Geldiniz (Linux System)',
		'Sistem başlatıldı. Güvenli protokoller aktif.',
		'Komutları görmek için \'help\' yazın.',
		'',
	];
	@override late final _TranslationsTerminalHelpTr help = _TranslationsTerminalHelpTr._(_root);
	@override List<String> get whoami => [
		'Tayfun Üçüncü | Full Stack Mobil Mühendis',
		'Flutter, Golang ve Linux Altyapısı konusunda uzmanlaşmış.',
		'Ağ Güvenliği ve Güvenli API tasarımında uzman.',
	];
	@override late final _TranslationsTerminalProjectsTr projects = _TranslationsTerminalProjectsTr._(_root);
	@override List<String> get skills => [
		'• Diller: Dart, Go, Python, Bash',
		'• Sistemler: Linux, Docker, Nginx, Bulut Altyapısı',
		'• Güvenlik: VPN Protokolleri, Proxy Yapılandırmaları, Ağ Güvenliği',
	];
	@override String get contactEmail => 'E-posta: tayfunucuncu@gmail.com';
	@override String get notFound => 'bash: {{command}}: komut bulunamadı';
}

// Path: footer
class _TranslationsFooterTr implements TranslationsFooterEn {
	_TranslationsFooterTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get copyright => '© 2026 tayfunucuncu.dev | Flutter ile geliştirildi, Catppuccin ile renklendirildi';
}

// Path: about.header
class _TranslationsAboutHeaderTr implements TranslationsAboutHeaderEn {
	_TranslationsAboutHeaderTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Temiz Kod ve Sistem Bütünlüğü';
	@override String get description => 'Temiz Mimari ve güvenli API entegrasyonlarına odaklanan Full Stack Geliştirici ve Sistem Yöneticisi.';
}

// Path: about.mission
class _TranslationsAboutMissionTr implements TranslationsAboutMissionEn {
	_TranslationsAboutMissionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teknik Yaklaşımım';
	@override String get content => 'Flutter\'ın UI gücünü, sağlam Go backend sistemleri ve güvenli Linux ortamlarıyla birleştirerek yayına hazır çözümler sunmak.';
}

// Path: about.vision
class _TranslationsAboutVisionTr implements TranslationsAboutVisionEn {
	_TranslationsAboutVisionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Temel Değerler';
	@override String get content => 'Otomasyon, güvenlik öncelikli ağ yapılandırmaları ve temiz kod prensipleriyle yüksek performans standartlarını korumak.';
}

// Path: services.items
class _TranslationsServicesItemsTr implements TranslationsServicesItemsEn {
	_TranslationsServicesItemsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsServicesItemsMobileTr mobile = _TranslationsServicesItemsMobileTr._(_root);
	@override late final _TranslationsServicesItemsBackendTr backend = _TranslationsServicesItemsBackendTr._(_root);
	@override late final _TranslationsServicesItemsSystemTr system = _TranslationsServicesItemsSystemTr._(_root);
	@override late final _TranslationsServicesItemsSecurityTr security = _TranslationsServicesItemsSecurityTr._(_root);
}

// Path: contact.form
class _TranslationsContactFormTr implements TranslationsContactFormEn {
	_TranslationsContactFormTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Adınız Soyadınız';
	@override String get namePlaceholder => 'Örn: Tayfun Üçüncü';
	@override String get email => 'E-posta Adresiniz';
	@override String get emailPlaceholder => 'iletisim@tayfun.dev';
	@override String get message => 'Mesajınız';
	@override String get messagePlaceholder => 'Projenizden ve altyapı ihtiyaçlarınızdan bahsedin...';
	@override String get submit => 'Mesajı Gönder';
}

// Path: portfolio.projects
class _TranslationsPortfolioProjectsTr implements TranslationsPortfolioProjectsEn {
	_TranslationsPortfolioProjectsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPortfolioProjectsPortfolioTr portfolio = _TranslationsPortfolioProjectsPortfolioTr._(_root);
	@override late final _TranslationsPortfolioProjectsGymloggerTr gymlogger = _TranslationsPortfolioProjectsGymloggerTr._(_root);
	@override late final _TranslationsPortfolioProjectsBudgetbuddyTr budgetbuddy = _TranslationsPortfolioProjectsBudgetbuddyTr._(_root);
	@override late final _TranslationsPortfolioProjectsBslTr bsl = _TranslationsPortfolioProjectsBslTr._(_root);
}

// Path: terminal.help
class _TranslationsTerminalHelpTr implements TranslationsTerminalHelpEn {
	_TranslationsTerminalHelpTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kullanılabilir komutlar:';
	@override String get whoami => 'whoami    - Geliştirici hakkında';
	@override String get projects => 'projects  - Öne çıkan projeleri göster (Go/Flutter/AI)';
	@override String get skills => 'skills    - Teknik yetenekler';
	@override String get contact => 'contact   - E-posta adresini al';
	@override String get clear => 'clear     - Terminali temizle';
}

// Path: terminal.projects
class _TranslationsTerminalProjectsTr implements TranslationsTerminalProjectsEn {
	_TranslationsTerminalProjectsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get fetching => 'GitHub API\'sine bağlanılıyor...';
	@override String get gymlogger => '1. Gymlogger (Go + Python LSTM + Flutter)';
	@override String get gymloggerDesc => '   - Gelişmiş yapay zeka destekli fitness ekosistemi.';
	@override String get portfolio => '2. Terminal Portfolyo (Bu Web Sitesi)';
	@override String get portfolioDesc => '   - Dockerize edildi ve Linux VPS üzerinde barındırılıyor.';
}

// Path: services.items.mobile
class _TranslationsServicesItemsMobileTr implements TranslationsServicesItemsMobileEn {
	_TranslationsServicesItemsMobileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobil Geliştirme';
	@override String get desc => 'Flutter ve Temiz Mimari kullanarak yüksek performanslı iOS ve Android uygulamaları.';
}

// Path: services.items.backend
class _TranslationsServicesItemsBackendTr implements TranslationsServicesItemsBackendEn {
	_TranslationsServicesItemsBackendTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Backend Mühendisliği';
	@override String get desc => 'Golang, Python ve Gin çatısı ile ölçeklenebilir sunucu çözümleri.';
}

// Path: services.items.system
class _TranslationsServicesItemsSystemTr implements TranslationsServicesItemsSystemEn {
	_TranslationsServicesItemsSystemTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sistem Yönetimi';
	@override String get desc => 'Linux Sistemleri, Docker, Nginx ve VPS yönetimi konularında uzmanlık.';
}

// Path: services.items.security
class _TranslationsServicesItemsSecurityTr implements TranslationsServicesItemsSecurityEn {
	_TranslationsServicesItemsSecurityTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ağ ve Güvenlik';
	@override String get desc => 'Güvenli ağ mimarileri ve VPN protokol yapılandırmaları.';
}

// Path: portfolio.projects.portfolio
class _TranslationsPortfolioProjectsPortfolioTr implements TranslationsPortfolioProjectsPortfolioEn {
	_TranslationsPortfolioProjectsPortfolioTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'tayfunucuncu.dev';
	@override String get description => 'Temiz mimari ile hazırlanmış, kendi sunucumda barındırılan portfolyo sitesi.';
	@override String get link => 'https://github.com/Tylefnx/tayfunucuncu.dev';
}

// Path: portfolio.projects.gymlogger
class _TranslationsPortfolioProjectsGymloggerTr implements TranslationsPortfolioProjectsGymloggerEn {
	_TranslationsPortfolioProjectsGymloggerTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gymlogger';
	@override String get description => 'Go backend ve LSTM modeli içeren yapay zeka destekli fitness takip uygulaması.';
	@override String get link => 'https://github.com/Tylefnx/gymlogger';
}

// Path: portfolio.projects.budgetbuddy
class _TranslationsPortfolioProjectsBudgetbuddyTr implements TranslationsPortfolioProjectsBudgetbuddyEn {
	_TranslationsPortfolioProjectsBudgetbuddyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'budgetbuddy';
	@override String get description => 'Sadelik odaklı kişisel finans takip uygulaması.';
	@override String get link => 'https://github.com/Tylefnx/budgetbuddy';
}

// Path: portfolio.projects.bsl
class _TranslationsPortfolioProjectsBslTr implements TranslationsPortfolioProjectsBslEn {
	_TranslationsPortfolioProjectsBslTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Based Login System';
	@override String get description => 'Unix tabanlı sistemler için minimalist TUI tabanlı giriş yöneticisi.';
	@override String get link => 'https://github.com/Tylefnx/bls';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.title' => 'tayfunucuncu.dev',
			'nav.home' => 'Anasayfa',
			'nav.about' => 'Hakkımda',
			'nav.portfolio' => 'Portfolyo',
			'nav.services' => 'Hizmetler',
			'nav.contact' => 'İletişim',
			'home.statusPill' => 'Freelance Projeler İçin Müsait',
			'home.heroTitle' => 'Mobil Mühendislik ve\nSistem Yönetiminin Gücü.',
			'home.heroDescription' => 'Sadece uygulama geliştirmiyorum; güvenli, kararlı ve optimize edilmiş dijital ekosistemler mimarlıyorum. Flutter, Golang ve Linux Sistemleri üzerine uzmanlaştım.',
			'home.viewProjects' => 'Projeleri İncele',
			'home.contactMe' => 'İletişime Geç',
			'about.header.title' => 'Temiz Kod ve Sistem Bütünlüğü',
			'about.header.description' => 'Temiz Mimari ve güvenli API entegrasyonlarına odaklanan Full Stack Geliştirici ve Sistem Yöneticisi.',
			'about.mission.title' => 'Teknik Yaklaşımım',
			'about.mission.content' => 'Flutter\'ın UI gücünü, sağlam Go backend sistemleri ve güvenli Linux ortamlarıyla birleştirerek yayına hazır çözümler sunmak.',
			'about.vision.title' => 'Temel Değerler',
			'about.vision.content' => 'Otomasyon, güvenlik öncelikli ağ yapılandırmaları ve temiz kod prensipleriyle yüksek performans standartlarını korumak.',
			'services.title' => 'Neler Yapıyorum',
			'services.items.mobile.title' => 'Mobil Geliştirme',
			'services.items.mobile.desc' => 'Flutter ve Temiz Mimari kullanarak yüksek performanslı iOS ve Android uygulamaları.',
			'services.items.backend.title' => 'Backend Mühendisliği',
			'services.items.backend.desc' => 'Golang, Python ve Gin çatısı ile ölçeklenebilir sunucu çözümleri.',
			'services.items.system.title' => 'Sistem Yönetimi',
			'services.items.system.desc' => 'Linux Sistemleri, Docker, Nginx ve VPS yönetimi konularında uzmanlık.',
			'services.items.security.title' => 'Ağ ve Güvenlik',
			'services.items.security.desc' => 'Güvenli ağ mimarileri ve VPN protokol yapılandırmaları.',
			'contact.title' => 'İletişime Geç',
			'contact.subtitle' => 'Yüksek performanslı bir sonraki projenizi konuşmaya hazır mısınız?\nForm üzerinden veya sosyal medyadan bana ulaşabilirsiniz.',
			'contact.form.name' => 'Adınız Soyadınız',
			'contact.form.namePlaceholder' => 'Örn: Tayfun Üçüncü',
			'contact.form.email' => 'E-posta Adresiniz',
			'contact.form.emailPlaceholder' => 'iletisim@tayfun.dev',
			'contact.form.message' => 'Mesajınız',
			'contact.form.messagePlaceholder' => 'Projenizden ve altyapı ihtiyaçlarınızdan bahsedin...',
			'contact.form.submit' => 'Mesajı Gönder',
			'portfolio.projects.portfolio.title' => 'tayfunucuncu.dev',
			'portfolio.projects.portfolio.description' => 'Temiz mimari ile hazırlanmış, kendi sunucumda barındırılan portfolyo sitesi.',
			'portfolio.projects.portfolio.link' => 'https://github.com/Tylefnx/tayfunucuncu.dev',
			'portfolio.projects.gymlogger.title' => 'Gymlogger',
			'portfolio.projects.gymlogger.description' => 'Go backend ve LSTM modeli içeren yapay zeka destekli fitness takip uygulaması.',
			'portfolio.projects.gymlogger.link' => 'https://github.com/Tylefnx/gymlogger',
			'portfolio.projects.budgetbuddy.title' => 'budgetbuddy',
			'portfolio.projects.budgetbuddy.description' => 'Sadelik odaklı kişisel finans takip uygulaması.',
			'portfolio.projects.budgetbuddy.link' => 'https://github.com/Tylefnx/budgetbuddy',
			'portfolio.projects.bsl.title' => 'Based Login System',
			'portfolio.projects.bsl.description' => 'Unix tabanlı sistemler için minimalist TUI tabanlı giriş yöneticisi.',
			'portfolio.projects.bsl.link' => 'https://github.com/Tylefnx/bls',
			'terminal.welcome.0' => 'Tayfun OS v1.0.0\'a Hoş Geldiniz (Linux System)',
			'terminal.welcome.1' => 'Sistem başlatıldı. Güvenli protokoller aktif.',
			'terminal.welcome.2' => 'Komutları görmek için \'help\' yazın.',
			'terminal.welcome.3' => '',
			'terminal.help.title' => 'Kullanılabilir komutlar:',
			'terminal.help.whoami' => 'whoami    - Geliştirici hakkında',
			'terminal.help.projects' => 'projects  - Öne çıkan projeleri göster (Go/Flutter/AI)',
			'terminal.help.skills' => 'skills    - Teknik yetenekler',
			'terminal.help.contact' => 'contact   - E-posta adresini al',
			'terminal.help.clear' => 'clear     - Terminali temizle',
			'terminal.whoami.0' => 'Tayfun Üçüncü | Full Stack Mobil Mühendis',
			'terminal.whoami.1' => 'Flutter, Golang ve Linux Altyapısı konusunda uzmanlaşmış.',
			'terminal.whoami.2' => 'Ağ Güvenliği ve Güvenli API tasarımında uzman.',
			'terminal.projects.fetching' => 'GitHub API\'sine bağlanılıyor...',
			'terminal.projects.gymlogger' => '1. Gymlogger (Go + Python LSTM + Flutter)',
			'terminal.projects.gymloggerDesc' => '   - Gelişmiş yapay zeka destekli fitness ekosistemi.',
			'terminal.projects.portfolio' => '2. Terminal Portfolyo (Bu Web Sitesi)',
			'terminal.projects.portfolioDesc' => '   - Dockerize edildi ve Linux VPS üzerinde barındırılıyor.',
			'terminal.skills.0' => '• Diller: Dart, Go, Python, Bash',
			'terminal.skills.1' => '• Sistemler: Linux, Docker, Nginx, Bulut Altyapısı',
			'terminal.skills.2' => '• Güvenlik: VPN Protokolleri, Proxy Yapılandırmaları, Ağ Güvenliği',
			'terminal.contactEmail' => 'E-posta: tayfunucuncu@gmail.com',
			'terminal.notFound' => 'bash: {{command}}: komut bulunamadı',
			'footer.copyright' => '© 2026 tayfunucuncu.dev | Flutter ile geliştirildi, Catppuccin ile renklendirildi',
			_ => null,
		};
	}
}

/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 62 (31 per locale)
///
/// Built on 2023-06-26 at 13:56 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _TranslationsEn> {
	en(languageCode: 'en', build: _TranslationsEn.build),
	ar(languageCode: 'ar', build: _TranslationsAr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _TranslationsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_TranslationsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of tr).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = tr.someKey.anotherKey;
/// String b = tr['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn get tr => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final tr = Translations.of(context); // Get tr variable.
/// String a = tr.someKey.anotherKey; // Use tr variable.
/// String b = tr['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _TranslationsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _TranslationsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.tr.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_TranslationsEn get tr => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _TranslationsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _TranslationsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _TranslationsEn implements BaseTranslations<AppLocale, _TranslationsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	String get add_details_login => 'Add your details to login';
	String get add_your_details_to_sign_up => 'Add your details to sign up';
	String get address => 'Address';
	String get address_not_empty => 'address must not empty';
	String get ahmed => 'Ahmed';
	String get already_have_an_account => 'Already have an Account?';
	String get confirm_password => 'Confirm Password';
	String get confirm_password_not_empty => 'confirm password must not empty';
	String get create_an_account => 'Create an Account';
	String get discover_the_best_foods => 'Discover the best foods from over 1,000 ';
	String get donot_have_an_account  => 'Don\'t have an Account? ';
	String get email => 'Your Email';
	String get email_not_empty => 'email must not empty';
	String get enter_your_phone_number => 'Enter your phone number';
	String get error_occurred => 'Error Occurred';
	String get forget_password => 'Forgot your password?';
	String get invalid_field => 'Invalid field';
	String get login => 'Login';
	String get login_with => 'or Login With';
	String get mobile => 'Mobile No';
	String get mobile_not_empty => 'mobile number must not empty';
	String get name => 'Add your details to sign up';
	String get name_not_empty => 'name must not empty';
	String get next => 'Next';
	String get no_internet => 'No Internet Connection';
	String get password => 'Password';
	String get password_not_empty => 'password must not empty';
	String get restaurants_and_fast_delivery => 'restaurants and fast delivery to your doorstep';
	String get search_country => 'Search country';
	String get sign_up => 'Sign Up';
	String get something_error_try_again => 'Something Happened Error Please Try Again';
}

// Path: <root>
class _TranslationsAr implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsAr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsAr _root = this; // ignore: unused_field

	// Translations
	@override String get add_details_login => 'أضف التفاصيل الخاصة بك لتسجيل الدخول';
	@override String get add_your_details_to_sign_up => 'أضف التفاصيل الخاصة بك للتسجيل';
	@override String get address => 'العنوان';
	@override String get address_not_empty => 'يجب ألا يكون العنوان فارغًا';
	@override String get ahmed => 'احمد';
	@override String get already_have_an_account => 'هل لديك حساب؟';
	@override String get confirm_password => 'تأكيد كلمة المرور';
	@override String get confirm_password_not_empty => 'يجب ألا يكون تأكيد كلمة المرور فارغًا';
	@override String get create_an_account => 'إنشاء حساب';
	@override String get discover_the_best_foods => 'اكتشف أفضل الأطعمة من أكثر من 1000';
	@override String get donot_have_an_account  => 'ليس لديك حساب؟';
	@override String get email => 'بريدك الالكتروني';
	@override String get email_not_empty => 'يجب ألا يكون البريد الإلكتروني فارغًا';
	@override String get enter_your_phone_number => 'ادخل رقم هاتفك';
	@override String get error_occurred => 'حدث خطأ';
	@override String get forget_password => 'نسيت كلمة السر؟';
	@override String get invalid_field => 'حقل غير صالح';
	@override String get login => 'تسجيل الدخول';
	@override String get login_with => 'أو تسجيل الدخول باستخدام';
	@override String get mobile => 'رقم المحمول';
	@override String get mobile_not_empty => 'يجب ألا يكون رقم الهاتف المحمول فارغًا';
	@override String get name => 'الاسم';
	@override String get name_not_empty => 'يجب ألا يكون الاسم فارغًا';
	@override String get next => 'التالي';
	@override String get no_internet => 'لا يوجد اتصال بالانترنت';
	@override String get password => 'كلمة المرور';
	@override String get password_not_empty => 'يجب ألا تكون كلمة المرور فارغة';
	@override String get restaurants_and_fast_delivery => 'مطاعم و توصيل سريع الي باب بيتك';
	@override String get search_country => 'ابحث عن الدوله';
	@override String get sign_up => 'انشاء حساب';
	@override String get something_error_try_again => 'حدث خطأ ما يرجى المحاولة مرة أخرى';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'add_details_login': return 'Add your details to login';
			case 'add_your_details_to_sign_up': return 'Add your details to sign up';
			case 'address': return 'Address';
			case 'address_not_empty': return 'address must not empty';
			case 'ahmed': return 'Ahmed';
			case 'already_have_an_account': return 'Already have an Account?';
			case 'confirm_password': return 'Confirm Password';
			case 'confirm_password_not_empty': return 'confirm password must not empty';
			case 'create_an_account': return 'Create an Account';
			case 'discover_the_best_foods': return 'Discover the best foods from over 1,000 ';
			case 'donot_have_an_account ': return 'Don\'t have an Account? ';
			case 'email': return 'Your Email';
			case 'email_not_empty': return 'email must not empty';
			case 'enter_your_phone_number': return 'Enter your phone number';
			case 'error_occurred': return 'Error Occurred';
			case 'forget_password': return 'Forgot your password?';
			case 'invalid_field': return 'Invalid field';
			case 'login': return 'Login';
			case 'login_with': return 'or Login With';
			case 'mobile': return 'Mobile No';
			case 'mobile_not _empty': return 'mobile number must not empty';
			case 'name': return 'Add your details to sign up';
			case 'name_not_empty': return 'name must not empty';
			case 'next': return 'Next';
			case 'no_internet': return 'No Internet Connection';
			case 'password': return 'Password';
			case 'password_not_empty': return 'password must not empty';
			case 'restaurants_and_fast_delivery': return 'restaurants and fast delivery to your doorstep';
			case 'search_country': return 'Search country';
			case 'sign_up': return 'Sign Up';
			case 'something_error_try_again': return 'Something Happened Error Please Try Again';
			default: return null;
		}
	}
}

extension on _TranslationsAr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'add_details_login': return 'أضف التفاصيل الخاصة بك لتسجيل الدخول';
			case 'add_your_details_to_sign_up': return 'أضف التفاصيل الخاصة بك للتسجيل';
			case 'address': return 'العنوان';
			case 'address_not_empty': return 'يجب ألا يكون العنوان فارغًا';
			case 'ahmed': return 'احمد';
			case 'already_have_an_account': return 'هل لديك حساب؟';
			case 'confirm_password': return 'تأكيد كلمة المرور';
			case 'confirm_password_not_empty': return 'يجب ألا يكون تأكيد كلمة المرور فارغًا';
			case 'create_an_account': return 'إنشاء حساب';
			case 'discover_the_best_foods': return 'اكتشف أفضل الأطعمة من أكثر من 1000';
			case 'donot_have_an_account ': return 'ليس لديك حساب؟';
			case 'email': return 'بريدك الالكتروني';
			case 'email_not_empty': return 'يجب ألا يكون البريد الإلكتروني فارغًا';
			case 'enter_your_phone_number': return 'ادخل رقم هاتفك';
			case 'error_occurred': return 'حدث خطأ';
			case 'forget_password': return 'نسيت كلمة السر؟';
			case 'invalid_field': return 'حقل غير صالح';
			case 'login': return 'تسجيل الدخول';
			case 'login_with': return 'أو تسجيل الدخول باستخدام';
			case 'mobile': return 'رقم المحمول';
			case 'mobile_not _empty': return 'يجب ألا يكون رقم الهاتف المحمول فارغًا';
			case 'name': return 'الاسم';
			case 'name_not_empty': return 'يجب ألا يكون الاسم فارغًا';
			case 'next': return 'التالي';
			case 'no_internet': return 'لا يوجد اتصال بالانترنت';
			case 'password': return 'كلمة المرور';
			case 'password_not_empty': return 'يجب ألا تكون كلمة المرور فارغة';
			case 'restaurants_and_fast_delivery': return 'مطاعم و توصيل سريع الي باب بيتك';
			case 'search_country': return 'ابحث عن الدوله';
			case 'sign_up': return 'انشاء حساب';
			case 'something_error_try_again': return 'حدث خطأ ما يرجى المحاولة مرة أخرى';
			default: return null;
		}
	}
}

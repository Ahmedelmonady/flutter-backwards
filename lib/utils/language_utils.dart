// This file defines constants for left-to-right (LTR) and right-to-left (RTL) languages,
// and provides functions to handle language selection and directionality.

import 'gameball_utils.dart';

/// List of left-to-right (LTR) languages.
const List<String> ltrLanguageCodes = [
  "en",
  "fr",
  "es",
  "de",
  "pt",
  "pl",
  "it",
  "hu",
  "zh-tw",
  "nl",
  "sv",
  "no",
  "dk",
  "ja"
];

/// List of right-to-left (RTL) languages.
const List<String> rtlLanguageCodes = ["ar"];

/// Handles language selection based on global and preferred languages.
///
/// Returns the selected language, which is either the preferred language,
/// the global language, or "en" if both are invalid.
String handleLanguage(String globalLang, String? preferredLang) {
  String? lang = preferredLang;
  // If the preferred language is valid (not null, empty, or not 2 characters), use it.
  if (isNullOrEmpty(lang) || lang?.length != 2) {
    // If the global language is valid, use it, Otherwise, use 'en'.
    lang = globalLang;
    if (isNullOrEmpty(lang) || lang.length != 2) {
      lang = "en";
    }
  }
  return lang.toString();
}

/// Checks if a language is right-to-left (RTL).
bool isRtl(String lang) {
  return rtlLanguageCodes.contains(lang);
}

/// Checks if a language is left-to-right (LTR).
bool isLtr(String lang) {
  return ltrLanguageCodes.contains(lang);
}

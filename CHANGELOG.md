# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project
adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.1] - 2023-06-12

### Added

- Initial release of the `any_language_number_input_formatter` package.
- Introduced `AnyLanguageNumberInputFormatter`, a TextInputFormatter that formats input numbers to
  their Arabic equivalents, supporting multiple languages including Hindi, Bengali,
  Chinese/Japanese, Gujarati, Gurmukhi(Punjabi), Hindi(Devanagari), Kannada, Malayalam, Oriya,
  Persian(Farsi), Tamil, Telugu, Thai, and Urdu.
- `LanguageMapping` class added which maintains a map of multiple languages and their numeral
  representation.
- `InputState` class added to track the state of the text input, including whether backspace was
  pressed and if the input is a copy-paste operation.

### Future Plans

- Support for additional languages and numeral systems.
- Performance optimizations and improvements.

## [0.0.2] - 2023-06-12

### Added

- Unit tests for the `LanguageMapping` class, enhancing the reliability and maintainability of the
  code.

### Changed

- Cleaned up the code to improve readability and maintainability.
- Update the readme file

### Fixed

- Fixed the bug related to copy-paste functionality, improving user experience and package
  performance.

### Continuous Integration/Continuous Deployment

- Implemented a CI/CD pipeline for the project to automate the build, test, and deployment process,
  enhancing the efficiency of development cycles.

# Flutter Bloc Todo List

**Development, Issues & Pull Requests:**  
https://github.com/aa22396584/flutter_bloc_todolist

**Mirrors:**  
[GitLab](https://gitlab.com/aa22396584/flutter_bloc_todolist) ·
[Codeberg](https://codeberg.org/ImL1s/flutter_bloc_todolist)


A modernized Todo List application built with **Flutter 3**, **Bloc 9**, and **Clean Architecture**. This project demonstrates best practices for state management, dependency injection, and immutable data modeling using the latest Flutter ecosystem tools.

## 🚀 Features

- **Modern Architecture**: Clean Architecture with separated layers (UI, Bloc, Repository, Database).
- **State Management**: Uses `flutter_bloc` v9.0+ with the Event/State pattern.
- **Dependency Injection**: Powered by `get_it` and `injectable`.
- **Immutable Models**: Data classes generated using `freezed` and `json_serializable`.
- **Local Database**: Persistent storage using `sqflite`.
- **Material 3**: Fully styled with the latest Material Design 3 guidelines.
- **Search**: Real-time filtering of todo items.

## 🛠 Tech Stack

- **SDK**: Dart 3, Flutter 3.35+
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **DI**: [get_it](https://pub.dev/packages/get_it), [injectable](https://pub.dev/packages/injectable)
- **Data Class**: [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable)
- **Database**: [sqflite](https://pub.dev/packages/sqflite)
- **Testing**: [bloc_test](https://pub.dev/packages/bloc_test), [mockito](https://pub.dev/packages/mockito)

## 📂 Project Structure

```
lib/
├── bloc/           # State management (Events & States)
├── database/       # Database modules and DAO
├── model/          # Immutable data models (Freezed)
├── repository/     # Data repositories (Interfaces & Implementations)
├── ui/             # UI Widgets and Pages
│   └── widgets/    # Reusable UI components
├── injection.dart  # DI setup
└── main.dart       # App entry point
```

## ⚡ Getting Started

### 1. Prerequisites

Ensure you have Flutter installed and set up.

```bash
flutter doctor
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Code Generation

This project uses `build_runner` to generate code for Freezed models, JSON serialization, and dependency injection.

**One-time build:**
```bash
dart run build_runner build --delete-conflicting-outputs
```

**Watch mode (auto-rebuild on change):**
```bash
dart run build_runner watch --delete-conflicting-outputs
```

### 4. Run App

```bash
flutter run
```

## 🧪 Testing

Run unit and widget tests:

```bash
flutter test
```

---

## Support

If this project saved you some time, you can [buy me a coffee](https://buymeacoffee.com/iml1s).

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

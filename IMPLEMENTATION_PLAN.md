# Void Launcher - Implementation Plan

An ultra-minimalist, **icon-less**, distraction-free Flutter launcher focused on reducing phone usage through awareness and control.

## Design Philosophy

**Core Principles:**
- **Text-Only Interface**: No app icons, only app names in clean typography
- **Distraction-Free**: Minimal visual elements, maximum focus
- **Awareness First**: Prominent screen time and unlock count display
- **Intentional Usage**: Friction through minimalism encourages mindful app usage

## ✨ Feature Highlights

### 🔍 Smart 3-Letter App Launcher
- Auto-open keyboard when app drawer appears
- Type 3 letters → if only 1 match, auto-launch instantly
- If 2+ matches → show filtered list
- Example: "gma" → Gmail opens automatically

### App Drawer 
- Auto-open keyboard when app drawer appears
- Type 3 letters → if only 1 match, auto-launch instantly
- If 2+ matches → show filtered list
- Example: "gma" → Gmail opens automatically
- Segregate Personal and Work Apps if work profile is enabled.

### Glance Widget - Optional
- Glance widget to next ToDo's and Habits
- Option to disable glance widget in settings.

### Habit Tracker - Optional
- Habit tracker to track daily habits
- Option to disable habit tracker in settings.
- The UI should be minimalistic and distraction-free and similar to github contribution graph.

### ToDo Tracker - Optional
- ToDo tracker to track daily to dos
- Option to disable to do tracker in settings.

## Proposed Changes

#### [NEW] Flutter Project Structure
Initialize Flutter project with proper package structure:
```
return_zero/
lib/
├── core/                 # App-wide constants, themes, and shared utilities
│   ├── constants/        # Strings, animation durations, keys
│   ├── theme/            # Minimalist typography and "icon-less" styles
│   ├── utils/            # Time formatters, usage calculation helpers
│   └── widgets/          # Shared UI (e.g., custom distraction-free lists)
├── features/             # Business logic grouped by feature
│   ├── home/             # The main text-based app list
│   │   ├── data/         # Repositories & Data Sources (Native Bridge)
│   │   ├── domain/       # Entities & Use Cases
│   │   └── presentation/ # BLoC/Provider & UI screens
│   ├── usage_stats/      # Awareness feature (screen time tracking)
│   ├── app_drawer/       # App Drawer for opening apps
│   └── settings/         # Control center (blocking, renaming apps)
├── infrastructure/       # Platform-specific integrations (Method Channels)
│   └── platform_bridge/  # Native Android communication logic
└── main.dart             # App entry point
├── android/
├── pubspec.yaml
└── README.md
```

### Device Testing
- Test on physical Android device (API 28+)
- Test launcher replacement flow
- Verify all features work as default launcher
- Verify if alignment is as expected in landscape mode.
- Verify if app behaviour is as expected in dark mode.
- Verify if app behaviour is as expected in light mode.
- Verify if app behaviour is as expected in different screen sizes.
- Verify if app behaviour is as expected in different orientations.

### Build Verification
```bash
flutter build apk --release
```
- Ensure APK builds successfully
- Test installation on device
- Verify app size is reasonable for minimalist app

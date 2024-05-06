# Charity App
This application for now only UI/UX slicing from Figma Community
https://www.figma.com/file/3w3cEKOHtbEn6RqwqnKbSV/Charity-App-%7C-UI%2FUX-(Community)?type=design&node-id=1-3&mode=design&t=sCX6BduPdNJU3JnH-0

For next step, integration with Web Management Charity (Angular) and Backend (Golang).

This project using clean architecture pattern and Providers for State management, if you use Bloc, only change on folder provider than replace with Bloc State.

# Project Tree
```bash
.
├── app
│   ├── app.dart
│   ├── router
│   │   └── app_router.dart
│   └── view
│       └── app.dart
├── bootstrap.dart
├── core
│   ├── app_export.dart
│   ├── network
│   │   └── network_info.dart
│   ├── theme
│   │   ├── app_decoration.dart
│   │   ├── custom_button_style.dart
│   │   ├── custom_text_style.dart
│   │   └── theme_helper.dart
│   ├── utils
│   │   ├── constant.dart
│   │   ├── date_time_utils.dart
│   │   ├── size_utils.dart
│   │   └── validation_functions.dart
│   └── widgets
│       ├── base_button.dart
│       ├── custom_dropdown.dart
│       ├── custom_elevated_button.dart
│       ├── custom_image_view.dart
│       ├── custom_outlined_button.dart
│       ├── custom_pin_code_text_field.dart
│       └── custom_text_form_field.dart
├── features
│   ├── auth_module
│   │   └── presentation
│   │       ├── sign_in_screen.dart
│   │       ├── sign_up_screen.dart
│   │       └── verification_screen.dart
│   ├── base_app.dart
│   ├── campaigns_module
│   │   └── presentation
│   │       ├── campaign_screen.dart
│   │       └── widget
│   │           ├── detail_campaign_widget.dart
│   │           └── investor_card_widget.dart
│   ├── dashboard_module
│   │   └── presentation
│   │       ├── dashboard_screen.dart
│   │       └── widget
│   │           └── dashboard_campaign_card_widget.dart
│   ├── home_module
│   │   └── presentation
│   │       ├── home_screen.dart
│   │       └── widget
│   │           └── campaign_card_widget.dart
│   ├── settings_module
│   │   └── presentation
│   │       ├── payment_setting_screen.dart
│   │       └── widget
│   │           └── payment_card_widget.dart
│   └── splash_module
│       └── presentation
│           └── splash_screen.dart
├── gen
│   ├── assets.gen.dart
│   └── fonts.gen.dart
├── injector.config.dart
├── injector.dart
└── main_development.dart
```

# PREVIEW
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
![splash_screen](https://github.com/primajatnika27/charity_app/assets/51253537/34267abb-805f-4744-8ea1-b862ab560d2b)
![sigIn_screen](https://github.com/primajatnika27/charity_app/assets/51253537/643db3cb-4d8f-4d49-a45e-39897d871298)
![sigUp_screen](https://github.com/primajatnika27/charity_app/assets/51253537/f31d3dd9-f8ce-4fd6-b0db-9151f487fd58)
![verify_screen](https://github.com/primajatnika27/charity_app/assets/51253537/a3aa54b0-b248-49bb-b639-96d1cd177cfe)
![home_screen_01](https://github.com/primajatnika27/charity_app/assets/51253537/ddcda547-f9a4-4412-b3b0-90797048f1dc)
![home_screen_02](https://github.com/primajatnika27/charity_app/assets/51253537/ef3473b1-8ca0-404a-92bd-80ea07eda191)
![dashboard_screen_01](https://github.com/primajatnika27/charity_app/assets/51253537/77f489c1-71f5-42dd-9395-c58d4ae809ef)
![dashboard_screen_02](https://github.com/primajatnika27/charity_app/assets/51253537/76f5de49-1c1d-4f17-896c-ee45423a4f4f)
![campaign_screen_01](https://github.com/primajatnika27/charity_app/assets/51253537/7c70ee0f-d05c-4363-9385-3815d06e0868)
![campaign_screen_02](https://github.com/primajatnika27/charity_app/assets/51253537/9b5db0bd-2869-4d99-9349-4e727b47e083)
![payment_screen_01](https://github.com/primajatnika27/charity_app/assets/51253537/ca91e813-cf10-4931-8f31-8ca91fcc96ba)
![payment_screen_02](https://github.com/primajatnika27/charity_app/assets/51253537/47a590a0-1256-48c0-9405-b8691551118e)






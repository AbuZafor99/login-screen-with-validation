# Login Screen with Verification

A Flutter project that demonstrates a modern login screen with real-time input validation using the GetX package for state management.

## 1. Project Overview

This project is a simple yet robust implementation of a login screen in Flutter. It features a clean user interface with email and password fields, along with comprehensive validation to ensure data integrity. The app uses the GetX package for state management, dependency injection, and route management, following a clean architecture pattern.

### Key Features:
- **User Input Form:** A well-designed login form with email and password fields.
- **Real-time Validation:** Instant feedback on user input for both email and password fields.
- **State Management:** Efficient state management with GetX to handle UI updates, such as loading indicators.
- **Simulated Login:** A simulated asynchronous login process to mimic real-world API calls.
- **User Feedback:** Clear and informative snack bars for success notifications.
- **Custom Widgets:** Reusable and customizable widgets for text fields.

## 2. Technologies Used

- **Flutter:** The UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Dart:** The programming language used for Flutter development.
- **GetX:** A powerful and lightweight micro-framework for Flutter that provides state management, dependency injection, and route management.

## 3. Features

### Search and Filter Functionality
- **Email Validation:**
    - Checks if the email field is empty.
    - Validates the email format using a regular expression.
- **Password Validation:**
    - Checks if the password field is empty.
    - Ensures the password is at least 6 characters long.
    - Requires at least one uppercase letter.
    - Requires at least one number.

## 4. Architecture

The project follows a Model-View-Controller (MVC)-like architecture, facilitated by the GetX package.

- **Model:** The `LoginModel` class (`lib/data/models/login_model.dart`) represents the data structure for the login credentials.
- **View:** The `LoginView` class (`lib/ui/screens/login_screen.dart`) is responsible for rendering the UI. It observes the state of the `LoginController` to update itself.
- **Controller:** The `LoginController` class (`lib/ui/controllers/login_controller.dart`) contains the business logic, including input validation and the login process. It manages the state of the login screen.

### State Management
State management is handled by GetX. The `LoginController` holds the observable variables (e.g., `isLoading`) and the UI (`LoginView`) reacts to state changes by wrapping widgets in `Obx`.

### Data Flow
1. The user interacts with the `LoginView`.
2. Input data is sent to the `LoginController`.
3. The `LoginController` validates the input and updates the `LoginModel`.
4. The `LoginController` updates its state (e.g., `isLoading`), and the `LoginView` automatically rebuilds the relevant parts of the UI.

## 5. Code Structure

```
lib/
├── data/
│   └── models/
│       └── login_model.dart    # Data model for login
├── ui/
│   ├── controllers/
│   │   └── login_controller.dart # Business logic for login
│   ├── screens/
│   │   └── login_screen.dart   # UI for the login screen
│   ├── widgets/
│   │   ├── custom_text_field.dart # Reusable text field widget
│   │   └── snack_bar.dart      # Custom snack bar for notifications
│   └── controller_binder.dart  # Binds controllers to views
├── main.dart                   # Main entry point of the app
└── myapp.dart                  # Defines app routes and pages
```

## 6. Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/login_screen_with_verification.git
   cd login_screen_with_verification
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   ```bash
   flutter run
   ```

## 7. Dependencies

- **flutter:** The core Flutter framework.
- **get:** For state management, dependency injection, and routing.
- **cupertino_icons:** Provides iOS-style icons.

## 8. How to Use the App

1. Launch the application on your emulator or device.
2. You will be presented with a login screen.
3. The email and password fields are pre-filled with sample data for convenience.
4. As you modify the fields, you will see real-time validation messages for invalid input.
5. Once the input is valid, click the "Login" button.
6. A loading indicator will appear for 2 seconds to simulate a network call.
7. After the delay, a success snack bar will appear at the bottom of the screen.

## 9. Known Issues or Future Enhancements

### Known Issues
- The current version uses a simulated login process. There is no real authentication.

### Future Enhancements
- **Backend Integration:** Connect the app to a real authentication service like Firebase Authentication or a custom REST API.
- **Forgot Password:** Implement a "Forgot Password" feature to allow users to reset their passwords.
- **Social Logins:** Add options for users to log in using social media accounts like Google or Facebook.


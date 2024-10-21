
# Lafyuu E-Commerce App

This is a Flutter-based e-commerce mobile application currently in development. The project follows the MVVM (Model-View-ViewModel) architecture and integrates with a RESTful API for data management.

# Features

- MVVM Architecture: The app is structured using the MVVM pattern, promoting a clear separation of concerns between the UI and business logic.
- State Management with BloC: Bloc is used to handle state management, ensuring smooth user interaction and efficient performance.
- RESTful API Integration: The app communicates with a RESTful API to fetch and manage data such as products, user information, and orders. API url = https://github.com/ahmetakay24/lafyuu_e_commerce_app_mock_json
- UI Components: UIKit is employed for designing the user interface, ensuring a modern and consistent user experience. UIKit url = https://www.figma.com/community/file/892081313681059988/lafyuu-e-commerce-ui-kit-for-figma

# Current Status
The app is in the development stage, with ongoing feature implementation and optimization. Future updates will include:

- Enhanced product browsing and search capabilities
- Secure user authentication
- Checkout and payment processing
- Order history and tracking

# Dependencies

- flutter_bloc: For state management.
- dio: For API requests.

# Roadmap

 - Complete UI of Screens.
 - Complete Servise Structures of Screens.
 - Complete State Managements of Screens.
 - Complete the core shopping features.
 - Implement user authentication (Firebase/Custom).
 - Add payment gateway integration.
 - Build out order tracking and history.

# Contribution

Feel free to contribute by submitting a pull request. Ensure your code follows the established architecture and naming conventions.



## Installation

To run this project, follow these steps:

- Clone the repository:
```bash
  git clone https://github.com/ahmetakay24/lafyuu_e_commerce_app
```

- Navigate to the project directory:
```bash
  cd <project-directory>
```

- Get dependencies:
```bash
  flutter pub get
```

- Run the app:
```bash
  flutter run
```
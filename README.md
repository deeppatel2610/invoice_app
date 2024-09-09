# Invoice App

A Flutter-based application for creating, managing, and sending invoices. This app allows users to generate professional invoices, manage clients, and track payment statuses easily.

## Features

- Create and manage invoices
- Add clients with contact details
- Track payment status (Paid, Pending, Overdue)
- Export invoices as PDF
- Send invoices directly via email
- Dark and Light mode support

## Screenshots

  <div>
    <img src= "https://github.com/user-attachments/assets/2bd87ab5-ed63-419a-b0bf-0b0d8aa66a54"  height =500px>
    <img src= "https://github.com/user-attachments/assets/9f67e0e6-5c3a-4c58-a13b-234b1a7f7ed9"  height =500px> 
    <img src= "https://github.com/user-attachments/assets/e230c181-37fb-49da-8b7c-7027220e973d"  height =500px>
    <img src= "https://github.com/user-attachments/assets/d134f757-a161-41b8-a1fd-03b0066b02f6"  height =500px> 
    <img src= "https://github.com/user-attachments/assets/aebd9f2d-4b87-4daf-afd3-546904e82e0a"  height =500px>
    <img src= "https://github.com/user-attachments/assets/7d344b42-1ebf-4f35-8f03-0b35750733ca"  height =500px>

  </div>

## Installation

To get started with the Invoice App, follow these steps:

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: Included with Flutter SDK
- A device or emulator for testing

### Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/invoice-app.git
   cd invoice-app
   ```

2. **Install Dependencies**

   Run the following command to install all required packages:

   ```bash
   flutter pub get
   ```

3. **Run the App**

   To start the app, connect a device or open an emulator, then run:

   ```bash
   flutter run
   ```

## Usage

1. **Create a New Invoice**  
   Navigate to the "Invoices" section and click on "Create New Invoice." Fill in the necessary details such as client information, invoice items, and payment terms.

2. **Manage Clients**  
   Add new clients by navigating to the "Clients" section. Save client details for easy selection during invoice creation.

3. **Export Invoice**  
   After creating an invoice, you can export it as a PDF and save or share it via email directly from the app.

## Project Structure

```plaintext
lib/
│
├── main.dart                 # Entry point of the app
├── models/                   # Contains data models
│   ├── client_model.dart
│   └── invoice_model.dart
│
├── screens/                  # All UI screens
│   ├── home_screen.dart
│   ├── invoice_screen.dart
│   └── client_screen.dart
│
├── widgets/                  # Reusable UI components
│   ├── invoice_card.dart
│   └── client_card.dart
│
└── services/                 # Business logic and service classes
    ├── pdf_service.dart
    └── email_service.dart
```

## Technologies Used

- **Flutter**: Framework for building the UI
- **Dart**: Programming language
- **Provider**: State management
- **Path Provider**: For file system paths
- **PDF**: For generating invoices
- **Email Launcher**: For sending invoices via email

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any improvements or bug fixes.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/NewFeature`)
3. Commit your changes (`git commit -m 'Add some new feature'`)
4. Push to the branch (`git push origin feature/NewFeature`)
5. Open a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or need help, feel free to reach out:

- Author: Deep
- Email: deeppatal100267@gmail.com

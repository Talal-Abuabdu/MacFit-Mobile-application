# MacFit Mobile Application

MacFit is a fitness tracking mobile application developed using Flutter and Dart. It is designed to assist MacFit gym members in organizing their training according to muscle groups, accessing instructional media, and tracking progress throughout their fitness routines. The application includes Firebase authentication for secure login and has been built following Agile software development principles.

## Features

- Secure login and authentication for MacFit members
- Selection of muscle-specific workouts: biceps, triceps, back, chest, legs
- Visual guidance using instructional images and embedded video links
- Interactive checkboxes to mark completed exercises
- Completion percentage bar to visually track progress
- Password change functionality
- Option to reset all completed exercises

## Technology Stack

- Flutter framework with Dart programming language
- Firebase Authentication and Realtime Database
- Visual Studio Code (development environment)
- GitHub (version control and code hosting)

## Platform Compatibility

- Android 10 and above
- iOS 14 and above
- Optimized for mobile and tablet interfaces

## Known Issues and Future Improvements

### Known Issues
- Image loading time may be slow, depending on network speed
- The "Change Password" button may occasionally require multiple taps to function
- Some navigation buttons are not consistently responsive

### Planned Improvements
- Integration of a sign-out feature for enhanced account control
- Chatbot functionality to provide personalized workout guidance and support
- Social media sharing integration for user motivation and community building
- Extended features for tracking health metrics such as steps, heart rate, sleep patterns, and nutrition using wearable integration

## Development Methodology

MacFit was developed using the Agile methodology. Agile allowed for iterative development, enabling regular testing, peer feedback incorporation, and continuous improvement throughout the project lifecycle. Task management and collaboration were facilitated using Trello, while GitHub was employed for version control, ensuring consistent backups and collaborative updates. The application evolved progressively from a basic UI to a fully functional workout tracker through daily iteration, prototyping, and testing.

## Security and Access

- Only authenticated users with valid MacFit credentials can access the application
- Firebase Authentication is implemented for login and identity verification
- Passwords are encrypted and input is visually hidden
- HTTPS and TLS protocols are enforced for all network communications
- The application meets basic GDPR compliance standards
- Plans are in place to implement two-factor authentication in future versions

## Author

Talal AbuAbdo   
Developed as part of Unit 22 coursework for Axcel International Academy's HND certification

## License

This project is intended for educational purposes only and is not licensed for commercial use.

<p align="center">
    <img src="https://raw.githubusercontent.com/DON2604/menomate/refs/heads/main/menomate/assets/read.png" height="200px" width="200px">
</p>


# Menomate

Menomate is an AI-powered mobile app designed to assist in menstrual health and mental well-being management. The app uses advanced AI algorithms to deliver personalized health insights, offering users a better understanding of their cycles and mental health, all from the convenience of a mobile app.

## Features

### 1. **Menstrual Cycle Tracking**
- **AI-Powered Predictions**: Menomate leverages machine learning algorithms to predict upcoming periods, fertility windows, and related symptoms.
- **Customizable Reminders**: Receive alerts for periods, fertility, and ovulation based on your unique cycle data.

### 2. **Mental Health Monitoring**
- **AI-Based Mood Detection**: Machine learning analyzes your input to detect mood patterns, allowing early detection of stress or anxiety.
- **Mood & Emotion Logging**: Track daily moods and emotions for a deeper understanding of mental health trends.

### 3. **Health Tips & Recommendations**
- **AI-Driven Suggestions**: Get health tips related to menstrual and mental health, customized to your personal data.
- **Self-Care Guidance**: Recommendations for better hydration, nutrition, and sleep habits.

### 4. **Educational Videos & Images**
- **Video Tips**: Access health-related video content directly within the app.
- **Image-Based Tips**: Learn about menstrual and mental health through informative images.

### 5. **Community and Support**
- **Anonymous Forums**: Discuss menstrual and mental health topics with a supportive community.
- **Emergency Resources**: Quick access to emergency contacts and helpful mental health resources.

---

## Technology Stack

- **Frontend**: Flutter (for a seamless cross-platform mobile experience)
- **Backend**: Flask (Python) server for AI processing and data handling
- **AI**: Machine learning models for mood prediction and menstrual health analytics
- **State Management**: Riverpod for managing app state
- **Database**: Cloud-based storage for user data and health records

---

## Screenshots
<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets/544d83e8-3e7a-4c76-86d0-08302a61fe1b" width="300" height="700" />
  <img src="https://github.com/user-attachments/assets/8e3eea6b-ac44-464e-8b40-9cb064679954" width="300" height="700" />
  <img src="https://github.com/user-attachments/assets/7fcde886-1be3-4470-8457-cc38108ec8ac" width="300" height="700" />
</div>




## Python Backend

### Overview
The Python backend of Menomate serves as the core for handling the AI-powered predictions, mood detection, and overall data processing. The backend is built using the **Flask** framework, which is lightweight yet robust, making it ideal for deploying machine learning models and serving API requests.

### Key Features
- **AI Models Integration**: The backend is responsible for running machine learning models that predict mood and menstrual cycle phases based on user input.
- **RESTful API**: The Flask server exposes multiple API endpoints that the mobile app interacts with, such as fetching tips, tracking health data, and delivering personalized suggestions.
- **Data Management**: User data is stored securely and handled efficiently with proper data pipelines to ensure smooth real-time analytics.

### AI and Machine Learning Models
- **Menstrual Health Prediction Model**: This model uses past cycle data to predict ovulation and periods, providing forecasts to the app.
- **Mood Detection Model**: The app takes user inputs (like answers to specific questions) and analyzes these responses to gauge the user’s mental state.

### Flask API Endpoints
- `/tips/<category>`: Provides personalized health tips based on the category (e.g., "Stay hydrated and rest").
- `/mood_detection`: Accepts user inputs to assess mental health and return mood predictions.
- `/cycle_tracking`: Handles menstrual cycle data input and provides upcoming period/ovulation predictions.

### Backend Setup Instructions
1. Clone the backend repository:

   ```bash
   git clone https://github.com/DON2604/menomate.git
   cd backend2
   ```

2. Set up a virtual environment and install dependencies:

   ```bash
   python -m venv venv
   source venv/bin/activate  
   pip install -r requirements.txt
   ```

3. Run the Flask server:

   ```bash
   python app.py
   ```

4. The backend server will be available at `http://127.0.0.1:5000`, and it will serve data to the mobile app via API calls.

---

## Installation

### Prerequisites
- **Flutter** installed on your machine. Follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
- **Python 3.9.11 installed to run the Flask backend server.

### Setup Instructions for the Mobile App
1. Clone the repository:

   ```bash
   git clone https://github.com/DON2604/menomate.git
   cd menomate
   ```

2. Install Flutter dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

### Backend API Integration
- Make sure your Flask backend server is running on the correct host (default: `http://127.0.0.1:5000`) before launching the mobile app to enable communication with the API.

---

## Contributing
We welcome contributions from the community to help improve Menomate! To contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request.

---

## Future Enhancements

- **Integration with Wearables**: Sync with smartwatches for real-time health tracking.
- **AI Chatbot**: An interactive assistant to answer menstrual and mental health queries.
- **Surveys for Mental Health**: Introduce mental health questionnaires for more accurate mood assessments.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

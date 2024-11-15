import 'dart:math';

class HealthTipsProvider {
  static final List<String> words = [
    "Tips",
    "Videos",
  ];

  final List<String> titles = [
    'Tip of the Day',
    'Quote of the Day',
    'Health Advice',
    'Reminder',
    'Fitness Tip',
    'Mental Health Tip',
  ];

  final List<String> phrases = [
    'Stay hydrated for better health.',
    'Stretch and move regularly.',
    'Self-care is essential.',
    'Track your menstrual cycle.',
    'A short walk boosts mood.',
    'Mental health matters too.',
    'Breathe deeply to reduce stress.',
    'Exercise benefits body and mind.',
    'Progress takes time, stay consistent.',
    'Aim for 8 hours of sleep.',
    'Fuel your body with good food.',
    'Stay positive, seek support.',
  ];

  static final items = [
    {
      "label": "headphone",
      "image": "assets/welcome/welcome.gif",
    },
    {
      "label": "tree",
      "image": "assets/welcome/welcome.gif",
    },
    {
      "label": "car",
      "image": "assets/welcome/welcome.gif",
    },
    {
      "label": "class",
      "image": "assets/welcome/welcome.gif",
    },
    {
      "label": "camera",
      "image": "assets/welcome/welcome.gif",
    },
    {"label": "mouse", "image": "assets/welcome/welcome.gif"}
  ];



  final Random _random = Random();

  String getRandomTitle() {
    return titles[_random.nextInt(titles.length)];
  }

  String getRandomPhrase() {
    return phrases[_random.nextInt(phrases.length)];
  }
}

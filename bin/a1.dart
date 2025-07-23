void main() {
  Map details = {
    "course": "Dart Basics",
    "duration": "30 min",
    "isFree": true
  };
  for (var key in details.keys) {
    print('Key: $key, Value: ${details[key]}');
  }
}
class Alert {
  const Alert(
      {required this.senderName,
      required this.eventName,
      required this.start,
      required this.end,
      required this.description,
      required this.tags});

  final String senderName;
  final String eventName;
  final int start;
  final int end;
  final String description;
  final List<String> tags;

  factory Alert.fromJson(Map<String, dynamic>? json) {
    return Alert(
        senderName: json?['sender_name'] ?? '',
        eventName: json?['event'] ?? '',
        start: json?['start'] ?? 0,
        end: json?['end'] ?? 0,
        description: json?['description'] ?? '',
        tags: json?['tags'] ?? []);
  }
}
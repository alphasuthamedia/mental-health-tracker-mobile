import 'dart:convert';

MoodEntry moodEntryFromJson(String str) => MoodEntry.fromJson(json.decode(str));

String moodEntryToJson(MoodEntry data) => json.encode(data.toJson());

class MoodEntry {
    String greeting;
    List<String> instructions;

    MoodEntry({
        required this.greeting,
        required this.instructions,
    });

    factory MoodEntry.fromJson(Map<String, dynamic> json) => MoodEntry(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
    };
}

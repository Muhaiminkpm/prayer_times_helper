library prayer_times_helper;

class PrayerTime {
  final String name;
  final DateTime time;

  PrayerTime({required this.name, required this.time});
}

class PrayerTimesHelper {
  /// Returns today's fixed prayer times
  static List<PrayerTime> getTodaysPrayerTimes() {
    final now = DateTime.now();
    return [
      PrayerTime(name: 'Fajr', time: DateTime(now.year, now.month, now.day, 5, 0)),
      PrayerTime(name: 'Dhuhr', time: DateTime(now.year, now.month, now.day, 12, 30)),
      PrayerTime(name: 'Asr', time: DateTime(now.year, now.month, now.day, 15, 45)),
      PrayerTime(name: 'Maghrib', time: DateTime(now.year, now.month, now.day, 18, 30)),
      PrayerTime(name: 'Isha', time: DateTime(now.year, now.month, now.day, 20, 0)),
    ];
  }

  /// Returns the next upcoming prayer
  static PrayerTime? getNextPrayer() {
    final now = DateTime.now();
    final times = getTodaysPrayerTimes();
    for (var prayer in times) {
      if (prayer.time.isAfter(now)) {
        return prayer;
      }
    }
    return null; // No prayer left today
  }
}

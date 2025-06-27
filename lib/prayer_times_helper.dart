library prayer_times_helper;

class PrayerTime {
  final String name;
  final DateTime time;

  PrayerTime({required this.name, required this.time});
}

class PrayerTimesHelper {
  static final Map<String, DateTime> _overrides = {};

  /// Allow users or admins to override any default prayer time
  static void overrideTimes(Map<String, DateTime> customTimes) {
    _overrides.addAll(customTimes);
  }

  /// Returns today's prayer times, using overrides if available
  static List<PrayerTime> getTodaysPrayerTimes() {
    final now = DateTime.now();
    final defaultTimes = [
      PrayerTime(name: 'Fajr', time: DateTime(now.year, now.month, now.day, 5, 0)),
      PrayerTime(name: 'Dhuhr', time: DateTime(now.year, now.month, now.day, 12, 30)),
      PrayerTime(name: 'Asr', time: DateTime(now.year, now.month, now.day, 15, 45)),
      PrayerTime(name: 'Maghrib', time: DateTime(now.year, now.month, now.day, 18, 30)),
      PrayerTime(name: 'Isha', time: DateTime(now.year, now.month, now.day, 20, 0)),
    ];

    return defaultTimes.map((prayer) {
      if (_overrides.containsKey(prayer.name)) {
        return PrayerTime(name: prayer.name, time: _overrides[prayer.name]!);
      }
      return prayer;
    }).toList();
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
    return null;
  }
}

import 'package:flutter_test/flutter_test.dart';
import 'package:prayer_times_helper/prayer_times_helper.dart';

void main() {
  test('get prayer times and next prayer', () {
    final prayers = PrayerTimesHelper.getTodaysPrayerTimes();
    expect(prayers.length, 5);

    final next = PrayerTimesHelper.getNextPrayer();
    expect(next != null, true);
  });

  test('override specific prayer times', () {
    PrayerTimesHelper.overrideTimes({
      'Fajr': DateTime(2025, 6, 27, 4, 50),
    });

    final prayers = PrayerTimesHelper.getTodaysPrayerTimes();
    final fajr = prayers.firstWhere((p) => p.name == 'Fajr');
    expect(fajr.time.hour, 4);
    expect(fajr.time.minute, 50);
  });
}

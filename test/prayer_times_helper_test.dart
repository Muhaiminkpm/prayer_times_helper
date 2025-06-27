import 'package:flutter_test/flutter_test.dart';
import 'package:prayer_times_helper/prayer_times_helper.dart';

void main() {
  test('get prayer times and next prayer', () {
    final prayers = PrayerTimesHelper.getTodaysPrayerTimes();
    expect(prayers.length, 5);

    final next = PrayerTimesHelper.getNextPrayer();
    expect(next != null, true);
  });
}

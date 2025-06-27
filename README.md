[![pub package](https://img.shields.io/pub/v/prayer_times_helper.svg)](https://pub.dev/packages/prayer_times_helper)

# prayer_times_helper

A simple Dart package to get today’s Islamic prayer times and the next upcoming prayer. This package is lightweight, offline, and easy to use — perfect for prayer-based apps or mosque utility tools.

## ✨ Features

- ✅ Get today’s fixed prayer times: Fajr, Dhuhr, Asr, Maghrib, Isha
- 🕰️ Get the next upcoming prayer for today
- 🔌 **Offline and dependency-free**
- 🛠️ **NEW:** Manually override any prayer time (e.g., mosque-specific changes)

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  prayer_times_helper: ^1.1.0
```

## 🚀 Usage

### 📅 Get Today's Prayer Times

```dart
final prayers = PrayerTimesHelper.getTodaysPrayerTimes();
for (var prayer in prayers) {
  print('${prayer.name}: ${prayer.time}');
}
```

### ⏭️ Get Next Upcoming Prayer

```dart
final nextPrayer = PrayerTimesHelper.getNextPrayer();
if (nextPrayer != null) {
  print('Next prayer: ${nextPrayer.name} at ${nextPrayer.time}');
}
```

### 🛠️ Override Prayer Times (NEW in v1.1.0)
Let mosque admins or users adjust specific times as needed:

```dart
PrayerTimesHelper.overrideTimes({
  'Fajr': DateTime(2025, 6, 27, 4, 50),
  'Maghrib': DateTime(2025, 6, 27, 18, 40),
});
```

📌 Only the overridden names are changed — others will remain using the default times.

### 🔍 Example Output

```
Fajr: 5:00 AM
Dhuhr: 12:30 PM
Asr: 3:45 PM
Maghrib: 6:30 PM
Isha: 8:00 PM

Next prayer: Asr at 3:45 PM
```

## ❤️ Use Cases
- Prayer reminder apps
- Digital mosque display boards
- Offline-capable prayer schedule tools
- Apps needing user- or admin-customizable prayer times

## 📜 License
MIT License. Free to use, distribute, and modify.

## ✉️ Author
Muhaimin KPM  
🔗 GitHub  
📧 muhaiminpallikkal@gmail.com


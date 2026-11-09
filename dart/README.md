# Julian Day Calculator API - Dart/Flutter Client

Julian Day Calculator converts between Gregorian calendar dates and Julian Day Numbers (JDN). Julian Day is a continuous count of days used in astronomy and historical research.

[![pub package](https://img.shields.io/pub/v/apiverve_julianday.svg)](https://pub.dev/packages/apiverve_julianday)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Julian Day Calculator API](https://apiverve.com/marketplace/julianday?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_julianday: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_julianday/apiverve_julianday.dart';

void main() async {
  final client = JuliandayClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'date': '2024-03-15'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "gregorian": "2024-03-15",
    "julianDayNumber": 2460385,
    "modifiedJulianDate": 60384.5,
    "dayOfWeek": "Friday",
    "weekNumber": 11,
    "dayOfYear": 75,
    "daysFromToday": -340
  }
}
```

## API Reference

- **API Home:** [Julian Day Calculator API](https://apiverve.com/marketplace/julianday?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/julianday](https://docs.apiverve.com/ref/julianday?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

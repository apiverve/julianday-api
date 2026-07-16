# Julian Day Calculator API - PHP Package

Julian Day Calculator converts between Gregorian calendar dates and Julian Day Numbers (JDN). Julian Day is a continuous count of days used in astronomy and historical research.

## Installation

Install via Composer:

```bash
composer require apiverve/julianday
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Julianday\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['date' => '2024-03-15']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Julianday\Client;
use APIVerve\Julianday\Exceptions\APIException;
use APIVerve\Julianday\Exceptions\ValidationException;

try {
    $response = $client->execute(['date' => '2024-03-15']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/julianday?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/julianday?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/julianday?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

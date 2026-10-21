# Julian Day Calculator API - Ruby Gem

Julian Day Calculator converts between Gregorian calendar dates and Julian Day Numbers (JDN). Julian Day is a continuous count of days used in astronomy and historical research.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_julianday'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_julianday
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_julianday'

# Initialize the client
client = APIVerve::Julianday::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ date: "2024-03-15" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ date: "2024-03-15" })
  puts response["data"]
rescue APIVerve::Julianday::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Julianday::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Julianday::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/julianday?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/julianday?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/julianday?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

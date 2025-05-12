# WeatherForecasts

Welcome to the Weather App! This iOS application provides users with real-time weather forecasts based on their current location. It offers detailed current, hourly, and 7-day weather forecasts for users to plan their day or week ahead.

# Features:

* **Current Weather**: View current weather conditions.
* **Hourly Forecast**: See weather details for the next 24 hours (rest of today + next day).
* **7-Day Forecast**: Check the weather for the upcoming week.
* **Error Handling**: View error messages if data fetch fails or no network is available.

#

### BDD Specs

## Weather Display Feature Specs

### Story: User requests to see weather information

### Narrative #1

```
As a user
I want the app to fetch and display the weather for my current location
So I can plan my day accordingly
```

#### Scenarios (Acceptance criteria)

```
Given the user has granted location permission
 When the app fetches the weather for the current location
 Then the app should display:
    * current weather
    * hourly forecast (rest of today + full next day)
    * 7-day forecast
```

### Narrative #2

```
As a user
I want the app to fetch and display the weather for Moscow if I deny location permission
So I can still get a weather update even if I deny location access
```

#### Scenarios (Acceptance criteria)

```
Given the user denies location permission
 When the app defaults to Moscow’s coordinates
 Then the app should display:
    * current weather for Moscow
    * hourly forecast (rest of today + full next day)
    * 7-day forecast for Moscow
```

### Narrative #3

```
As a user
I want to see a loading spinner while weather data is being fetched
So I know that the data is loading and I should wait for it to display
```

#### Scenarios (Acceptance criteria)

```
Given the app is fetching weather data
 Then a loading spinner should be shown
 When the data is fetched successfully or an error occurs
 Then the loading spinner should be hidden
```

### Narrative #4

```
As a user
I want to see an error message if the weather data fetch fails
So I can retry to fetch the data
```

#### Scenarios (Acceptance criteria)

```
Given the weather API fetch fails
 Then an error message should be shown
 And a retry button should be available for the user to try fetching data again
```

---

## Use Cases

### UC1: Get Weather for Current Location

#### Data:

* User's location coordinates

#### API Endpoint for Current Weather:

```
http://api.weatherapi.com/v1/current.json?key=fa8b3df74d4042b9aa7135114252304&q=LAT,LON
```

#### Primary course (happy path):

1. Check if location permission is granted.
2. Fetch weather data for the user's current coordinates using the API.
3. Display:

   * Current weather
   * Hourly forecast (rest of today + full next day)
   * 7-day forecast

#### Invalid data – error course (sad path):

1. Display an error message if the data is invalid.

#### No connectivity – error course (sad path):

1. Display a connectivity error message.

---

### UC2: Handle Denied Location

#### Data:

* Default location (Moscow)

#### API Endpoint for 7-Day Forecast:

```
http://api.weatherapi.com/v1/forecast.json?key=fa8b3df74d4042b9aa7135114252304&q=LAT,LON&days=7
```

#### Primary course (happy path):

1. Default to Moscow’s coordinates.
2. Fetch weather data for Moscow using the 7-day forecast API.
3. Display:

   * Current weather for Moscow
   * Hourly forecast (rest of today + full next day)
   * 7-day forecast for Moscow

---

### UC3: Show Loading State

#### Trigger:

* Before the API request starts

#### Primary course (happy path):

1. Show a loading spinner while data is being fetched.
2. Hide the loading spinner once the data is loaded or an error occurs.

---

### UC4: Show Error and Retry

#### Trigger:

* API failure (e.g., no network)

#### Primary course (happy path):

1. Show an error message and a retry button.
2. When the retry button is clicked, attempt to fetch the weather data again.
3. Display the fetched weather data upon success.

---

## Model Specs

### Location

| Property    | Type     |
| ----------- | -------- |
| 'name'      | 'String' |
| 'country'   | 'String' |
| 'latitude'  | 'Double' |
| 'longitude' | 'Double' |
| 'localtime' | 'String' |

### WeatherCondition

| Property  | Type     |
| --------- | -------- |
| 'text'    | 'String' |
| 'iconUrl' | 'String' |
| 'code'    | 'Int'    |

### CurrentWeather

| Property             | Type               |
| -------------------- | ------------------ |
| 'temperatureCelsius' | 'Double'           |
| 'feelsLikeCelsius'   | 'Double'           |
| 'isDay'              | 'Bool'             |
| 'condition'          | 'WeatherCondition' |
| 'windKph'            | 'Double'           |
| 'humidity'           | 'Int'              |
| 'uvIndex'            | 'Double'           |

### HourlyForecast

| Property             | Type               |
| -------------------- | ------------------ |
| 'time'               | 'String'           |
| 'temperatureCelsius' | 'Double'           |
| 'isDay'              | 'Bool'             |
| 'condition'          | 'WeatherCondition' |
| 'humidity'           | 'Int'              |
| 'windKph'            | 'Double'           |
| 'chanceOfRain'       | 'Int'              |

### DailyForecast

| Property         | Type               |
| ---------------- | ------------------ |
| 'date'           | 'String'           |
| 'maxTempCelsius' | 'Double'           |
| 'minTempCelsius' | 'Double'           |
| 'avgTempCelsius' | 'Double'           |
| 'condition'      | 'WeatherCondition' |
| 'chanceOfRain'   | 'Int'              |
| 'sunrise'        | 'String'           |
| 'sunset'         | 'String'           |

### Forecast

| Property | Type                |
| -------- | ------------------- |
| 'daily'  | '\[DailyForecast]'  |
| 'hourly' | '\[HourlyForecast]' |

### WeatherDashboard

| Property   | Type             |
| ---------- | ---------------- |
| 'location' | 'Location'       |
| 'current'  | 'CurrentWeather' |
| 'forecast' | 'Forecast'       |

---

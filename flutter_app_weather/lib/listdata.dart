class WeatherItem {
  final String location;
  final String temperature;
  final String time;
  final String img;
  const WeatherItem({this.location, this.temperature, this.time, this.img});
}

class WeatherItems {
  static List<WeatherItem> loadWeatherItem() {
    const weatherItems = <WeatherItem>[
      WeatherItem(
          location: "My Location",
          temperature: "27°",
          time: "Surat",
          img: "assets/cloud.jpg"),
      WeatherItem(
          location: "Mumbai",
          temperature: "29°",
          time: "11:55",
          img: "assets/smoke.jpeg"),
      WeatherItem(
          location: "Ahmadabad",
          temperature: "29°",
          time: "11:55",
          img: "assets/clouds.jpg"),
      WeatherItem(
          location: "Mississauga",
          temperature: "1°",
          time: "11:55",
          img: "assets/night.jpg"),
      WeatherItem(
          location: "Toronto",
          temperature: "1°",
          time: "11:55",
          img: "assets/cloud.jpg"),
      WeatherItem(
          location: "New York",
          temperature: "2°",
          time: "11:55",
          img: "assets/smoke.jpeg"),
      WeatherItem(
          location: "Delhi",
          temperature: "17°",
          time: "11:55",
          img: "assets/clouds.jpg"),
      WeatherItem(
          location: "Calangute",
          temperature: "29°",
          time: "11:55",
          img: "assets/night.jpg"),
      WeatherItem(
          location: "Jaipur",
          temperature: "29°",
          time: "11:55",
          img: "assets/night.jpg"),
      WeatherItem(
          location: "Udaipur",
          temperature: "29°",
          time: "11:55",
          img: "assets/night.jpg")
    ];
    return weatherItems;
  }
}

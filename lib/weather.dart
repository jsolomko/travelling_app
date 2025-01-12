import 'dart:ffi';
import 'dart:math';

main() {
  var weatherNotifier = WeatherNotifier();
  var generator = WeatherGenerator(observeWeather: weatherNotifier);

  generator.generate();
}

class WeatherGenerator {
  ObserveWeather<int> observeWeather;

  WeatherGenerator({required this.observeWeather});

  generate() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 3), () {
        var temp = Random().nextInt(60);
        print("temp is $temp значит:");
        observeWeather.observe(temp);
      });
    }
  }
}

class WeatherNotifier extends ObserveWeather<int> {
  @override
  observe(temperature) {
    if (temperature < 15) {
      print("На улице холодно, меньше 10 градусов градусов");
    } else if (temperature > 15 && temperature < 20) {
      print("На улице прохладно, больше 10 и меньше 20 градусов");
    } else if (temperature > 20 && temperature < 34) {
      print("На улице тепло, больше 20 градусов");
    } else if (temperature > 35) print("На улице жара, больше 35 градусов");
  }
}

abstract interface class ObserveWeather<T> {
  observe(T temperature);
}

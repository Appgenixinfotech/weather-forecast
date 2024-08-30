import 'package:test/test.dart';
import 'package:weatherdemo/ApiService/api_provider.dart';
import 'package:weatherdemo/main.dart';

void main() {
  test(
    "Fetch Api",
    () async {
      bool done = false;
      try {
        var response = await dio
            .get('https://api.openweathermap.org/data/2.5/forecast?lat=21.1702&lon=72.8311&appid=37ea9939152496e5de6ca532f93817fd&units=metric');
        if (response.statusCode == 200) {
          print("---------)${response.data.toString()}");

          done = true;
        } else {
          done = false;
          print("---------)${response.statusCode}");
        }
      } catch (e) {
        // print("${e}");
        print("---------)Failed to get Data: $e");
        done = false;
      }
      expect(done, true);
    },
  );
}

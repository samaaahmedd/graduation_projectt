



import "home_model.dart";
import "model.dart";extension MapApiHomeDataToHomeModel on ApiHomeData {
  HomeModel map() {
    return HomeModel(
        image, name, rate, address, price, age, language, country, gender,userType);
  }
}
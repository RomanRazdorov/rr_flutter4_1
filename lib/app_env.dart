abstract class AppEnv {
  AppEnv._();

  static int index = 0;
  static List<int> myList =
      List<int>.generate(10, (index) => index, growable: true);
}

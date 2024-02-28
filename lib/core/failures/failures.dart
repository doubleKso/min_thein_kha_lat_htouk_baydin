abstract class Failure {
  final String? e;

  Failure({this.e});
}

class LogicFailure extends Failure {
  LogicFailure({super.e});
  void printLog() {
    print(e);
  }
}

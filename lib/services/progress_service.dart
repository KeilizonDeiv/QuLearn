class ProgressService {
  Future<Map<String, double>> getWeeklyProgress() async {
    return <String, double>{'Mon': 20, 'Tue': 40, 'Wed': 60, 'Thu': 30, 'Fri': 80, 'Sat': 50, 'Sun': 70};
  }
}



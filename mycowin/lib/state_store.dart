import 'package:shared_preferences/shared_preferences.dart';

class StateStore {
  String stateName;
  num stateId;
  String districtName;
  num districtId;
  int pinCode;
  num age;
  bool notificationsEnabled;
  String notificationsFreqUnit;
  int notificationsFreqValue;

  StateStore(
      this.stateName,
      this.stateId,
      this.districtName,
      this.districtId,
      this.pinCode,
      this.age,
      this.notificationsEnabled,
      this.notificationsFreqUnit,
      this.notificationsFreqValue);

  static Future<StateStore> fromStore() async {
    final prefs = await SharedPreferences.getInstance();
    String stateName = prefs.getString('sName') ?? null;
    if (stateName == null) {
      return null;
    }

    num stateId = prefs.getInt('sId') ?? -1;
    String districtName = prefs.getString('dName') ?? null;
    num districtId = prefs.getInt('dId') ?? -1;
    num age = prefs.getInt('age') ?? -1;

    bool notifEnabled = prefs.getBool('nE') ?? false;
    String notifUnit = prefs.getString('nFU') ?? null;
    int notifValue = prefs.getInt('nFV') ?? -1;

    return new StateStore(stateName, stateId, districtName, districtId, 1, age,
        notifEnabled, notifUnit, notifValue);
  }

  Future saveStore() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sName', stateName);
    prefs.setInt('sId', stateId);
    prefs.setString('dName', districtName);
    prefs.setInt('dId', districtId);
    prefs.setInt('age', age);
    prefs.setInt('pin', pinCode);
    prefs.setBool("nE", notificationsEnabled);
    prefs.setString("nFU", notificationsFreqUnit);
    prefs.setInt("nFV", notificationsFreqValue);
  }
}

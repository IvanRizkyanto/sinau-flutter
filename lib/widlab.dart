import './blueprint.dart';

var profileBox = new Box(50, double.infinity, "Profile");
var bigBox = new Box(150, double.infinity, "Big Box");
var smallBox = new Box(100, double.infinity, "Small Box");

void init() {
  profileBox.setMargin(5, 0, 5, 0);
  bigBox.setMargin(5, 0, 5, 0);
  smallBox.setMargin(5, 0, 5, 0);
}

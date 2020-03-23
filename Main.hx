import mtasa.server.ped.Functions.getPedStat;
import mtasa.server.ped.Functions.createPed;
import mtasa.server.ped.Functions.getPedWeapon;

class Main {
  public static function main() {
    var ped = createPed(123, 0, 0, 0);
    var weapon = getPedWeapon(ped);
  }
}
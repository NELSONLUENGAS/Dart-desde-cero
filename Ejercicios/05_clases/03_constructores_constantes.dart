class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}

main() {
  const socorro = const Location(23.600, -34.678);
  const socorro1 = const Location(23.600, -34.678);
  const socorro2 = const Location(23.601, -34.678);

  print(socorro == socorro1); //True
  print(socorro1 == socorro2); //False
}

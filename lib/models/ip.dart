class Ip {
  String ip;
  String region;
  String postalCode;
  String city;

  Ip({required this.ip, required this.region, required this.postalCode, required this.city});//costruttore dove specifico che e obbligatorio l'ip

  @override
  String toString() {
    return '\nip: $ip,\n region: $region,\n postalCode: $postalCode,\n city: $city ';
  }
}
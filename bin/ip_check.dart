import 'package:ip_check/ip_check.dart' as ip_check;//importiamo nel file cio che abbiamo su lib e useremo ip_check e avremo tutti i metodi

void main(List<String> arguments) async {
  final ip = await ip_check.getIp(); 
  print("My IP informations are: $ip");
}

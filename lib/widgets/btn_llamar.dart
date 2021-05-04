part of 'widgets.dart';

class BtnLlamar extends StatelessWidget {
  final String number;
  const BtnLlamar({@required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff00939d), borderRadius: BorderRadius.circular(200)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff00939d),
          onPrimary: Colors.white.withOpacity(1.0),
        ),
        onPressed: () => _launchURL(number),
        child: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FadeAnimation(
                1.7,
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff00939d),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "LLAMAR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }

  void _launchURL(String number) async => await canLaunch('tel:$number')
      ? await launch('tel:$number')
      : throw 'Could not launch $number';
}

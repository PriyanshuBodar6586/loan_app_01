import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Lumpsum extends StatefulWidget {
  const Lumpsum({Key? key}) : super(key: key);

  @override
  State<Lumpsum> createState() => _LumpsumState();
}

class _LumpsumState extends State<Lumpsum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("SIP vs Lumpsum"),
      body: mutual("""SIP vs Lumpsum
Both SIP and lump-sum investments allow investors to benefit from potential wealth creation through mutual funds. However, the primary difference between SIP and lumpsum methods is the frequency of investment.

SIPs allow you to pump in money into a mutual fund scheme periodically, such as daily, weekly, monthly, quarterly or half-yearly etc. On the other hand, lump-sum investments are a one-time bulk investment in a particular scheme. The minimum investment amount also varies. You can begin investing in SIPs with as little as Rs.500 per month while generally lump-sum investments need at least Rs.1,000.

If you are an investor with a small but regular amount of money available for investment, SIPs can be a more suitable investment option. For investors with a relatively high investment amount and risk tolerance, lump-sum investments may be more beneficial."""),
    );
  }
}

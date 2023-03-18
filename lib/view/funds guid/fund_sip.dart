import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Fund_sip extends StatefulWidget {
  const Fund_sip({Key? key}) : super(key: key);

  @override
  State<Fund_sip> createState() => _Fund_sipState();
}

class _Fund_sipState extends State<Fund_sip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Funds v/s sip?"),
      body: mutual("""Mutual Fund vs SIP - The Key Differences Between Mutual funds and SIP
What is difference between sip and mutual funds is often a common question asked by new investors. Let us find out the difference between sip and mutual fund in detail here-

Investment Value
The investment in mutual funds is done in lumpsum form while the investment in SIP is done in smaller recurring amounts on a monthly or quarterly basis.

Investment Form
The investment is made in debt instruments, debt mutual funds, equity mutual funds, and hybrid instruments, which is a mix of both equity and debt funds.

The Volatility of the Market
The market is constantly changing into a bearish trend and a bullish trend. These ever-changing market trends have a larger impact on mutual funds than on SIP as the investment value of mutual funds is higher than that of SIP. 

Charges
The AMC (Annual Maintenance Charge) and the other charges, like transaction cost, are higher in mutual funds than in SIP as the investment value of a mutual fund is larger. In mutual funds, the charges incurred by way of fund manager’s fees and the transaction value is on the higher side, while in SIP, the investment value and the trade value are always on the lower side. 

Redemption
Both SIP and mutual funds are highly liquidated forms of investment. The only difference is the redemption charges are on the higher side in mutual funds than in SIP.

A Mutual Fund is an investment vehicle allowing you to gain exposure to stocks, bonds, or other financial instruments. While a SIP is a tool to invest in a Mutual Fund. Comparing Mutual Funds and SIPs is like comparing apples and oranges – they are two completely different concepts. A mutual fund is an investment avenue while a SIP is a method of investing in a mutual fund.

Key Takeaways - SIP vs Mutual Fund
Mutual funds and SIP are subjected to market risk.
Mutual funds are a lumpsum form of investment, while SIP is a recurring form of investment.
The amount of investment in mutual funds is on the higher side, while the investment in SIP is on the lower side.
Mutual funds and SIP have taxation benefits under Section 80C of the Income Tax Act, where the investor can claim up to Rs 1,50,000 exemption."""),
    );
  }
}

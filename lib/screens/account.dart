import 'package:flutter/material.dart';
import 'package:forth_flutter_task/conestans.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({super.key});
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'User Profile',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color(0x9D000000),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 64,
                      height: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(27),
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Mohamed Klibar',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.edit_outlined,
                          color: MyColors.mainColor,
                          size: 18,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Klibar@gmail.com',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color(0xff7C7C7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          ProfileCategory(
            profileIcon: Icons.inventory_2_outlined,
            tilte: 'Orders',
          ),
          Divider(),
          ProfileCategory(
            profileIcon: Icons.article_outlined,
            tilte: 'My Details',
          ),
          Divider(),
          ProfileCategory(
            profileIcon: Icons.location_on_outlined,
            tilte: 'Delivery Address',
          ),
          Divider(),
          ProfileCategory(
            profileIcon: Icons.credit_card_outlined,
            tilte: 'Payment Methods',
          ),
          Divider(),
          ProfileCategory(
            profileIcon: Icons.local_offer_outlined,
            tilte: 'Promo Cord',
          ),
          Divider(),
          ProfileCategory(
            profileIcon: Icons.notifications_outlined,
            tilte: 'Notifecations ',
          ),
          Divider(),
          ProfileCategory(profileIcon: Icons.help_outline, tilte: 'Help'),
          Divider(),
          ProfileCategory(profileIcon: Icons.info_outlined, tilte: 'About'),
          Divider(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 67),
                backgroundColor: Color(0xffF2F3F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Icon(
                    Icons.logout,
                    color: MyColors.mainColor,
                    size: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  Expanded(
                    child: Text(
                      'Log Out',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: MyColors.mainColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

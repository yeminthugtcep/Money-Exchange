import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';

import 'package:mm_rate/exchange/dart_object.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final String api = "http://forex.cbm.gov.mm/api/latest";
  late DartObjectPage? dob;
  bool isLoading = false;

  void initState() {
    super.initState();
    GetData();
  }

  GetData() async {
    setState(() {
      isLoading = true;
    });
    var response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      dob = DartObjectPage.fromJson(map);
      setState(() {
        isLoading = false;
      });
    } else {
      print("error");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: Image.asset(
                "images/cbm.jpg",
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            )
          : Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Image.network(
                          "https://forex.cbm.gov.mm//template/img/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          dob!.info.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Text(
                        dob!.description.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          DateFormat("EEEE dd, MMMM").format(DateTime.now()),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 200,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ListView(children: [
                    listTileWidget(
                        CountryName: "United Kingdom",
                        Currency: "Sterling Pound",
                        CountryFlag:
                            "https://i.pinimg.com/originals/4f/f7/36/4ff736715682f408b3683cbc89c8e166.jpg",
                        Rates: dob!.rates!.eGP.toString()),
                    listTileWidget(
                        CountryName: "United State",
                        Currency: "USD Dollar",
                        CountryFlag:
                            "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/255px-Flag_of_the_United_States.svg.png",
                        Rates: dob!.rates!.uSD.toString()),
                    listTileWidget(
                        CountryName: "Euro",
                        Currency: "EUR",
                        CountryFlag:
                            "https://w7.pngwing.com/pngs/525/382/png-transparent-european-union-flag-of-europe-flags-graphics-blue-flag-computer-wallpaper.png",
                        Rates: dob!.rates!.eUR.toString()),
                    listTileWidget(
                        CountryName: "Singapore",
                        Currency: "SGd Dollar",
                        CountryFlag:
                            "https://img.freepik.com/premium-photo/singapore-flag-waving-wind_2227-2315.jpg?w=2000",
                        Rates: dob!.rates!.sGD.toString()),
                    listTileWidget(
                        CountryName: "Japan",
                        Currency: "JPY Yen",
                        CountryFlag:
                            "https://m.media-amazon.com/images/I/51P0jxys+pL._AC_SL1500_.jpg",
                        Rates: dob!.rates!.jPY.toString()),
                    listTileWidget(
                        CountryName: "Malaysian",
                        Currency: "Ringgit MYR",
                        CountryFlag:
                            "https://cdn.britannica.com/31/4031-004-82B0F3A9/Flag-Malaysia.jpg",
                        Rates: dob!.rates!.mYR.toString()),
                    listTileWidget(
                        CountryName: "Thailand",
                        Currency: "Baht THB",
                        CountryFlag:
                            "https://cdn.britannica.com/38/4038-004-111388C2/Flag-Thailand.jpg",
                        Rates: dob!.rates!.tHB.toString()),
                    listTileWidget(
                        CountryName: "Brunei",
                        Currency: "Dollar BND",
                        CountryFlag:
                            "https://cdn11.bigcommerce.com/s-e2nupsxogj/images/stencil/500x659/products/1389/24488/l9cdafcgnxgrnemjbw5l__00753.1669153191.jpg?c=1",
                        Rates: dob!.rates!.bND.toString()),
                    listTileWidget(
                        CountryName: "Bangladesh Taka",
                        Currency: "BNt",
                        CountryFlag:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png",
                        Rates: dob!.rates!.bDT.toString()),
                  ]),
                ),
              ),
            ]),
    );
  }

  Widget listTileWidget(
      {required String CountryName,
      required String Currency,
      required String CountryFlag,
      required String Rates}) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: Image.network(CountryFlag),
      ),
      title: Text(CountryName),
      subtitle: Text(Currency),
      trailing: Text(Rates),
    );
  }
}

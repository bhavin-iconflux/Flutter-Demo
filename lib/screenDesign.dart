import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Emission {
  final String month;
  final int emission;

  Emission(this.month, this.emission);
}

class ScreenDesign extends StatefulWidget {
  const ScreenDesign({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ScreenDesignState();
  }
}

class ScreenDesignState extends State<ScreenDesign> {
  int _current = 1;
  List<String> text = ['Week', 'Month', 'Year'];
  int selectedChartIndex = 0;
  final CarouselController _controller = CarouselController();
  late List<charts.Series<Emission, String>> seriesList = _createRandomData();

  List<charts.Series<Emission, String>> _createRandomData() {
    final random = Random();

    final emissionSampleData = [
      Emission('Jan', random.nextInt(100)),
      Emission('Feb', random.nextInt(100)),
      Emission('Mar', random.nextInt(100)),
      Emission('Apr', random.nextInt(100)),
      Emission('May', random.nextInt(100)),
      Emission('Jun', random.nextInt(100)),
      Emission('Jul', random.nextInt(100)),
      Emission('Aug', random.nextInt(100)),
      Emission('Sep', random.nextInt(100)),
      Emission('Oct', random.nextInt(100)),
      Emission('Nov', random.nextInt(100)),
      Emission('Dec', random.nextInt(100)),
    ];

    return [
      charts.Series<Emission, String>(
        id: 'Emission',
        domainFn: (Emission emission, _) => emission.month,
        measureFn: (Emission emission, _) => emission.emission,
        data: emissionSampleData,
        fillColorFn: (Emission emission, _) {
          return charts.ColorUtil.fromDartColor(hexToColor("#17b9a0"));
        },
      )
    ];
  }

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        backgroundColor: hexToColor("#f3f3f2"),
        body: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.only(
                      left: deviceWidth(context) * 0.043,
                      right: deviceWidth(context) * 0.043,
                      top: 54),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: deviceWidth(context) * 0.26,
                            child: Image.asset(
                              'assets/images/ic_tree.png',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: deviceWidth(context) * 0.064),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('123 KG',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Lato',
                                        color: hexToColor("#17b9a0"))),
                                SizedBox(height: deviceHeight(context) * 0.005),
                                Text('CO2 this month',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        color: hexToColor("#ababab"),
                                        fontSize: 16)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Container(),
                        margin: const EdgeInsets.only(top: 49),
                      ),
                      Text('Yearly Estimations',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: hexToColor("#575757"),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                          )),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: hexToColor("#f3f3f2"),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: deviceHeight(context) * 0.0182,
                                      top: deviceHeight(context) * 0.0182),
                                  child: Column(
                                    children: [
                                      Text('166 Kg',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Lato',
                                              color: hexToColor("#6c4796"))),
                                      SizedBox(
                                          height:
                                              deviceHeight(context) * 0.008),
                                      Text('CO2 Emissions',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Lato',
                                              color: hexToColor("#ababab"))),
                                    ],
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth(context) * 0.06,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: hexToColor("#f3f3f2"),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: deviceHeight(context) * 0.0182,
                                      top: deviceHeight(context) * 0.0182),
                                  child: Column(
                                    children: [
                                      Text('83 CHF',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Lato',
                                              fontSize: 20,
                                              color: hexToColor("#17b9a0"))),
                                      SizedBox(
                                          height:
                                              deviceHeight(context) * 0.008),
                                      Text('Compensation Cost',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Lato',
                                              color: hexToColor("#ababab"))),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: deviceWidth(context) * 0.043,
                  right: deviceWidth(context) * 0.043,
                  top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: hexToColor("#17b9a0"),
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 14, left: 18, bottom: 14, right: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Compensate CO2 Emissions',
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      color: Colors.white)),
                              Switch(
                                value: true,
                                onChanged: (value) {},
                                activeTrackColor: hexToColor('#ababab'),
                                activeColor: Colors.white,
                              )
                            ],
                          ))),
                  const SizedBox(height: 16),
                  Text('Next invoice due on 23.5.2021',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          color: hexToColor('#ababab'))),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 24, left: 0, right: 0),
                                child: Text('My emissions in comparison',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Lato',
                                        color: hexToColor("#333333")))),
                            const SizedBox(height: 24),
                            CarouselSlider(
                              options: CarouselOptions(
                                  viewportFraction: 1,
                                  height: deviceHeight(context) * 0.2,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                              carouselController: _controller,
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                            padding: EdgeInsets.only(
                                                left: 24, top: 24, right: 0)),
                                        SizedBox(
                                          width: deviceWidth(context) * 0.26,
                                          child: Image.asset(
                                            'assets/images/ic_emissions_fridge.png',
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                            child: Column(
                                          children: [
                                            Text(
                                              'Your monthly emissions are equivalent to running your',
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                  fontFamily: 'Lato',
                                                  color: hexToColor("#ababab"),
                                                  fontSize: 14),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              "Fridge for 12 weeks",
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Lato',
                                                color: hexToColor("#17b9a0"),
                                                fontSize: 30,
                                              ),
                                            )
                                          ],
                                        )),
                                      ],
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                                  [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (entry.value == _current + 1
                                            ? hexToColor("#ababab")
                                            : hexToColor("#dddddd"))),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 29, right: 29, top: 24, bottom: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("My Emissions in kg",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                  color: hexToColor("#575757"))),
                          const SizedBox(
                            height: 24,
                          ),
                          SizedBox(
                            height: deviceHeight(context) * 0.25,
                            child: charts.BarChart(
                              seriesList,
                              animate: true,
                              vertical: true,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Stack(
                            children: [
                              Material(
                                elevation: 3,
                                borderRadius: BorderRadius.circular(4),
                                child: Container(
                                  width: deviceWidth(context) * 0.6,
                                  height: 42,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children:
                                        List.generate(text.length, (index) {
                                      return GestureDetector(
                                        onTap: () => {
                                          setState(() {
                                            selectedChartIndex = index;
                                            seriesList = _createRandomData();
                                          })
                                        },
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            color: selectedChartIndex == index
                                                ? hexToColor("#f3f3f2")
                                                : Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                          ),
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 7),
                                              child: Text(
                                                text[index],
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Lato',
                                                    color:
                                                        hexToColor("#6c4796")),
                                              )),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/ic_tree.png',
                            width: deviceWidth(context) * 0.26,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 24, bottom: 0, left: 16, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("How is your CO2 compensated",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Lato',
                                      color: hexToColor("#575757"))),
                              const SizedBox(height: 8),
                              Text(
                                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      color: hexToColor("#ababab"))),
                              const SizedBox(height: 23),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1,
                          child: Container(
                            height: 1,
                            color: hexToColor("#f3f3f2"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 26, bottom: 25, left: 18, right: 18),
                          child: Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("View Supported Projects",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Lato',
                                          color: hexToColor("#575757"))),
                                  Image.asset(
                                    'assets/images/ic_arrow_right.png',
                                    height: 30,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 24, bottom: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("How is it calculated?",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                  color: hexToColor("#575757"))),
                          const SizedBox(height: 8),
                          Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt",
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  color: hexToColor("#ababab"))),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 16, bottom: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/ic_bird_logo.png',
                            height: 26,
                          ),
                          const SizedBox(height: 11),
                          Text(
                              "autoSense and South Pole enable you to compensate your fuel-related CO2 emissions by supporting certified emission reduction projects in Switzerland and around the world. These projects for instance promote clean energy technologies or forest conservation, helping to protect our climate by reducing the amount of greenhouse gas (GHG) emitted to our atmosphere while improving lives for local communities.",
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  color: hexToColor("#ababab"))),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                    child: Container(
                      height: 1,
                      color: hexToColor("#f3f3f2"),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(4.0)),
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18, right: 18, top: 26, bottom: 26),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Learn more about Southpole",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Lato',
                                    color: hexToColor("#575757"))),
                            Image.asset(
                              'assets/images/ic_arrow_right.png',
                              height: 30,
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            )
          ],
        ));
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

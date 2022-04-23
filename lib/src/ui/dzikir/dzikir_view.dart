import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_yodzikir/src/data/models/dzikirs/dzikirs.dart';
import 'package:flutter_yodzikir/src/utils/constants/constants.dart';

class DzikirView extends StatefulWidget {
  const DzikirView({Key? key}) : super(key: key);

  @override
  State<DzikirView> createState() => _DzikirViewState();
}

class _DzikirViewState extends State<DzikirView>
    with SingleTickerProviderStateMixin {
  late final PageController _dzikirCardPageController;
  late final PageController _dzikirDetailPageController;

  double _dzikirCardPage = 0.0;
  double _dzikirDetailsPage = 0.0;
  int _dzikirCardIndex = 0;
  final _showDzikirDetails = ValueNotifier(true);
  bool _lights = false;
  bool _readMode = false;

  @override
  void initState() {
    _dzikirCardPageController = PageController(viewportFraction: 0.77)
      ..addListener(_dzikirCardPagePercentListener);
    _dzikirDetailPageController = PageController()
      ..addListener(_dzikirDetailsPagePercentListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('YoDzikir')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SwitchListTile(
              title: Text(_lights == false ? 'Lights Mode' : 'Dark Mode'),
              value: _lights, // _lights
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
              secondary: Icon(
                _lights == false ? Icons.lightbulb_outline : Icons.lightbulb,
              ),
            ),
            SwitchListTile(
              title: Text(_readMode == false ? 'Dzikir Pagi' : 'Dzikir Petang'),
              value: _readMode, // _lights
              onChanged: (bool value) {
                setState(() {
                  _readMode = value;
                });
              },
              secondary: Icon(
                _readMode == false
                    ? Icons.real_estate_agent_outlined
                    : Icons.real_estate_agent_rounded,
              ),
            ),
            SizedBox(
              height: size.height * 0.5,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final h = constraints.maxHeight;
                  final w = constraints.maxWidth;
                  return PageView.builder(
                    controller: _dzikirCardPageController,
                    clipBehavior: Clip.none,
                    onPageChanged: (page) {
                      _dzikirDetailPageController.animateToPage(
                        page,
                        duration: const Duration(milliseconds: 550),
                        curve: Curves.decelerate,
                      );
                    },
                    itemCount: dzikirs_master.length,
                    itemBuilder: (_, index) {
                      // logic for UI
                      final dzikirData = dzikirs_master[index];
                      final progress = (_dzikirCardPage - index);
                      final scale = lerpDouble(1, .8, progress.abs());
                      final isScrolling = _dzikirCardPageController
                          .position.isScrollingNotifier.value;
                      final isCurrentPage = index == _dzikirCardIndex;
                      final isFirstPage = index == 0;

                      // widget
                      return Transform.scale(
                        alignment: Alignment.lerp(
                          Alignment.topLeft,
                          Alignment.center,
                          -progress,
                        ),
                        scale:
                            isScrolling && isFirstPage ? 1 - progress : scale,
                        child: Center(
                          child: GestureDetector(
                              onTap: () {
                                _showDzikirDetails.value =
                                    !_showDzikirDetails.value;
                                const transitionDuration =
                                    Duration(milliseconds: 550);
                                // Navigator.of(context).push(
                                //   PageRouteBuilder(
                                //     pageBuilder: (_, animation, __) {
                                //       return FadeTransition(
                                //         opacity: animation,
                                //         child: DzikirPage(dzikirData: dzikirData),
                                //       );
                                //     },
                                //   ),
                                // );
                                // Navigator.push(
                                //   context,
                                //   CustomPageRouteBuilder(
                                //     pageBuilder: (_, animation, __) => FadeTransition(
                                //       opacity: animation,
                                //       child: DzikirPage(dzikirData: dzikirData),
                                //     ),
                                //   ),
                                // );

                                Future.delayed(transitionDuration, () {
                                  _showDzikirDetails.value =
                                      !_showDzikirDetails.value;
                                });
                              },
                              child: Text(
                                dzikirData.iqra ?? '-',
                                textDirection: TextDirection.rtl,
                                style:
                                    AppTextStyles.infoTitleTextStyle.copyWith(
                                  fontSize: 30,
                                ),
                              )
                              // Hero(
                              //   tag: dzikirData.image.toString(),
                              //   child: AnimatedContainer(
                              //     duration: const Duration(milliseconds: 300),
                              //     curve: Curves.easeInOut,
                              //     transform: Matrix4.identity()
                              //       ..translate(
                              //         isCurrentPage ? 0.0 : -20.0,
                              //         isCurrentPage ? 0.0 : 60.0,
                              //       ),
                              //     decoration: BoxDecoration(
                              //       image: DecorationImage(
                              //         image: AssetImage('${dzikirData.image}'),
                              //         fit: BoxFit.cover,
                              //       ),
                              //       borderRadius: const BorderRadius.all(
                              //         Radius.circular(70.0),
                              //       ),
                              //       boxShadow: [
                              //         BoxShadow(
                              //           color: Colors.black.withOpacity(.2),
                              //           blurRadius: 25,
                              //           offset: const Offset(0, 25),
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: PageView.builder(
                  controller: _dzikirDetailPageController,
                  physics: const NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: dzikirs_master.length,
                  itemBuilder: (_, index) {
                    final dzikirData = dzikirs_master[index];
                    final opacity =
                        (index - _dzikirDetailsPage).clamp(0.0, 1.0);
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Opacity(
                        opacity: 1 - opacity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: dzikirData.title.toString(),
                              child: Material(
                                type: MaterialType.transparency,
                                child: Text(
                                  dzikirData.title.toString().toUpperCase(),
                                  style: AppTextStyles.nameTextStyle.copyWith(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            ValueListenableBuilder<bool>(
                              valueListenable: _showDzikirDetails,
                              builder: (_, value, child) {
                                return Visibility(
                                  visible: value,
                                  child: child!,
                                );
                              },
                              child: SingleChildScrollView(
                                child: Container(
                                  child: Text(
                                    dzikirData.meaning?.idMeaning ?? '',
                                    style:
                                        AppTextStyles.detailsTextStyle.copyWith(
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _dzikirCardPagePercentListener() {
    setState(() {
      _dzikirCardPage = _dzikirCardPageController.page!;
      _dzikirCardIndex = _dzikirCardPageController.page!.round();
    });
  }

  _dzikirDetailsPagePercentListener() {
    setState(() {
      _dzikirDetailsPage = _dzikirDetailPageController.page!;
    });
  }

  @override
  void dispose() {
    _dzikirCardPageController
      ..removeListener(_dzikirCardPagePercentListener)
      ..dispose();
    _dzikirDetailPageController
      ..removeListener(_dzikirDetailsPagePercentListener())
      ..dispose();
    super.dispose();
  }
}

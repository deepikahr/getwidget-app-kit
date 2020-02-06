import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:getflutter/getflutter.dart';

class BadgesPage extends StatefulWidget {
  @override
  _BadgesPageState createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: GFColors.getGFColor(GFColor.success),
            ),
          ),
          backgroundColor: GFColors.getGFColor(GFColor.dark),
          title: const Text(
            'Badges',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: GFTypography(
                text: 'With Buttons',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            size: GFSize.medium,
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Primary',
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Second',
                          color: GFColor.secondary,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Success',
                          color: GFColor.success,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Warning',
                          color: GFColor.warning,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Danger',
                          color: GFColor.danger,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Info',
                          color: GFColor.info,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Light',
                          color: GFColor.light,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Dark',
                          textStyle: TextStyle(
                              color: GFColors.getGFColor(GFColor.white)),
                          color: GFColor.dark,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: GFButtonBadge(
                          icon: const GFBadge(
                            text: '6',
                            shape: GFBadgeShape.pills,
                          ),
                          onPressed: () {},
                          text: 'Link',
                          color: GFColor.transparent,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: GFTypography(
                text: 'Icon with Badges',
                type: GFTypographyType.typo5,
                dividerWidth: 25,
                dividerColor: Color(0xFF19CA4B),
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/primary.svg',
                                color: GFColors.getGFColor(GFColor.primary),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/secondary.svg',
                                color: GFColors.getGFColor(GFColor.secondary),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/success.svg',
                                color: GFColors.getGFColor(GFColor.success),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/warning.svg',
                                color: GFColors.getGFColor(GFColor.warning),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/danger.svg',
                                color: GFColors.getGFColor(GFColor.danger),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.circle,
                          )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/info.svg',
                                color: GFColors.getGFColor(GFColor.info),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.standard,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/light.svg',
                                color: GFColors.getGFColor(GFColor.light),
                              )),
                          counterChild: const GFBadge(
                            text: '12',
                            shape: GFBadgeShape.square,
                          )),
                      GFIconBadge(
                          child: GFIconButton(
                              type: GFButtonType.transparent,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'lib/assets/icons/dark.svg',
                                color: GFColors.getGFColor(GFColor.dark),
                              )),
                          counterChild: const GFBadge(
                              text: '124',
                              shape: GFBadgeShape.pills,
                              size: 25.0)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}

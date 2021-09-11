import 'package:flutter/material.dart';

import '../../../shared/resources/resources.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;

  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  EdgeInsetsGeometry get padding => EdgeInsets.only(bottom: 4.0);

  static final List<_BottomNavigationBarItemViewModel> items = [
    _BottomNavigationBarItemViewModel(
      label: 'Inicio',
      icon: Icon(AppCustomIcons.icHomeAlt),
      activeIcon: Icon(AppCustomIcons.icHomeAlt),
    ),
    _BottomNavigationBarItemViewModel(
      label: 'Clube Alelo',
      icon: Icon(AppCustomIcons.icTag),
      activeIcon: Icon(AppCustomIcons.icTagSolid),
    ),
    _BottomNavigationBarItemViewModel(
      label: 'Mensagens',
      icon: Icon(AppCustomIcons.icBell),
      activeIcon: Icon(AppCustomIcons.icBellSolid),
    ),
    _BottomNavigationBarItemViewModel(
      label: 'Opções',
      icon: Icon(AppCustomIcons.icCog),
      activeIcon: Icon(AppCustomIcons.icCogSolid),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedLabelStyle: AppTypography.green12w500Museo,
      unselectedLabelStyle: AppTypography.grayDark12w500Museo,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      enableFeedback: false,
      backgroundColor: AppColors.grayBottomAppBar,
      elevation: 0,
      iconSize: 24.0,
      selectedFontSize: 12.0,
      selectedItemColor: AppColors.green,
      unselectedItemColor: AppColors.grayDark,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      type: BottomNavigationBarType.fixed,
      items: items
          .map<BottomNavigationBarItem>(
            (e) => BottomNavigationBarItem(
              icon: Padding(
                padding: padding,
                child: e.icon,
              ),
              activeIcon: Padding(
                padding: padding,
                child: e.activeIcon,
              ),
              label: e.label,
              backgroundColor: AppColors.grayBottomAppBar,
            ),
          )
          .toList(),
    );
  }
}

class _BottomNavigationBarItemViewModel {
  final String label;
  final Widget icon;
  final Widget activeIcon;

  _BottomNavigationBarItemViewModel({
    required this.label,
    required this.icon,
    required this.activeIcon,
  });
}

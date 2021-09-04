import 'package:flutter/widgets.dart';

class HomeState {
  final bool showAllOptions;
  final bool showUnlock;
  final int currentIndexCard;

  HomeState({
    required this.showAllOptions,
    required this.showUnlock,
    required this.currentIndexCard,
  });

  HomeState.empty({
    this.showAllOptions = true,
    this.showUnlock = false,
    this.currentIndexCard = 0,
  });

  HomeState copyWith({
    List<Widget>? cardWidgets,
    bool? showAllOptions,
    bool? showUnlock,
    int? currentIndexCard,
  }) {
    return HomeState(
      showAllOptions: showAllOptions ?? this.showAllOptions,
      showUnlock: showUnlock ?? this.showUnlock,
      currentIndexCard: currentIndexCard ?? this.currentIndexCard,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeState &&
        other.showAllOptions == showAllOptions &&
        other.showUnlock == showUnlock &&
        other.currentIndexCard == currentIndexCard;
  }

  @override
  int get hashCode => showAllOptions.hashCode ^ showUnlock.hashCode ^ currentIndexCard.hashCode;
}

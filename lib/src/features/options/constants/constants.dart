import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Option> menuItems = [
  Option(
    icon: FontAwesomeIcons.solidUser,
    label: 'Editar meu perfil',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.key,
    label: 'Alteração de senha',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.solidComments,
    label: 'Dúvidas e atendimento',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.fileContract,
    label: 'Termos de Uso',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.solidFile,
    label: 'Política de privacidade',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.solidStar,
    label: 'Avalie nosso aplicativo',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.solidCreditCard,
    label: 'Sobre o Meu Alelo',
    onTap: () {},
  ),
  Option(
    icon: FontAwesomeIcons.doorOpen,
    label: 'Sair',
    onTap: () {},
  ),
];

class Option {
  final IconData icon;
  final String label;
  final void Function()? onTap;

  Option({required this.icon, required this.label, this.onTap});
}

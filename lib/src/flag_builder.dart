part of 'country_picker.dart';

@immutable
class FlagBuilder extends StatelessWidget {
  /// Componente widget responsável por exibir as badeirinhas/flags
  const FlagBuilder({
    Key? key,
    required this.image,
    required this.size,
    required this.padding,
    required this.borderRadius,
  }) : super(key: key);

  final String image;
  final Size size;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
          height: size.height,
          width: size.width,
          package: 'countries_label',
        ),
      ),
    );
  }
}

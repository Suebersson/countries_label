import 'package:flutter/material.dart';
import 'package:ephemeral_state_manager/ephemeral_state_manager.dart';
import 'package:dart_dev_utils/dart_dev_utils.dart' show printLog;

part 'labels.dart';
part 'countries_list.dart';
part 'flag_builder.dart';
part 'country_model.dart';

@immutable
class CountryPicker extends StatelessWidget {
  /// Widget principal responsável por exibir uma flag ou dados de uma país
  ///
  /// Através da função [onSelectedCountry] é possível ler os dados do país selecionado
  final String initialCodeCountry;
  final Function(Country) onSelectedCountry;
  final EdgeInsetsGeometry? paddingOnFlag;
  final BorderRadius? borderRadiusOnFlag;
  final Size flagSize;
  final LabelType labelType;
  final TextStyle textStyle;

  final Duration dialogTransitionDuration;
  final Color dialogBarrierColor;
  final Icon dialogIcon;
  final TextStyle dialogInputTextStyle;
  final String dialogHintText;
  final TextStyle dialogHintStyle;
  final TextStyle dialogTextStyle;
  final Color? dialogCursorColor;
  final Size dialogCursorSize;
  final Size? dialogSize;
  final Size dialogFlagSize;
  final Decoration? dialogDecoration;
  final BorderRadius? dialogBorderRadiusOnFlag;

  const CountryPicker({
    Key? key,
    required this.initialCodeCountry,
    required this.onSelectedCountry,
    this.paddingOnFlag,
    this.borderRadiusOnFlag = BorderRadius.zero,
    this.flagSize = const Size(31.0, 22.0),
    this.labelType = LabelType.flagWithName,
    this.textStyle = const TextStyle(fontWeight: FontWeight.w500),
    this.dialogTransitionDuration = const Duration(milliseconds: 500),
    this.dialogBarrierColor = Colors.black38,
    this.dialogIcon = const Icon(Icons.arrow_back),
    this.dialogInputTextStyle = const TextStyle(fontSize: 19.0),
    this.dialogHintText = 'Pesquisar...',
    this.dialogHintStyle = const TextStyle(fontSize: 19.0),
    this.dialogTextStyle = const TextStyle(fontSize: 16.0),
    this.dialogCursorColor,
    this.dialogCursorSize = const Size(2.0, 21.0),
    this.dialogSize,
    this.dialogFlagSize = const Size(52.0, 35.0),
    this.dialogDecoration,
    this.dialogBorderRadiusOnFlag = BorderRadius.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filteredList =
        ValueState<List<Map<String, String>>>(Countries.i.list);
    final screenSize = MediaQuery.of(context).size;
    final appTheme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        showGeneralDialog(
          context: context,
          barrierLabel: "countryPicker",
          barrierDismissible: true,
          barrierColor: dialogBarrierColor,
          transitionDuration: dialogTransitionDuration,
          pageBuilder: (context, animation, secAnimation) {
            return Material(
              color: const Color(0x00000000),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.center,
                  child: Dismissible(
                    onDismissed: (direction) {
                      Navigator.of(context).pop();
                    },
                    key: const Key("DismissibleCountryPicker"),
                    direction: DismissDirection.down,
                    child: Container(
                      height: dialogSize?.height ?? screenSize.height - 100,
                      width: dialogSize?.width ?? screenSize.width - 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 10.0, right: 10.0),
                      decoration: dialogDecoration ??
                          BoxDecoration(
                            color: appTheme.scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                splashColor: appTheme.toggleButtonsTheme.color,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 15.0),
                                  child: dialogIcon,
                                ),
                              ),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  cursorHeight: dialogCursorSize.height,
                                  cursorWidth: dialogCursorSize.width,
                                  cursorColor: dialogCursorColor ??
                                      appTheme.textSelectionTheme.cursorColor,
                                  style: dialogInputTextStyle,
                                  decoration: InputDecoration(
                                    hintText: dialogHintText,
                                    hintStyle: dialogHintStyle,
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (text) {
                                    if (text.isEmpty) {
                                      filteredList.value = Countries.i.list;
                                    } else {
                                      filteredList.value = Countries.i.list
                                          .where((e) =>
                                              e[e.countryInitials]!
                                                  .toLowerCase()
                                                  .contains(
                                                      text.toLowerCase()) ||
                                              e[e.countryName]!
                                                  .toLowerCase()
                                                  .contains(
                                                      text.toLowerCase()) ||
                                              e[e.countryDialCode]!
                                                  .contains(text))
                                          .toList();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Flexible(
                            child: StateSetterBuilder<
                                    List<Map<String, String>>>(
                                valueStateSetter: filteredList,
                                builder: (context, list) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: list.length,
                                    itemBuilder: (context, i) {
                                      Country country =
                                          Country.fromMap(list[i]);

                                      return GestureDetector(
                                        onTap: () {
                                          filteredList.value = Countries.i.list;
                                          onSelectedCountry(country);
                                          Navigator.of(context).pop();
                                        },
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          padding: const EdgeInsets.only(
                                              bottom: 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FlagBuilder(
                                                image: country.flagAddress,
                                                size: dialogFlagSize,
                                                padding: const EdgeInsets.only(
                                                    right: 10.0),
                                                borderRadius:
                                                    dialogBorderRadiusOnFlag!,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    country.name,
                                                    style: dialogTextStyle,
                                                  ),
                                                  const SizedBox(height: 2.0),
                                                  Text(country.dialCode,
                                                      style: dialogTextStyle
                                                          .copyWith(
                                                        color: dialogTextStyle
                                                            .color
                                                            ?.withOpacity(0.7),
                                                        fontSize:
                                                            dialogTextStyle
                                                                    .fontSize! -
                                                                4,
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          transitionBuilder: (context, animation, secAnimation, widget) {
            return SlideTransition(
              position: Tween(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              // position: animation.drive(
              //   Tween(
              //     begin: const Offset(0.0, 1.0),
              //     end: Offset.zero
              //   ).chain(CurveTween(curve: Curves.linear))
              // ),
              child: widget,
            );
          },
        );
      },
      child: ColoredBox(
          color: const Color(0x00000000), child: Labels(countryPicker: this)),
    );
  }
}

enum LabelType {
  onlyName,
  onlyFlag,
  onlyInitials,
  onlyDialCode,
  flagWithName,
  flagWithDialCode,
  flagWithInitials
}

/// `Exemplo de uso`
/// ```
/// class Home extends StatelessWidget {
///   @override
///   Widget build(BuildContext context) {
/// 		return Material(
///       color: Theme.of(context).scaffoldBackgroundColor,
/// 		  child: Center(
///       child: CountryPicker(
///         initialCodeCountry: 'BR',
///         labelType: LabelType.flagWithName,
///         onSelectedCountry: (country){
///           print(country.name);
///         },
///       ),
///     ),
/// 		);
///   }
/// }
/// ```

//rascunho não finalizado para outros widget
/*
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height - 400,
            //width: MediaQuery.of(context).size.width - 40,
            margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),

            child: CupertinoPicker.builder(
              //diameterRatio: 10,
              squeeze: 0.9,
              //magnification: 1.0,
              //useMagnifier: true,
              //offAxisFraction: 1.0,
              backgroundColor: Colors.red[100],
              itemExtent: 40,
              childCount: Countries.i.list.length,
              onSelectedItemChanged: (_){},
              //selectionOverlay: const Divider(),
              itemBuilder: (context, i){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlagBuilder(
                          borderRadius: BorderRadius.circular(15),
                          image: "assets/flags/${Countries.i.list[i]['initials']!.toLowerCase()}.png", 
                          padding: const EdgeInsets.only(right: 12.0),
                          size: const Size(52.0, 40.0),
                        ),
                        Text(
                          Countries.i.list[i]['name']!,
                          //style: countryPicker.textStyle,
                        ),
                      ],
                    ),
                  ),
                );
        
                
            
              } 
            ),
          ),
        ),
      ),
*/

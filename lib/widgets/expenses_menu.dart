import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ExpensesMenu extends StatelessWidget {
  const ExpensesMenu({
    super.key,
    required this.menuItems,
  });

  final List<Map<String, String>> menuItems;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: 134,
      initialSelection: "Daily",
      textStyle: AppStyles.styleMedium16,
      trailingIcon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        size: 24,
        color: Color(0xff064061),
      ),
      menuStyle: MenuStyle(
          backgroundColor: const WidgetStatePropertyAll(Colors.white),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          )),
      selectedTrailingIcon: const Icon(
        Icons.keyboard_arrow_up_sharp,
        size: 24,
        color: Color(0xff064061),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffF1F1F1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffF1F1F1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffF1F1F1)),
        ),
      ),
      dropdownMenuEntries: menuItems.map(
        (e) {
          return DropdownMenuEntry(
            value: e["value"],
            label: e["label"]!,
          );
        },
      ).toList(),
    );
  }
}

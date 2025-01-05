//
// import 'package:gameapp/core/extensions/build_context_extension.dart';
//
// import '../core/constants/imports.dart';
//
// class CustomDropDown extends StatelessWidget {
//
//    CustomDropDown({super.key,this.backgroundColor,  required this.items, this.selectedValue, this.onChange, required this.hint,this.title,this.textColor});
//   final List<DropDownItemModel> items; final DropDownItemModel? selectedValue;
//   final String hint;
//   final onChange;
//   final String? title;
//   final Color? textColor;
//   final Color? backgroundColor;
//
//   final TextEditingController textEditingController = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//
//         if(title!=null) Text(title!,style: context.bodyLarge,),
//         if(title!=null) SB.h(7),
//         DropdownButtonHideUnderline(
//           child: DropdownButton2<DropDownItemModel>(
//             isExpanded: true,
//             hint: Text(
//               hint,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: context.grey,
//               ),
//             ),
//             items: items
//                 .map((item) => DropdownMenuItem(
//               value: item,
//               child: Text(
//                 item.name,
//                 style:  TextStyle(
//                   fontSize: 14,
//                   color:textColor?? context.onPrimary
//                 ),
//               ),
//             ))
//                 .toList(),
//             value: selectedValue,
//             style: context.bodyLarge!.copyWith(color: context.onPrimary),
//             onChanged: onChange,
//
//             buttonStyleData:  ButtonStyleData(
//
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 height: 45,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(
//                       color: context.grey,
//                     )
//                 )
//             ),
//             iconStyleData: IconStyleData(icon: Icon(Icons.keyboard_arrow_down_outlined)),
//             dropdownStyleData:DropdownStyleData(
//               decoration: BoxDecoration(
//                 color:backgroundColor?? context.secondary
//               ),
//               maxHeight: 200,
//             ),
//             menuItemStyleData: const MenuItemStyleData(
//               height: 40,
//             ),
//
//             // dropdownSearchData: DropdownSearchData(
//             //   searchController: textEditingController,
//             //   searchInnerWidgetHeight: 50,
//             //   searchInnerWidget: Container(
//             //     height: 50,
//             //     padding: const EdgeInsets.only(
//             //       top: 8,
//             //       bottom: 4,
//             //       right: 8,
//             //       left: 8,
//             //     ),
//             //     child: TextFormField(
//             //       expands: true,
//             //       maxLines: null,
//             //       controller: textEditingController,
//             //       decoration: InputDecoration(
//             //         isDense: true,
//             //         contentPadding: const EdgeInsets.symmetric(
//             //           horizontal: 10,
//             //           vertical: 8,
//             //         ),
//             //         hintText: 'Search for an item...',
//             //         hintStyle: const TextStyle(fontSize: 12),
//             //         border: OutlineInputBorder(
//             //           borderRadius: BorderRadius.circular(8),
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             //   searchMatchFn: (item, searchValue) {
//             //     return item.value.toString().contains(searchValue);
//             //   },
//             // ),
//             //This to clear the search value when you close the menu
//             onMenuStateChange: (isOpen) {
//               if (!isOpen) {
//                 textEditingController.clear();
//               }
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class DropDownItemModel{
//   final String id, name;
//
//   DropDownItemModel({required this.id, required this.name});
// }

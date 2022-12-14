import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meet2go/cofig/Colors.dart';

class InputSearch extends StatefulWidget {
  Function? calbackOnChange;
  InputSearch({super.key, this.calbackOnChange});

  @override
  State<InputSearch> createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
      child: TextFormField(
        controller: textController,
        onChanged: (_) => {
          if (widget.calbackOnChange != null)
            widget.calbackOnChange!(textController!.text)
        },
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'Buscar artista o ciudad',
          // hintStyle: HintStyle,
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          filled: true,
          fillColor: AppColors.input_bg_grey,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.input_text_grey,
          ),
        ),
      ),
    );
  }
}

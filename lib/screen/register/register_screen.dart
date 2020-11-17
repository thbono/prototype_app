import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_app/components/vertical_spacer.dart';
import 'package:prototype_app/navigator/router.gr.dart';
import 'package:prototype_app/resource/texts.dart';
import 'package:prototype_app/screen/register/component/name_form_custom.dart';
import 'package:prototype_app/screen/register/mobx/register_mobx.dart';

import 'component/amount_form_custom.dart';
import 'component/birthdate_form_custom.dart';
import 'component/cpf_form_custom.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _mobx = RegisterMobx();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40)
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        VerticalSpacer(8),
                        _nameForm(),
                        VerticalSpacer(8),
                        _cpfForm(),
                        VerticalSpacer(8),
                        _bithdateForm(),
                        VerticalSpacer(8),
                        _amountForm(),
                        VerticalSpacer(12),
                        _documentBtn(),
                        VerticalSpacer(8),
                        _registerBtn(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 160,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Texts.registerTitle,
            style: GoogleFonts.nunito(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          FlatButton(
            onPressed: () => ExtendedNavigator.of(context).push(Routes.associatedScreen),
            color: Colors.white,
            height: 50,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Text(Texts.registerBack,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _nameForm() {
    return NameFormCustom(
        style: GoogleFonts.nunito(fontSize: 16),
        mask: [],
        onChanged: (value) => _mobx.setName(value),
        labelText: Texts.registerFieldName
    );
  }

  Widget _cpfForm() {
    return CpfFormCustom(
        style: GoogleFonts.nunito(fontSize: 16),
        mask: [],
        onChanged: (value) => _mobx.setCpf(value),
        labelText: Texts.registerFieldCpf
    );
  }

  Widget  _bithdateForm() {
    return BirthdateFormCustom(
        style: GoogleFonts.nunito(fontSize: 16),
        mask: [],
        onChanged: (value) => _mobx.setBirthdate(value),
        labelText: Texts.registerFieldBirthdate
    );
  }

  Widget _amountForm() {
    return AmountFormCustom(
        style: GoogleFonts.nunito(fontSize: 16),
        mask: [],
        onChanged: (value) => _mobx.setAmount(value),
        labelText: Texts.registerFieldAmount
    );
  }

  Widget _documentBtn() {
    return FlatButton(
      minWidth: double.infinity,
      onPressed: () => _mobx.document(),
      height: 80,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.blueAccent),
      ),
      child: Column(
        children: [
          Icon(Icons.photo_camera_rounded, color: Colors.blueAccent, size: 40,),
          Text(Texts.registerDocumentButton,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }

  Widget _registerBtn() {
    return FlatButton(
      minWidth: double.infinity,
      onPressed: () {
        _mobx.register();
        ExtendedNavigator.of(context).push(Routes.associatedScreen);
      },
      color: Colors.blueAccent,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Text(Texts.registerSendButton,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

}

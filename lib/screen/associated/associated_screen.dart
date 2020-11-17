import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prototype_app/model/associated.dart';
import 'package:prototype_app/navigator/router.gr.dart';
import 'package:prototype_app/resource/texts.dart';
import 'package:prototype_app/screen/associated/mobx/associated_mobx.dart';

class AssociatedScreen extends StatefulWidget {
  @override
  _AssociatedScreenState createState() => _AssociatedScreenState();
}

class _AssociatedScreenState extends State<AssociatedScreen> {
  final _mobx = AssociatedMobx();

  @override
  void initState() {
    super.initState();
    _mobx.fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
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
              child: Observer(builder: (context) {
                final data = _mobx.associatedList.value ?? null;

                if (data != null) {
                  if (data.length > 0) {
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (_, index) =>
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: _base(data[index]),
                          ),
                    );
                    } else {
                    return Center(child: Text(Texts.associatedNotHasData, style: GoogleFonts.nunito(fontSize: 18),),);
                  }
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
            ),
          ),
        ],
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
          Text(Texts.associatedTitle,
            style: GoogleFonts.nunito(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          FlatButton(
              onPressed: () => ExtendedNavigator.of(context).push(Routes.registerScreen),
              color: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Text(Texts.associatedRegisterButton,
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

  Widget _base(Associated associated) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        color: Colors.blueAccent,
        child: Container(
          padding: EdgeInsets.all(10),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(associated.name ?? '', style: GoogleFonts.nunito(fontSize: 16, color: Colors.white,),),
                  Text(associated.cpf ?? '', style: GoogleFonts.nunito(fontSize: 16, color: Colors.white,),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(LineIcons.clock_o, color: Colors.white,),
                  Text(associated.status ?? '', style: GoogleFonts.nunito(fontSize: 16, color: Colors.white,),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

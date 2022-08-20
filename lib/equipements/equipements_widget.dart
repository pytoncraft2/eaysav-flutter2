import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../modeles/modeles_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EquipementsWidget extends StatefulWidget {
  const EquipementsWidget({
    Key? key,
    this.libelle,
    this.maSlug,
    this.equipements,
  }) : super(key: key);

  final String? libelle;
  final String? maSlug;
  final dynamic equipements;

  @override
  _EquipementsWidgetState createState() => _EquipementsWidgetState();
}

class _EquipementsWidgetState extends State<EquipementsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 50,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Color(0xFFFEC02F),
                            size: 30,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Accueil',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                  child: Text(
                    'Choisir equipement ${widget.libelle}',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'bruleurs',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Bruleurs',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'chaudieres',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Chaudières',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'chauffeBains',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Chauffe-bains',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'climExterieurs',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Clim - Unités extérieurs',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'climInterieurs',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Clim - Unités intérieures',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'pacExterieurs',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'PAC - Unités extérieurs',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'pacInterieurs',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'PAC - Unités intérieures',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 100),
                          reverseDuration: Duration(milliseconds: 100),
                          child: ModelesWidget(
                            libelle: widget.libelle,
                            maSlug: widget.maSlug,
                            equipement: 'regulations',
                          ),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Régulations',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      dense: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

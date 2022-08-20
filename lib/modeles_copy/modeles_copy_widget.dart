import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModelesCopyWidget extends StatefulWidget {
  const ModelesCopyWidget({
    Key? key,
    this.libelle,
    this.maSlug,
    this.equipement,
  }) : super(key: key);

  final String? libelle;
  final String? maSlug;
  final String? equipement;

  @override
  _ModelesCopyWidgetState createState() => _ModelesCopyWidgetState();
}

class _ModelesCopyWidgetState extends State<ModelesCopyWidget> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          'Retour',
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
                    '${widget.libelle}-${widget.equipement}',
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
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

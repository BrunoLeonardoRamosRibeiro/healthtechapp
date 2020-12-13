import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healthtechapp/pages/consultation_guide/consultation_guide_page.dart';
import 'package:healthtechapp/pages/query_history/query_history_page.dart';
import 'package:healthtechapp/pages/shared/widgets/card_button_menu_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140.0),
        child: AppBar(
          elevation: 1,
          title: Text('Olá, Igor!'),
          backgroundColor: Colors.blue[400],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height - 50),
            child: Container(
              height: 80,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 150,
                            child: Text(
                              'Tipo Sanguineo: O+',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 100,
                            child: Text(
                              'Idade: 19',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 150,
                            child: Text(
                              'Sexo: M',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 100,
                            child: Text(
                              'Altura: 1,70m',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 150,
                            child: Text(
                              'Estado Civil: solteiro',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 100,
                            child: Text(
                              'Peso: 60kg',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue[400],
      body: GridView.count(
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        children: [
          CardButtonMenuWidget(
            text: 'Perfil de Saúde',
            onPressed: () {
              Get.to(ConsultationGuidePage());
            },
          ),
          CardButtonMenuWidget(
            text: 'Iniciar Consulta',
            onPressed: () {
              // todo
            },
          ),
          CardButtonMenuWidget(
            text: 'Histórico de Consultas',
            onPressed: () {
              Get.to(QueryHistoryPage());
            },
          ),
          CardButtonMenuWidget(
            text: 'Meus Exames e Consultas',
            onPressed: () {
              // todo
            },
          ),
        ],
      ),
    );
  }
}

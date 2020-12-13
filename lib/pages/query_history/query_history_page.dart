import 'package:flutter/material.dart';
import 'package:healthtechapp/pages/query_history/widgets/item_query_history_card_widget.dart';

class QueryHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 32.0, top: 16, right: 32, bottom: 0),
                  child: Text(
                    'Olá Igor, este é seu histórico de consultas',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  ItemQueryHistoryCardWidget(dataHora: '10/12/2020 - 17:15:23', local: 'Hospital São Francisco', medico: 'Lorm Ypsim', ),
                  ItemQueryHistoryCardWidget(dataHora: '15/07/2019 - 13:00:44', local: 'Hospital São Francisco', medico: 'Raimundo Nonato', ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

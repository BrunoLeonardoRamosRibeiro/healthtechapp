import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthtechapp/pages/book_your_appointment/controllers/book_appointment_controller.dart';
import 'package:healthtechapp/pages/book_your_appointment/widgets/especialidades_list_widget.dart';
import 'package:healthtechapp/pages/book_your_appointment/widgets/item_book_appointment_card_widget.dart';
import 'package:healthtechapp/pages/query_history/widgets/item_query_history_card_widget.dart';
import 'package:healthtechapp/pages/shared/widgets/button_primary_widget.dart';

class BookYourAppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookAppointmentController>(
      init: BookAppointmentController(),
      builder: (controller)=> Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          elevation: 1,
          title: Text('Solicitar atendimento'),
          backgroundColor: Colors.blue[400],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: [
                    ItemBookAppointmentCardWidget(
                      onPressed: () {
                        Get.bottomSheet(
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            height: 400,
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 40,
                                      color: Colors.grey[300],
                                      height: 2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Hospital São Francisco',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Selecione a Especialidade',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Divider(),
                                Container(
                                    child: EspecialidadesListWidget()
                                ),

                                Obx(
                                  ()=> Visibility(
                                    visible: controller.codigoSelecionado.value != 0,
                                    child: MaterialButton(
                                      height: 45,
                                      color: Colors.blueAccent,
                                      child: Text('Solicitar Atendimento', style: TextStyle(color: Colors.white),),
                                      onPressed: (){
                                        CoolAlert.show(
                                            onConfirmBtnTap: (){
                                              Get.back();
                                              Get.back();
                                              Get.back();
                                              Get.snackbar('Solicitação Enviada', "Solicitação enviada com sucesso!");
                                            },
                                            context: Get.context,
                                            type: CoolAlertType.warning,
                                            title: "Confirma Solicitar o Atendimento?",
                                            text: "Você enviará suas informações para o hospital.",
                                            confirmBtnText: "Sim",
                                            cancelBtnText: "Não",
                                            showCancelBtn: true,
                                            confirmBtnColor: Colors.green
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          isDismissible: true,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

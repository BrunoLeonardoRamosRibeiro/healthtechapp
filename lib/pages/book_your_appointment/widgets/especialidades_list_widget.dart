import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthtechapp/pages/book_your_appointment/controllers/book_appointment_controller.dart';

class EspecialidadesListWidget extends StatelessWidget {
  BookAppointmentController bookAppointmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: bookAppointmentController.especialidades.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: (){
            bookAppointmentController.setCodigoSelecionado(bookAppointmentController.especialidades[index].codigo);
          },
          child: Obx(
            ()=> ListTile(
              title: Text(
                  bookAppointmentController.especialidades[index].especialidade),
              trailing: bookAppointmentController.codigoSelecionado.value ==
                      bookAppointmentController.especialidades[index].codigo
                  ? Icon(Icons.check)
                  : null,
            ),
          ),
        );
      },
    );
  }
}

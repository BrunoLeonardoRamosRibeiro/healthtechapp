import 'package:get/get.dart';
import 'package:healthtechapp/models/especialidade_model.dart';

class BookAppointmentController extends GetxController {
  BookAppointmentController();

  RxList<Especialidade> especialidades = List<Especialidade>().obs;

  setEspecialidades(List<Especialidade> value) =>
      especialidades.assignAll(value);

  RxInt codigoSelecionado = RxInt(0);
  setCodigoSelecionado(int value)=> codigoSelecionado.value = value;

  @override
  void onInit() {
    super.onInit();
    setEspecialidades([
      new Especialidade(codigo: 1, especialidade: "Nefrologia"),
      new Especialidade(codigo: 2, especialidade: "Pediatria"),
      new Especialidade(codigo: 3, especialidade: "Cardiologia"),
    ]);
  }
}

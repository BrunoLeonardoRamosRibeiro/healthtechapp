import 'package:flutter/material.dart';

class ItemBookAppointmentCardWidget extends StatelessWidget {
  String nomeHospital;
  String imagem;
  String endereco;
  String horario;
  Function onPressed;

  ItemBookAppointmentCardWidget(
  {this.nomeHospital, this.imagem, this.endereco, this.horario, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: InkWell(
        onTap: onPressed?? (){
          //
        },
        child: Card(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(imagem??
                        'assets/images/HOSPITAL.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8,),
                          Expanded(child: Text(nomeHospital??'Hospital São Francisco', style: TextStyle(fontWeight: FontWeight.bold),), ),
                          Expanded(child: Text(endereco??'Rua das laranjeiras, 1234'), ),
                          Expanded(child: Text(horario??'Aberto: 24 horas')),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

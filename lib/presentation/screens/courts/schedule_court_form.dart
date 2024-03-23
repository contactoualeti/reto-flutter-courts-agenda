import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/courts.dart';
import '../../../domain/entities/weather.dart';
import '../../providers/courts/court_form_provider.dart';
import '../../providers/courts/courts_providers.dart';
import '../widgets/custom_filled_button.dart';
import '../widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

class ScheduleCourtForm extends ConsumerWidget {
  const ScheduleCourtForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Agendamientos'),
            ),
            body: const _newScheduleForm()));
  }
}

class _newScheduleForm extends ConsumerWidget {
  const _newScheduleForm();

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newScheduleForm = ref.watch(courtFormProvider);
    final Weather? weatherResponse =
        ref.watch(courtFormProvider).weatherResponse;
    DateTime selectedDate = DateTime.now();
    _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
      );
      if (picked != null && picked != selectedDate) {
        print('selectedDate $selectedDate');

        final DateFormat formatter = DateFormat('yyyy-MM-dd');
        final String formatted = formatter.format(selectedDate);
        ref.read(courtFormProvider.notifier).onSelectDateChange(formatted);
      }
    }

    ref.listen(courtFormProvider, (previous, next) {
      if (next.errorMessage.isEmpty) return;
      showSnackbar(context, next.errorMessage);
    });
    final dropDownSelectCourt =
        ref.watch(courtFormProvider).dropDownSelectCourt;

    final List<Courts> courtList = ref.watch(courtProvider).courtsData;
    List dropDownSelectValue = ["Canchas de tenis"];
    courtList.forEach((court) {
      dropDownSelectValue.add(court.name);
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomTextFormField(
            label: 'Nombre',
            keyboardType: TextInputType.name,
            onChanged: ref.read(courtFormProvider.notifier).onNameChange,
            errorMessage: newScheduleForm.isFormPosted
                ? newScheduleForm.name.errorMessage
                : null,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.height,
            child: DropdownButton<String>(
              value:
                  dropDownSelectCourt.isNotEmpty ? dropDownSelectCourt : null,
              hint: const Text("Selecciona una cancha"),
              elevation: 16,
              style: const TextStyle(color: Colors.blue),
              onChanged: (String? value) {
                ref
                    .read(courtFormProvider.notifier)
                    .onSelectCourtChange(value as String);
              },
              items: dropDownSelectValue
                  .map((courtName) => DropdownMenuItem<String>(
                        value: courtName,
                        child: Text(courtName),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomFilledButton(
                text: 'Selecciona fecha ',
                buttonColor: Colors.lightGreen,
                onPressed: () => _selectDate(context),
              )),
          const SizedBox(height: 10),
          LayoutBuilder(builder: (context, constraints) {
            if (weatherResponse == null) {
              return const Text(
                'Selecciona una fecha para saber la probabilidad de lluvia',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.red),
              );
            } else {
              return Text(
                'Probabilidad de lluvia ${weatherResponse.daily.precipitation_probability_max.toString()} %',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue),
              );
            }
          }),
          const SizedBox(height: 20),
          SizedBox(
              width: double.infinity,
              height: 60,
              child: CustomFilledButton(
                  text: 'Guardar',
                  buttonColor: Colors.blue,
                  onPressed: newScheduleForm.isPosting
                      ? null
                      : ref.read(courtFormProvider.notifier).onFormSubmit)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

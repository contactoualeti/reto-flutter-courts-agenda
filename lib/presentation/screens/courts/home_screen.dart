import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:tennis_court_scheduling/presentation/screens/courts/schedule_court_form.dart";
import "../../../domain/entities/courts.dart";
import "../../providers/courts/courts_providers.dart";
import "load_screens.dart";

class HomeScreen extends ConsumerWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});
  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyles = Theme.of(context).textTheme;
    final loading = ref.watch(courtProvider).isLoading;

    if (loading == true) {
      return SafeArea(
        child: Scaffold(
          body: Column(children: const [
            SizedBox(height: 150),
            Text('Cargando canchas'),
            Center(
                child: CircularProgressIndicator(
              strokeWidth: 3,
            )),
          ]),
        ),
      );
    }
    final List<Courts> courts = ref.watch(courtProvider).courtsData;
    if (courts.isNotEmpty) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.redAccent,
              title: const Text('Lista de canchas disponibles'),
            ),
            body: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 200),
                    itemCount: courts.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      final courtsName = courts[index].name;
                      return ListTile(
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child:
                              Column(mainAxisSize: MainAxisSize.max, children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(18.0),
                                      bottomLeft: Radius.circular(18.0),
                                      bottomRight: Radius.circular(18.0),
                                      topRight: Radius.circular(0.0)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 10.0),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, left: 16, right: 16),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8, right: 8, top: 0),
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 40,
                                                        width: 2,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.blue
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          4.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8,
                                                                right: 8,
                                                                top: 10,
                                                                bottom: 5),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 4,
                                                                      bottom:
                                                                          3),
                                                                  child: Text(
                                                                    courtsName!,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          16,
                                                                      color: Color(
                                                                          0xFF17262A),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              4,
                                                                          bottom:
                                                                              3),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            floatingActionButton: const _Button()),
      );
    }
    if (courts.isEmpty) {
      return SafeArea(
        child: Scaffold(
          body: Column(children: [
            Text('No tenemos canchas disponibles', style: textStyles.bodySmall),
          ]),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Text('Hubo un error cargando las canchas...',
              style: textStyles.bodySmall),
          const Center(
              child: CircularProgressIndicator(
            strokeWidth: 3,
          )),
        ]),
      ),
    );
  }
}

class _Button extends ConsumerWidget {
  const _Button();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      label: const Text('Agendar cancha'),
      icon: const Icon(Icons.update),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScheduleCourtForm()),
        );
      },
    );
  }
}

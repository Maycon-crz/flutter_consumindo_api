import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/http/http_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';

class HtttpPage extends GetView<HttpController> {
  const HtttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Http'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.name),
              // subtitle: Text('Quantidade de profiles: ${item.profile.length}'),
            );
          },
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(error!),
            TextButton(
              onPressed: () {
                () => controller.findUsers();
              },
              child: const Text("Tentar novamente"),
            ),
          ]),
        );
      }),
    );
  }
}

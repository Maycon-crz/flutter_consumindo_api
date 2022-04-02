import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';
import 'get_connect_controller.dart';

class GetConnectPage extends GetView<GetConnectController> {
  const GetConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetConnect'),
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

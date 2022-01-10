import 'package:doandidong/layout/footter.dart';
import 'package:flutter/material.dart';

class PopupConfirm extends StatefulWidget {
  PopupConfirm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PopupConfirmPageState();
  }
}

class PopupConfirmPageState extends State<PopupConfirm> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Thông báo'),
          content: const Text('Xác nhận cập nhật'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Huỷ'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Đồng ý'),
              child: const Text('Đồng ý'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}

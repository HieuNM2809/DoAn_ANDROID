import 'package:doandidong/backend/provider/user_provider.dart';
import 'package:doandidong/function/function.dart';
import 'package:flutter/material.dart';
import 'package:doandidong/layout/footter.dart';
import 'package:doandidong/pages/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtPasswordAgent = TextEditingController();
  Future<void> dangKy() async {
    // check info empty
    if (txtName.text == '' 
      || txtEmail.text == '' 
      || txtPassword.text == '' 
      || txtPasswordAgent.text == '') {
      final snackBar = SnackBar(
        content: const Text('Vui lòng điền đầy đủ thông tin'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    else if (isEmail(txtEmail.text) == false) {
      final snackBar = SnackBar(
        content: const Text('Vui lòng nhập đúng định dạng email'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } 
    else if (txtPassword.text != txtPasswordAgent.text) {
      final snackBar = SnackBar(
        content: const Text('Nhập lại mật khẩu sai !'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    else {
      bool isSuccess = await UserProvider.register(txtName.text, txtEmail.text, txtPassword.text);
      if(isSuccess){
        Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage()));
         
      }else{
         final snackBar = SnackBar(
          content: const Text('Đăng ký thất bại'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
    
  }

  @override
  Widget build(BuildContext context) {
    Widget _Image = Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Image.asset(
        'images/lg.png',
        width: 2,
        height: 250,
        fit: BoxFit.fill,
      ),
    );
    Widget _RegisterForm = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            width: 320,
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xffAFAEAE),
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: TextFormField(
                    controller: txtName,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Tên tài khoản',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    controller: txtEmail,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero),
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    controller: txtPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Mật khẩu',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: TextFormField(
                    controller: txtPasswordAgent,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Nhập lại mật khẩu',
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  padding: EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () => dangKy(),
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xff33CCFF),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xff33CCFF),
      body: Center(
        child: ListView(
          children: [
            // slider(),
            _Image,
            _RegisterForm,
          ],
        ),
      ),
    );
  }
}

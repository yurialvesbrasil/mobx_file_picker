import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:mobx/mobx.dart';

part 'controller_store.g.dart';


//Gerador de codigo mobx
//flutter packages pub run build_runner build --delete-conflicting-outputs

class ControllerStore = _ControllerStore with _$ControllerStore;

abstract class _ControllerStore with Store{
    @observable
    File file;

    @action
    Future<File> getFIle() async{
        file = await FilePicker.getFile();
    }
}
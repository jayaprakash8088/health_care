// ignore_for_file: must_be_immutable

part of 'chat_with_doctor_bloc.dart';

class ChatWithDoctorState extends Equatable {
  ChatWithDoctorState({
    this.typemessageController,
    this.chatWithDoctorModelObj,
  });

  TextEditingController? typemessageController;

  ChatWithDoctorModel? chatWithDoctorModelObj;

  @override
  List<Object?> get props => [
        typemessageController,
        chatWithDoctorModelObj,
      ];
  ChatWithDoctorState copyWith({
    TextEditingController? typemessageController,
    ChatWithDoctorModel? chatWithDoctorModelObj,
  }) {
    return ChatWithDoctorState(
      typemessageController:
          typemessageController ?? this.typemessageController,
      chatWithDoctorModelObj:
          chatWithDoctorModelObj ?? this.chatWithDoctorModelObj,
    );
  }
}

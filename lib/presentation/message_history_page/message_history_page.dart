import '../message_history_page/widgets/listpexelscedricf_item_widget.dart';
import 'bloc/message_history_bloc.dart';
import 'models/listpexelscedricf_item_model.dart';
import 'models/message_history_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryPage extends StatefulWidget {
  @override
  _MessageHistoryPageState createState() => _MessageHistoryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessageHistoryBloc>(
      create: (context) => MessageHistoryBloc(MessageHistoryState(
        messageHistoryModelObj: MessageHistoryModel(),
      ))
        ..add(MessageHistoryInitialEvent()),
      child: MessageHistoryPage(),
    );
  }
}

class _MessageHistoryPageState extends State<MessageHistoryPage>
    with AutomaticKeepAliveClientMixin<MessageHistoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 32,
                  right: 19,
                ),
                child: BlocSelector<MessageHistoryBloc, MessageHistoryState,
                    MessageHistoryModel?>(
                  selector: (state) => state.messageHistoryModelObj,
                  builder: (context, messageHistoryModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: messageHistoryModelObj
                              ?.listpexelscedricfItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        ListpexelscedricfItemModel model =
                            messageHistoryModelObj
                                    ?.listpexelscedricfItemList[index] ??
                                ListpexelscedricfItemModel();
                        return ListpexelscedricfItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

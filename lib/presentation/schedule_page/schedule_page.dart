import '../schedule_page/widgets/schedule_item_widget.dart';
import 'bloc/schedule_bloc.dart';
import 'models/schedule_item_model.dart';
import 'models/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ScheduleBloc>(
      create: (context) => ScheduleBloc(ScheduleState(
        scheduleModelObj: ScheduleModel(),
      ))
        ..add(ScheduleInitialEvent()),
      child: SchedulePage(),
    );
  }
}

class _SchedulePageState extends State<SchedulePage>
    with AutomaticKeepAliveClientMixin<SchedulePage> {
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
                  left: 20,
                  top: 32,
                  right: 20,
                ),
                child:
                    BlocSelector<ScheduleBloc, ScheduleState, ScheduleModel?>(
                  selector: (state) => state.scheduleModelObj,
                  builder: (context, scheduleModelObj) {
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
                      itemCount: scheduleModelObj?.scheduleItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ScheduleItemModel model =
                            scheduleModelObj?.scheduleItemList[index] ??
                                ScheduleItemModel();
                        return ScheduleItemWidget(
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

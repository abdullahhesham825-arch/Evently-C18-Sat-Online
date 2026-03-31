import 'package:evently_sat_online/core/widgets/custom_text_form_field.dart';
import 'package:evently_sat_online/l10n/app_localizations.dart';
import 'package:evently_sat_online/model/category_model.dart';
import 'package:evently_sat_online/model/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/event_item.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    late AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return SafeArea(
      child: Padding(
        padding:  REdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(hintText: appLocalizations.search_for_event, suffixIcon: Icon(Icons.search),),
            SizedBox(height: 16.h,),
            Expanded(
              child: ListView.separated(

                itemBuilder: (context, index) => EventItem(
                  event: EventModel(
                    id: "1",
                    category: CategoryModel.getCategories(context)[0],
                    title: "Meeting for Updating The Development Method ",
                    description: "Meeting for Updating The Development Method ",
                    date: DateTime.now(),
                    time: TimeOfDay.now(),
                  ),
                ),

                separatorBuilder: (context, index)=>SizedBox(height: 16.h,),
                itemCount: 20,
              ),
            ),

          ],
        ),
      ),
    );
  }


}

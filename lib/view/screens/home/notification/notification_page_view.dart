import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
class NotificationPage extends ConsumerStatefulWidget {
  const NotificationPage({super.key});

  @override
  ConsumerState<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:AppSizes.p16,top: AppSizes.p50),
            child: Row(
              children: [
                GestureDetector(
                    onTap: (){
                      context.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios_new),),
                const SizedBox(width: 100,),
                const Text("Notification",
                style: TextStyle(color: richBalck,
                fontSize: AppSizes.p20,),),
              ],
            ),
          ),
          const SizedBox(height: AppSizes.p16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: AppSizes.p16),
                child: Text("Allow notification",
                style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: AppSizes.p10),
                child: Transform.scale(
                  scale: 0.9,
                  child: Switch(
                    trackOutlineColor: MaterialStateProperty.resolveWith(
                      (final Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return null;
                        }
                  
                        return Colors.transparent;
                      },
                    ),
                    thumbIcon: MaterialStateProperty.resolveWith(
                      (final Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return null;
                        }
                  
                        return const Icon(Icons.circle);
                      },
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    inactiveTrackColor: kGrey,
                    activeTrackColor: royalBlue,
                    inactiveThumbColor: kWhite,
                    activeColor: kWhite,
                    value: isSwitched,
                    onChanged: (value)
                    {
                      setState(() {
                        isSwitched=value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.p10,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: AppSizes.p16),
                child: Text('Today',
                style: TextStyle(color: richBalck,fontSize: 20),),
              ),
              SizedBox(height: AppSizes.p10,),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p14,right: AppSizes.p14),
                    child: Card(
                      color: rowColumnColor,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.p14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/hospital_icon1x.png'),
                            const SizedBox(width: AppSizes.p16,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Lorem ipsum dolor sitamet conse \nctetur. "
                                    "Sed sed ac ut.",style: TextStyle(color: richBalck),),
                                SizedBox(height: AppSizes.p6,),
                                Text('Last Wednesday at 9:42 AM'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
          ),

        ],
      ),
    );
  }
}

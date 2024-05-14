import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            color: kGrey.withOpacity(0.18),
            child: Row(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p16,top: AppSizes.p24),
                    child: InkWell(
                        child: const Icon(Icons.arrow_back_ios_new,
                        color: richBalck,),
                    onTap: (){
                          context.pop();
                    },),
                  ),
                const SizedBox(width: 85,),
                Padding(
                  padding: const EdgeInsets.only(top: AppSizes.p24),
                  child: Text("Privacy Policy",
                  style: blackTextColor.copyWith(fontSize: 22),),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.p16),
            child: Text('Our Privacy Policy',
            style: blueTextColor.copyWith(fontSize: 22),),
          ),
          const SizedBox(height: AppSizes.p16,),
          const Padding(
            padding: EdgeInsets.only(left: AppSizes.p16),
            child: Text("Lorem ipsum dolor sit amet consectetur."
                " Ligula sit id odio pellentesque interdum vel. "
                "Urna enim consectetur aliquam gravida. "
                "Ornare sagittis ac imperdiet lorem dignissim massa in tincidunt. "
                "Facilisi amet viverra pretium nec pharetra vitae odio elementum."
                " Risus nunc faucibus urna eu quisque purus id."
                " Tempus viverra vitae hac facilisis amet mauris blandit duis."
                " Est massa quam vitae massa lorem amet sed blandit purus."
                " Praesent integer cursus.\n\n"
            "Lorem ipsum dolor sit amet consectetur. "
                "Ligula sit id odio pellentesque interdum vel. "
                "Urna enim consectetur aliquam gravida."
                " Ornare sagittis ac imperdiet lorem dignissim massa in tincidunt."
                " Facilisi amet viverra pretium nec pharetra vitae odio elementum."
                " Risus nunc faucibus urna eu quisque purus id. "
                "Tempus viverra vitae hac facilisis amet mauris blandit duis. "
                "Est massa quam vitae massa lorem amet sed blandit purus."
                " Praesent integer cursus."),
          ),
          
        ],
      ),
    );
  }
}


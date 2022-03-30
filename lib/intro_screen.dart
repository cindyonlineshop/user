import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kozarni_ecome/screen/home_screen.dart';
import 'package:colours/colours.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "🌼 Cindy Branded Export Fashion 🌼",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''
            🔸 100% Brand New

            🔸 Export Garment Factory Outlet

            🔸 Trendy Export Quality Branded Clothing

            🔸 Various Brands to choose

            🔸 Fair Price

            🔸 Budget Clothes

            🔸 Local Made

            🔸 Deliver the whole Myanmar

            🔸 Safe & Secure''',
                style: TextStyle(fontSize: 16),),
            ],
          ),

          image: buildImage('assets/1.jpg'),
          decoration: getPageDecoration(),
        ),

        PageViewModel(
          title: '''Cindy Branded Export Fashion မှ 
          နွေးထွေးစွာ ကြိုဆိုပါတယ် 🌹''',
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''
          အရည်အသွေးမြင့် Branded Export 
          
          အဝတ်အထည် အသစ်တွေကို 
          
          စျေးနှုန်းချိုသာစွာနဲ့ ဖုန်းလေးသုံးရင်း 
          
          မြန်မာပြည်အနှံ့မှ ဝယ်ယူနိုင်ပါပြီ 🍀
          
          Cash on Delivery or Online Payment 
          
          ( အိမ်ရောက်ငွေချေစနစ် 
          
          သို့မဟုတ် 
          
          ငွေကြိုလွှဲစနစ် ) ☑
          
          KBZ Mobile Banking 
          
          AYA Mobile Banking
          
          CB Mobile Banking
          
          YOMA Mobile Banking
          
          Kpay
          
          CB Pay
          
          AYA Pay
          
          Wave Pay 
         
          💳 ကြိုက်တဲ့ Online Payment နဲ့ ရှင်း 
          
          လုံးဝအပိုထပ်ပေးစရာမလိုတဲ့  
          
          (0%) ဝန်ဆောင်မှု 🍀''',
                style: TextStyle(fontSize: 16),),
            ],
          ),

          image: buildImage('assets/2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "🌼 Cindy Branded Export Fashion 🌼",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''
Casual အတွက်လား?
          
Office Wear လား?

Sports Wear ရှာနေလား?

Party အတွက်လား? 

👨အမျိုးသားဝတ်

👩အမျိုးသမီးဝတ် 

👦👧ကလေးဝတ် အတွက် 

ရွေးချယ်စရာ Brands အစုံ၊ 

အထည်ပုံစံ အစုံလည်းရှိမယ် 🍀''',
                style: TextStyle(fontSize: 16),),
            ],
          ),
          image: buildImage('assets/3.jpg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: '🌼 Cindy Branded Export Fashion 🌼',
          body: ''' Fashion အတွက်ဆို 
          
          Cindy Branded Export Fashion ကိုသာ 
          
          သတိရလိုက်ပါ! 🌹 ''',
          footer: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ButtonWidget(
              text: "LET'S GET STARTED",
              onClicked: () => goToHome(context),
            ),
          ),
          image: buildImage('assets/4.jpg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text("", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('SKIP', style: TextStyle(fontSize: 16, color: Colors.red),),
      onSkip: () => goToHome(context),
      next: Icon(Icons.forward_outlined, size: 30, color: Colors.red),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Colors.white,
      skipFlex: 0,
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: true,
      // freeze: true,
      // animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => HomeScreen()),
  );

  Widget buildImage(String path) =>
      Image.asset(path, width: double.infinity,
        height: double.infinity, fit: BoxFit.cover, );

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Colours.red,
    activeColor: Colours.gold,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    bodyTextStyle: TextStyle(fontSize: 16,
    ),
    titleTextStyle: TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold, color: Colors.black),
    titlePadding: EdgeInsets.only(top: 10),
    descriptionPadding: EdgeInsets.only(top: 20).copyWith(bottom: 0),
    pageColor: Colors.white,
  );
}


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
    onPressed: onClicked,
    color: Colours.gold,
    shape: StadiumBorder(),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    child: Text(text,
      style: TextStyle(color: Colors.black, fontSize: 16),
    ),
  );
}
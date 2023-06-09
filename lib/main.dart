import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  '॥ श्री विष्णु सहस्रनाम ॥',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '॥ श्री विष्णु सहस्रनाम ॥'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  List<String> _verses = [
    " विश्वं विष्णुर्वषट्कारो भूतभव्यभवत्प्रभुः।\nभूतकृद्भूतभृद्भावो भूतात्मा भूतभावनः॥\n१॥",
    "पूतात्मा परमात्मा च मुक्तानां परमा गतिः।\nअव्ययः पुरुषः साक्षी क्षेत्रज्ञोऽक्षर एव च॥\n२॥",
    "योगो योगविदां नेता प्रधानपुरुषेश्वरः।\nनारसिंहवपुः श्रीमान् केशवः पुरुषोत्तमः॥\n३॥",
    "सर्वः शर्वः शिवः स्थाणुर्भूतादिर्निधिरव्ययः।\nसंभवो भावनो भर्ता प्रभवः प्रभुरीश्वरः॥\n४॥",
    "स्वयंभूः शम्भुरादित्यः पुष्कराक्षो महास्वनः।\nअनादिनिधनो धाता विधाता धातुरुत्तमः॥\n५॥",
    "अप्रमेयो हृषीकेशः पद्मनाभोऽमरप्रभुः।\nविश्वकर्मा मनुस्त्वष्टा स्थविष्ठः स्थविरो ध्रुवः॥\n६॥",
    "अग्राह्यः शाश्वतः कृष्णो लोहिताक्षः प्रतर्दनः।\nप्रभूतस्त्रिककुब्धाम पवित्रं मङ्गलं परम्॥\n७॥",
    "ईशानः प्राणदः प्राणो ज्येष्ठः श्रेष्ठः प्रजापतिः।\nहिरण्यगर्भो भूगर्भो माधवो मधुसूदनः॥\n८॥",
    "ईश्वरो विक्रमी धन्वी मेधावी विक्रमः क्रमः।\nअनुत्तमो दुराधर्षः कृतज्ञः कृतिरात्मवान्॥\n९॥",
    "सुरेशः शरणं शर्म विश्वरेताः प्रजाभवः।\nअहः संवत्सरो व्यालः प्रत्ययः सर्वदर्शनः॥\n१०॥",
    "अजः सर्वेश्वरः सिद्धः सिद्धिः सर्वादिरच्युतः।\nवृषाकपिरमेयात्मा सर्वयोगविनिःसृतः॥\n११॥",
    "वसुर्वसुमनाः सत्यः समात्माऽसम्मितः समः।\nअमोघः पुण्डरीकाक्षो वृषकर्मा वृषाकृतिः॥\n१२॥",
    "रुद्रो बहुशिरा बभ्रुर्विश्वयोनिः शुचिश्रवाः।\nअमृतः शाश्वत स्थाणुर्वरारोहो महातपाः॥\n१३॥",
    "सर्वगः सर्वविद्भानुर्विष्वक्सेनो जनार्दनः।\nवेदो वेदविदव्यङ्गो वेदाङ्गो वेदवित् कविः॥\n१४॥",
    "लोकाध्यक्षः सुराध्यक्षो धर्माध्यक्षः कृताकृतः।\nचतुरात्मा चतुर्व्यूहश्चतुर्दंष्ट्रश्चतुर्भुजः॥\n१५॥",
    "भ्राजिष्णुर्भोजनं भोक्ता सहिष्णुर्जगदादिजः।\nअनघो विजयो जेता विश्वयोनिः पुनर्वसुः॥\n१६॥",
    "उपेन्द्रो वामनः प्रांशुरमोघः शुचिरूर्जितः।\nअतीन्द्रः संग्रहः सर्गो धृतात्मा नियमो यमः॥\n१७॥",
    "वेद्यो वैद्यः सदायोगी वीरहा माधवो मधुः।\nअतीन्द्रियो महामायो महोत्साहो महाबलः॥\n१८॥",
    "महाबुद्धिर्महावीर्यो महाशक्तिर्महाद्युतिः। अनिर्देश्यवपुः श्रीमानमेयात्मा महाद्रिधृक्॥\n१९॥",
    "महेष्वासो महीभर्ता श्रीनिवासः सतां गतिः।\nअनिरुद्धः सुरानन्दो गोविन्दो गोविदां पतिः॥\n२०॥",
    "मरीचिर्दमनो हंसः सुपर्णो भुजगोत्तमः।\nहिरण्यनाभः सुतपाः पद्मनाभः प्रजापतिः॥\n२१॥",
    "अमृत्युः सर्वदृक् सिंहः सन्धाता सन्धिमान् स्थिरः।\nअजो दुर्मर्षणः शास्ता विश्रुतात्मा सुरारिहा॥\n२२॥",
    "गुरुर्गुरुतमो धाम सत्यः सत्यपराक्रमः।\nनिमिषोऽनिमिषः स्रग्वी वाचस्पतिरुदारधीः॥\n२३॥",
    "अग्रणीर्ग्रामणीः श्रीमान् न्यायो नेता समीरणः।\nसहस्रमूर्धा विश्वात्मा सहस्राक्षः सहस्रपात्॥\n२४॥",
    "आवर्तनो निवृत्तात्मा संवृतः संप्रमर्दनः।\nअहः संवर्तको वह्निरनिलो धरणीधरः॥\n२५॥",
    "सुप्रसादः प्रसन्नात्मा विश्वधृग्विश्वभुग्विभुः।\nसत्कर्ता सत्कृतः साधुर्जह्नुर्नारायणो नरः॥\n२६॥",
    "असंख्येयोऽप्रमेयात्मा विशिष्टः शिष्टकृच्छुचिः।\nसिद्धार्थः सिद्धसंकल्पः सिद्धिदः सिद्धिसाधनः॥\n२७॥",
    "वृषाही वृषभो विष्णुर्वृषपर्वा वृषोदरः।\nवर्धनो वर्धमानश्च विविक्तः श्रुतिसागरः॥\n२८॥",
    "सुभुजो दुर्धरो वाग्मी महेन्द्रो वसुदो वसुः।\nनैकरूपो बृहद्रूपः शिपिविष्टः प्रकाशनः॥\n२९॥",
    "ओजस्तेजोद्युतिधरः प्रकाशात्मा प्रतापनः।\nऋद्धः स्पष्टाक्षरो मन्त्रश्चन्द्रांशुर्भास्करद्युतिः॥\n३०॥",
    "अमृतांशूद्भवो भानुः शशबिन्दुः सुरेश्वरः।\n औषधं जगतः सेतुः सत्यधर्मपराक्रमः॥\n३१॥",
    "भूतभव्यभवन्नाथः पवनः पावनोऽनलः।\n कामहा कामकृत्कान्तः कामः कामप्रदः प्रभुः॥\n३२॥",
    "युगादिकृद्युगावर्तो नैकमायो महाशनः।\nअदृश्यो व्यक्तरूपश्च सहस्रजिदनन्तजित्॥\n३३॥",
    "इष्टोऽविशिष्टः शिष्टेष्टः शिखण्डी नहुषो वृषः।\n क्रोधहा क्रोधकृत्कर्ता विश्वबाहुर्महीधरः॥\n३४॥",
    "अच्युतः प्रथितः प्राणः प्राणदो वासवानुजः।\n अपांनिधिरधिष्ठानमप्रमत्तः प्रतिष्ठितः॥\n३५॥",
    "स्कन्दः स्कन्दधरो धुर्यो वरदो वायुवाहनः।\n वासुदेवो बृहद्भानुरादिदेवः पुरन्दरः॥\n३६॥",
    "अशोकस्तारणस्तारः शूरः शौरिर्जनेश्वरः।\n अनुकूलः शतावर्तः पद्मी पद्मनिभेक्षणः॥\n३७॥",
    "पद्मनाभोऽरविन्दाक्षः पद्मगर्भः शरीरभृत्।\n महर्द्धिरृद्धो वृद्धात्मा महाक्षो गरुडध्वजः॥\n३८॥",
    "अतुलः शरभो भीमः समयज्ञो हविर्हरिः।\n सर्वलक्षणलक्षण्यो लक्ष्मीवान् समितिञ्जयः॥\n३९॥",
    "विक्षरो रोहितो मार्गो हेतुर्दामोदरः सहः।\n महीधरो महाभागो वेगवानमिताशनः॥\n४०॥",
    "उद्भवः क्षोभणो देवः श्रीगर्भः परमेश्वरः।\n करणं कारणं कर्ता विकर्ता गहनो गुहः॥\n४१॥",
    "व्यवसायो व्यवस्थानः संस्थानः स्थानदो ध्रुवः।\n परर्द्धिः परमस्पष्टस्तुष्टः पुष्टः शुभेक्षणः॥\n४२॥",
    "रामो विरामो विरजो (or विरतो) मार्गो नेयो नयोऽनयः।\n वीरः शक्तिमतां श्रेष्ठो धर्मो धर्मविदुत्तमः॥\n४३॥",
    "वैकुण्ठः पुरुषः प्राणः प्राणदः प्रणवः पृथुः।\n हिरण्यगर्भः शत्रुघ्नो व्याप्तो वायुरधोक्षजः॥\n४४॥",
    "ऋतुः सुदर्शनः कालः परमेष्ठी परिग्रहः।\n उग्रः संवत्सरो दक्षो विश्रामो विश्वदक्षिणः॥\n४५॥",
    "विस्तारः स्थावरस्थाणुः प्रमाणं बीजमव्ययम्।\n अर्थोऽनर्थो महाकोशो महाभोगो महाधनः॥\n४६॥",
    "अनिर्विण्णः स्थविष्ठोऽभूर्धर्मयूपो महामखः।\n नक्षत्रनेमिर्नक्षत्री क्षमः क्षामः समीहनः॥\n४७॥",
    "यज्ञ इज्यो महेज्यश्च क्रतुः सत्रं सतां गतिः।\n सर्वदर्शी विमुक्तात्मा सर्वज्ञो ज्ञानमुत्तमम्॥\n४८॥",
    "सुव्रतः सुमुखः सूक्ष्मः सुघोषः सुखदः सुहृत्।\nमनोहरो जितक्रोधो वीरबाहुर्विदारणः॥\n४९॥",
    "स्वापनः स्ववशो व्यापी नैकात्मा नैककर्मकृत्।\n वत्सरो वत्सलो वत्सी रत्नगर्भो धनेश्वरः॥\n५०॥",
    "धर्मगुब्धर्मकृद्धर्मी सदसत्क्षरमक्षरम्।\n अविज्ञाता सहस्रांशुर्विधाता कृतलक्षणः॥\n५१॥",
    "गभस्तिनेमिः सत्त्वस्थः सिंहो भूतमहेश्वरः।\n आदिदेवो महादेवो देवेशो देवभृद्गुरुः॥\n५२॥",
    "उत्तरो गोपतिर्गोप्ता ज्ञानगम्यः पुरातनः।\n शरीरभूतभृद्भोक्ता कपीन्द्रो भूरिदक्षिणः॥\n५३॥",
    "सोमपोऽमृतपः सोमः पुरुजित्पुरुसत्तमः।\n विनयो जयः सत्यसंधो दाशार्हः सात्त्वतांपतिः॥\n५४॥",
    "जीवो विनयिता साक्षी मुकुन्दोऽमितविक्रमः।\n अम्भोनिधिरनन्तात्मा महोदधिशयोऽन्तकः॥\n५५॥",
    "अजो महार्हः स्वाभाव्यो जितामित्रः प्रमोदनः।\n आनन्दो नन्दनो नन्दः सत्यधर्मा त्रिविक्रमः॥\n५६॥",
    "महर्षिः कपिलाचार्यः कृतज्ञो मेदिनीपतिः।\n त्रिपदस्त्रिदशाध्यक्षो महाशृङ्गः कृतान्तकृत्॥\n५७॥",
    "महावराहो गोविन्दः सुषेणः कनकाङ्गदी।\n गुह्यो गभीरो गहनो गुप्तश्चक्रगदाधरः॥\n५८॥",
    "वेधाः स्वाङ्गोऽजितः कृष्णो दृढः संकर्षणोऽच्युतः।\n वरुणो वारुणो वृक्षः पुष्कराक्षो महामनाः॥\n५९॥",
    "भगवान् भगहाऽऽनन्दी वनमाली हलायुधः।\n आदित्यो ज्योतिरादित्यः सहिष्णुर्गतिसत्तमः॥\n६०॥",
    "सुधन्वा खण्डपरशुर्दारुणो द्रविणप्रदः।\n दिवःस्पृक् सर्वदृग्व्यासो वाचस्पतिरयोनिजः॥\n६१॥",
    "त्रिसामा सामगः साम निर्वाणं भेषजं भिषक्।\n संन्यासकृच्छमः शान्तो निष्ठा शान्तिः परायणम्॥\n६२॥",
    "शुभाङ्गः शान्तिदः स्रष्टा कुमुदः कुवलेशयः।\n गोहितो गोपतिर्गोप्ता वृषभाक्षो वृषप्रियः॥\n६३॥",
    "अनिवर्ती निवृत्तात्मा संक्षेप्ता क्षेमकृच्छिवः।\n श्रीवत्सवक्षाः श्रीवासः श्रीपतिः श्रीमतांवरः॥\n६४॥",
    "श्रीदः श्रीशः श्रीनिवासः श्रीनिधिः श्रीविभावनः।\n श्रीधरः श्रीकरः श्रेयः श्रीमाँल्लोकत्रयाश्रयः॥\n६५॥",
    "स्वक्षः स्वङ्गः शतानन्दो नन्दिर्ज्योतिर्गणेश्वरः।\n विजितात्माऽविधेयात्मा सत्कीर्तिश्छिन्नसंशयः॥\n६६॥",
    "उदीर्णः सर्वतश्चक्षुरनीशः शाश्वतस्थिरः।\n भूशयो भूषणो भूतिर्विशोकः शोकनाशनः॥\n६७॥",
    "अर्चिष्मानर्चितः कुम्भो विशुद्धात्मा विशोधनः।\n अनिरुद्धोऽप्रतिरथः प्रद्युम्नोऽमितविक्रमः॥\n६८॥",
    "कालनेमिनिहा वीरः शौरिः शूरजनेश्वरः।\n त्रिलोकात्मा त्रिलोकेशः केशवः केशिहा हरिः॥\n६९॥",
    "कामदेवः कामपालः कामी कान्तः कृतागमः।\n अनिर्देश्यवपुर्विष्णुर्वीरोऽनन्तो धनंजयः॥\n७०॥",
    "ब्रह्मण्यो ब्रह्मकृद् ब्रह्मा ब्रह्म ब्रह्मविवर्धनः।\n ब्रह्मविद् ब्राह्मणो ब्रह्मी ब्रह्मज्ञो ब्राह्मणप्रियः॥\n७१॥",
    "महाक्रमो महाकर्मा महातेजा महोरगः।\n महाक्रतुर्महायज्वा महायज्ञो महाहविः॥\n७२॥",
    "स्तव्यः स्तवप्रियः स्तोत्रं स्तुतिः स्तोता रणप्रियः।\n पूर्णः पूरयिता पुण्यः पुण्यकीर्तिरनामयः॥\n७३॥",
    "मनोजवस्तीर्थकरो वसुरेता वसुप्रदः।\n वसुप्रदो वासुदेवो वसुर्वसुमना हविः॥\n७४॥",
    "सद्गतिः सत्कृतिः सत्ता सद्भूतिः सत्परायणः।\n शूरसेनो यदुश्रेष्ठः सन्निवासः सुयामुनः॥\n७५॥",
    "भूतावासो वासुदेवः सर्वासुनिलयोऽनलः।\n दर्पहा दर्पदो दृप्तो दुर्धरोऽथापराजितः॥\n७६॥",
    "विश्वमूर्तिर्महामूर्तिर्दीप्तमूर्तिरमूर्तिमान्।\n अनेकमूर्तिरव्यक्तः शतमूर्तिः शताननः॥\n७७॥",
    "एको नैकः सवः कः किं यत् तत्पदमनुत्तमम्।\n लोकबन्धुर्लोकनाथो माधवो भक्तवत्सलः॥\n७८॥",
    "सुवर्णवर्णो हेमाङ्गो वराङ्गश्चन्दनाङ्गदी।\n वीरहा विषमः शून्यो घृताशीरचलश्चलः॥\n७९॥",
    "अमानी मानदो मान्यो लोकस्वामी त्रिलोकधृक्।\n सुमेधा मेधजो धन्यः सत्यमेधा धराधरः॥\n८०॥",
    "तेजोवृषो द्युतिधरः सर्वशस्त्रभृतां वरः।\n प्रग्रहो निग्रहो व्यग्रो नैकशृङ्गो गदाग्रजः॥\n८१॥",
    "चतुर्मूर्तिश्चतुर्बाहुश्चतुर्व्यूहश्चतुर्गतिः।\nचतुरात्मा चतुर्भावश्चतुर्वेदविदेकपात्॥\n८२॥",
    "समावर्तोऽनिवृत्तात्मा दुर्जयो दुरतिक्रमः।\nदुर्लभो दुर्गमो दुर्गो दुरावासो दुरारिहा॥\n८३॥",
    "शुभाङ्गो लोकसारङ्गः सुतन्तुस्तन्तुवर्धनः।\nइन्द्रकर्मा महाकर्मा कृतकर्मा कृतागमः॥\n८४॥",
    "उद्भवः सुन्दरः सुन्दो रत्ननाभः सुलोचनः।\nअर्को वाजसनः शृङ्गी जयन्तः सर्वविज्जयी॥\n८५॥",
    "सुवर्णबिन्दुरक्षोभ्यः सर्ववागीश्वरेश्वरः।\nमहाह्रदो महागर्तो महाभूतो महानिधिः॥\n८६॥",
    "कुमुदः कुन्दरः कुन्दः पर्जन्यः पावनोऽनिलः।\nअमृतांशोऽमृतवपुः सर्वज्ञः सर्वतोमुखः॥\n८७॥",
    "सुलभः सुव्रतः सिद्धः शत्रुजिच्छत्रुतापनः।\nन्यग्रोधोऽदुम्बरोऽश्वत्थश्चाणूरान्ध्रनिषूदनः॥\n८८॥",
    "सहस्रार्चिः सप्तजिह्वः सप्तैधाः सप्तवाहनः।\nअमूर्तिरनघोऽचिन्त्यो भयकृद्भयनाशनः॥\n८९॥",
    "अणुर्बृहत्कृशः स्थूलो गुणभृन्निर्गुणो महान्।\nअधृतः स्वधृतः स्वास्यः प्राग्वंशो वंशवर्धनः॥\n९०॥",
    "भारभृत् कथितो योगी योगीशः सर्वकामदः।\nआश्रमः श्रमणः क्षामः सुपर्णो वायुवाहनः॥\n९१॥",
    "धनुर्धरो धनुर्वेदो दण्डो दमयिता दमः।\nअपराजितः सर्वसहो नियन्ताऽनियमोऽयमः॥\n९२॥",
    "सत्त्ववान् सात्त्विकः सत्यः सत्यधर्मपरायणः।\nअभिप्रायः प्रियार्होऽर्हः प्रियकृत् प्रीतिवर्धनः॥\n९३॥",
    "विहायसगतिर्ज्योतिः सुरुचिर्हुतभुग्विभुः।\nरविर्विरोचनः सूर्यः सविता रविलोचनः॥\n९४॥",
    "अनन्तो हुतभुग्भोक्ता सुखदो नैकजोऽग्रजः।\nअनिर्विण्णः सदामर्षी लोकाधिष्ठानमद्भुतः॥\n९५॥",
    "सनात्सनातनतमः कपिलः कपिरव्ययः।\nस्वस्तिदः स्वस्तिकृत्स्वस्ति स्वस्तिभुक्स्वस्तिदक्षिणः॥\n९६॥",
    "अरौद्रः कुण्डली चक्री विक्रम्यूर्जितशासनः।\nशब्दातिगः शब्दसहः शिशिरः शर्वरीकरः॥\n९७॥",
    "अक्रूरः पेशलो दक्षो दक्षिणः क्षमिणांवरः।\nविद्वत्तमो वीतभयः पुण्यश्रवणकीर्तनः॥\n९८॥",
    "उत्तारणो दुष्कृतिहा पुण्यो दुःस्वप्ननाशनः।\nवीरहा रक्षणः सन्तो जीवनः पर्यवस्थितः॥\n९९॥",
    "अनन्तरूपोऽनन्तश्रीर्जितमन्युर्भयापहः।\nचतुरश्रो गभीरात्मा विदिशो व्यादिशो दिशः॥\n१००॥",
    "अनादिर्भूर्भुवो लक्ष्मीः सुवीरो रुचिराङ्गदः।\nजननो जनजन्मादिर्भीमो भीमपराक्रमः॥\n१०१॥",
    "आधारनिलयोऽधाता पुष्पहासः प्रजागरः।\nऊर्ध्वगः सत्पथाचारः प्राणदः प्रणवः पणः॥\n१०२॥",
    "प्रमाणं प्राणनिलयः प्राणभृत्प्राणजीवनः।\nतत्त्वं तत्त्वविदेकात्मा जन्ममृत्युजरातिगः॥\n१०३॥",
    "भूर्भुवःस्वस्तरुस्तारः सविता प्रपितामहः।\nयज्ञो यज्ञपतिर्यज्वा यज्ञाङ्गो यज्ञवाहनः॥\n१०४॥",
    "यज्ञभृद् यज्ञकृद् यज्ञी यज्ञभुक् यज्ञसाधनः।\nयज्ञान्तकृद् यज्ञगुह्यमन्नमन्नाद एव च॥\n१०५॥",
    "आत्मयोनिः स्वयंजातो वैखानः सामगायनः।\nदेवकीनन्दनः स्रष्टा क्षितीशः पापनाशनः॥\n१०६॥",
    "शङ्खभृन्नन्दकी चक्री शार्ङ्गधन्वा गदाधरः।\nरथाङ्गपाणिरक्षोभ्यः सर्वप्रहरणायुधः॥\n१०७॥\nसर्वप्रहरणायुध ॐ नम इति।",
    "वनमाली गदी शार्ङ्गी शङ्खी चक्री च नन्दकी।\nश्रीमान् नारायणो विष्णुर्वासुदेवोऽभिरक्षतु॥\n१०८॥\nश्री वासुदेवोऽभिरक्षतु ॐ नम इति।"
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      if (_counter == 108) _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              "images/vishnu.jpg",
              height : 200.0,
            ),
            new Text(
              '॥ हरिः ॐ ॥',
              textAlign: TextAlign.center,
              style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.0),
            ),
            GestureDetector(
              onTap: _incrementCounter,
              child: Container(
                //color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state.
                child: new Text(
                  _verses[_counter],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

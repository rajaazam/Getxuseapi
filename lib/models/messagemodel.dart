import 'package:get/get.dart';
import 'package:getxapp1/screen/getxidpage.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_Eng': {
          'hello': 'Hello',
          'How are You':'How are you',
         'where are you form':'where are you'
          
        },
        'en_US': {
          'hello': 'Hello',
          'How are You':'How are You',
          'where are you form':'where are you'
          
        },
        'arabic_saudi': {
          'hello': 'مرحبا',
          'How are You':'ازيك',
          'where are you form':'من أي بلد أنت'
        },
        'urdu_Pakistan':{
          'hello':'ہیلو',
          'How are You':'آپ کیسے ہو',
          'where are you form':'آپ کہاں سے ہیں'

        },
        'persion_Iran':{
          'hello':'سلام',
          'How are You':'چطور هستید',
          'where are you form':'اهل کجا هستید'

        },
        'en_china':{
          'hello':'Nǐ hǎo',
          'How are You':'Nǐ hǎo ma',
          'where are you form':'Nǐ zài nǎlǐ biǎogé',

        }

      };
}
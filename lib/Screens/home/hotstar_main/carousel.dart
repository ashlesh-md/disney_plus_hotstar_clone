import 'package:disney_plus_hotastar/components/cards/carousel.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../video.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  bool isPlaying = false;

  Widget build(BuildContext context) {
    return Carousels(data: data);
  }
}

var data = {
  0: [
    'https://i2.cinestaan.com/image-bank/1500-1500/203001-204000/203264.jpg',
    'https://rr3---sn-aigzrnsz.googlevideo.com/videoplayback?expire=1664115296&ei=AA4wY5_TLprRgQe9yoCoDw&ip=216.131.117.49&id=o-AAwUY-Z1HS9Y9lhEO7AanB269A0UBBvgPL7H4orCCgBJ&itag=22&source=youtube&requiressl=yes&mh=2J&mm=31%2C26&mn=sn-aigzrnsz%2Csn-5hnednss&ms=au%2Conr&mv=m&mvi=3&pl=24&initcwndbps=2043750&spc=yR2vp2G6b0bHwWRxcBuouNb3t8hp0Zs&vprv=1&mime=video%2Fmp4&ns=-U0dCEHzSQhp0fT-RLRn7b0I&cnr=14&ratebypass=yes&dur=178.259&lmt=1658732326749784&mt=1664093343&fvip=1&fexp=24001373%2C24007246&c=WEB&txp=4532434&n=wiRw2jeiirC_Gw&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIgeMntP2HQHzqEusBEPgh4TJavgSEc7CHnsOkSvYaG_RMCIQCxZWEAGK4rAnk_MnUxELC3P2gKNaCntgNT3PvQmVUYPQ%3D%3D&sig=AOq0QJ8wRgIhAOU_wK2LP87txgjp25c6JtR35HMq3neHi6R1O9GXsWg5AiEAxlmXnNhJT1fPQBDeCuRagrOYmQy3n0GzPyhgUlwWstY%3D&title=Vikrant%20Rona%20-%20Official%20Hindi%20Trailer%20%7C%7C%20K%20Sudeep%2C%20Jacqueline%20F%20%7C%7C%20Anup%20B%20%7C%20Ajaneesh%20%7C%20Shalini%20Artss'
  ],
  1: [
    'http://m.gettywallpapers.com/wp-content/uploads/2021/02/KGF-Chapter-2-Wallpaper-For-Computer-1024x569.jpg',
    'https://rr5---sn-4g5e6nss.googlevideo.com/videoplayback?expire=1664122471&ei=ByowY83QI-DUxN8P2vewwAw&ip=185.108.106.211&id=o-AEmOgkjfqQzOVGcfJ4wmJJCkaK8taq1Cmbm27OM_1mZm&itag=22&source=youtube&requiressl=yes&mh=Yb&mm=31%2C29&mn=sn-4g5e6nss%2Csn-4g5edn6k&ms=au%2Crdu&mv=m&mvi=5&pl=25&initcwndbps=2331250&spc=yR2vp1nIqLY9DdDpsp6lOW9wPqVanEc&vprv=1&mime=video%2Fmp4&ns=XEfEKmou7f0dEURRE5MaPBQI&ratebypass=yes&dur=8472.706&lmt=1650714916678784&mt=1664100541&fvip=5&fexp=24001373%2C24007246&c=WEB&txp=4532434&n=zgCLMwOljGOdkg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgZkrrm0p9jk3jqRuXZytOmidQFCY22pKeR8YaEfDTGdoCICPO6byj2LK5V2QyYeHT9U9FtLB5k9ZKdzarzqQMmgba&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRAIgaSbQfDl4lyV4Qum7rlZ3lPXG6EPcTsY1AwkX_7oifRoCIH_DIE_WkXNCVEpbJ22RHnggQhsPtYolDvYVVcm5iWNg&title=K.G.F%20Full%20Movie%20%7C%20Yash%2C%20Srinidhi%20Shetty%2C%20Ananth%20Nag%2C%20Ramachandra%20Raju%2C%20Achyuth%20Kumar%2C%20Malavika'
  ],
  2: [
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJZRd5OR6L1laCi4DHcLQz_JXUMTK5bXK5AkzJ4IN78KeJCC1coREHygio3DjonGdbs0VcMlQInWj59UtEPENCTfGCXlFLKz5TLjyq-SBOJpRM7bHZdQ3ZM7rvUCP8EvXI5LtCRjostm8pMjejkFjY4RZ3SXRctnnbuXjsM2UXRvFBhImV9V0bLI8wsA/s0/HDgallery%20Sita%20Ramam%20HD%20Stills%20%285%29.jpg',
    'https://rr4---sn-ab5l6nrd.googlevideo.com/videoplayback?expire=1664115512&ei=2A4wY6uAHIyF8wSlyp_wBQ&ip=216.131.82.52&id=o-ABDCpxeUgxrd0OokJg3L_B6UV2ko6oAVBt7hggp8-Wb4&itag=22&source=youtube&requiressl=yes&mh=7i&mm=31%2C29&mn=sn-ab5l6nrd%2Csn-ab5sznzd&ms=au%2Crdu&mv=m&mvi=4&pl=23&initcwndbps=2248750&spc=yR2vp9Gq59gmwcYYKOoukJdk9vw5QBQ&vprv=1&mime=video%2Fmp4&ns=nFiJziGHotZTlRVoGi7kaC0I&cnr=14&ratebypass=yes&dur=137.972&lmt=1662374238101985&mt=1664093581&fvip=1&fexp=24001373%2C24007246&c=WEB&txp=5532434&n=-Bg7MwruH0WH9A&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgCvnwcaCOQVYZT8Ow_4RuNxsl9aWdw3PsPYKf3FJgNA0CIQCdNYqKutKfk0vqetA-2VHBW4Ug-_Rk3A26cnnAUYis6g%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAMsnoXSsA_p5VkWh4RjnsW5O_W2x0ZpCs31gV2UnFqCVAiEAsyxeumqp6aKJN3b5H45LMRfbJibbn9ikt6Xr_sIZ-5Q%3D&title=Sita%20Ramam%20Trailer%20-%20Hindi%20%7C%20Dulquer%20Salmaan%20%7C%20Mrunal%20%7C%20Rashmika%20%7C%20Sumanth%20%7C%20Pen%20Studios%20%7C%202nd%20Sept'
  ],
  3: [
    'https://images.indianexpress.com/2021/12/brahmastra1200.jpg',
    'https://rr5---sn-p5qlsnrl.googlevideo.com/videoplayback?expire=1664115641&ei=WQ8wY66oHvO7ir4P66-LgAQ&ip=198.181.163.227&id=o-AM2UG-cxymPhrPeFZInMRVGWCvb25KAG0p6zKsUTLudr&itag=22&source=youtube&requiressl=yes&mh=sp&mm=31%2C26&mn=sn-p5qlsnrl%2Csn-vgqsrnsd&ms=au%2Conr&mv=m&mvi=5&pl=25&initcwndbps=1008750&spc=yR2vp3kZVDlVI6VUhAQqwdsqH_y22sg&vprv=1&mime=video%2Fmp4&ns=nYDOYFW_7-iFAs4JexEkeCkI&cnr=14&ratebypass=yes&dur=171.525&lmt=1662648030665960&mt=1664093581&fvip=2&fexp=24001373%2C24007246&c=WEB&txp=4532434&n=YALPmVFbA7KQCA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALw83Z42UlxEuUI8bwp5aRWyzYfJu4AWc2MFMeA-ujsnAiAOQf7WkYa9UiXaY3aaVfWNSBk7vrtPptnzonKKgISsWQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIgc9jWsAyidcjEVZ96yfVeE9C-sPLPpFq0znBbuh2AG_4CIQCpicz2pY0mCDsPWiyyJEH3JAbZXfcKdFVrfP49V9CWtQ%3D%3D&title=BRAHM%C4%80STRA%20OFFICIAL%20TRAILER%204K%20%7C%20Hindi%20%7C%20Amitabh%20%7C%20Ranbir%20%7C%20Alia%20%7C%20Ayan%20%7C%20In%20Cinemas%209th%20September'
  ],
  4: [
    'https://img1.hotstarext.com/image/upload/f_auto,t_hcdl/sources/r1/cms/prod/6237/1296237-h-5662015305e4',
    'https://rr4---sn-cnoa-h55s.googlevideo.com/videoplayback?expire=1664119375&ei=7x0wY5L5D5_xjuMPsqO1yAQ&ip=117.246.190.246&id=o-ALFGR2gc27te-ao5EYMbLtMmdc299J6Oe6o_mMWQY3P9&itag=22&source=youtube&requiressl=yes&mh=e8&mm=31%2C29&mn=sn-cnoa-h55s%2Csn-h5576ns6&ms=au%2Crdu&mv=m&mvi=4&pl=20&initcwndbps=76250&vprv=1&mime=video%2Fmp4&ns=Gw4InhWb8BlhsEXd2sEkP7AI&cnr=14&ratebypass=yes&dur=158.104&lmt=1653424081627675&mt=1664097423&fvip=3&fexp=24001373%2C24007246&c=MWEB&txp=4532434&n=j7h3_tNxMzm3kA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAJWmqdP39Svaw33Y9g9o9mOzfoRM4sypFV4rnDlrYI4UAiBU2gkkYPJAmHR2TNcNN-dVvG5PDxWLwkkiAs2XWpJcKA%3D%3D&sig=AOq0QJ8wRQIhAPjKfQ3sGnNhDH7FI3l69ZXan1VfSCDJkkfnNMoYBVXFAiBt1NXQRh9gdmaypf4QUmrF4cKTA8c7YIp_hOR9dJJZjg%3D%3D&title=VIKRAM%20-%20Official%20Trailer%20%7C%20Kamal%20Haasan%20%7C%20VijaySethupathi%2C%20FahadhFaasil%20%7C%20LokeshKanagaraj%20%7C%20Anirudh'
  ],
};





import 'package:api_test_porject/features/presentation/auth/presentation/email_otp_screen/data/rx.dart';
import 'package:rxdart/rxdart.dart';

import '../features/presentation/auth/presentation/SingUp/data/rx.dart';
import '../features/presentation/auth/sing_in/data/rx.dart';

SignUpRX singUpRXObj = SignUpRX(empty: {}, dataFetcher: BehaviorSubject<Map>()); // / RegisterRX is used for user registration//

EmailOtpRx emailOtpRxObj = EmailOtpRx(empty: {}, dataFetcher: BehaviorSubject<Map>()); // / Email  Otp  Rx //


UserLoginRX userLoginRXObj = UserLoginRX(empty: {}, dataFetcher: BehaviorSubject<Map>()); // / Email  Otp  Rx //






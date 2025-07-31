// ignore_for_file: constant_identifier_names, unnecessary_string_interpolations

// const String url = String.fromEnvironment("BASE_URL");
// const String url = "https://lewis-rodrigoe.softvencefsd.xyz";

const String url = "https://carolinekem.softvencealpha.com/api/v1";
// ignore: unnecessary_brace_in_string_interps
const String imageUrl = "${url}";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

// final class PaymentGateway {
//   PaymentGateway._();
//   static String gateway(String orderId) =>  "https://demo.vivapayments.com/web/checkout?ref={$orderId}";
// }

final class Endpoints {
  Endpoints._();

  //Authentication
  static String userSignUp() => "/users/register";
   static String EmailOtp() => "/users/verify-email";
  static String userLogin() => "/users/login";
  // static String userLogout() => "/api/v1/auth/logout";

  // //price analysis
  // static String getServices() => "/api/v1/service";
  // static String getCountry() => "/api/v1/country";
  // static String getStates(int countryId) => "/api/v1/country/$countryId/state";
  // // static String getCities(int stateId) => "/api/v1/state/$stateId/city";
  // // static String getZip(int cityId) => "/api/v1/city/$cityId/zip";
  // static String getBoilerTypes() => "/api/v1/boiler-type";
  // static String getBoilerModel() => "/api/v1/boiler-model";
  // static String getPropertyType() => "/api/v1/property-type";
  // static String analysprice() => "/api/v1/property/price";
  // static String createProperty() => "/api/v1/property";
  // //backend_url
  // //New
  // static String getCountryApiLink() => "/api/v1/country";
  // static String getCityApiLink({required dynamic id}) =>
  //     "/api/v1/state/$id/city";
  // static String getStateApiLink({required dynamic id}) =>
  //     "/api/v1/country/$id/state";
  //
  // // job part
  // static String jobCreate() => "/api/v1/property-job";
  // static String jobPending() => "/api/v1/property-job/pending";
  // static String jobComplete() => "/api/v1/property-job/completed";
  // static String jobOngoing() => "/api/v1/property-job/ongoing";
  // static String jobPreview(int id) => "/api/v1/property/$id";
  // static String getProperty() => "/api/v1/property/dropdown";
  // static String getOnlineHour() => "/api/v1/online-hour";
  // static String setOnlineHour() => "/api/v1/online-hour/pare-user";
  //
  // static String asignedJob() => "/api/v1/property-job/engineer/assigned";
  // static String asignedJobDetails(int id) => "/api/v1/property-job/$id/details";
  // static String completeJob(int id) =>
  //     "/api/v1/property-job/$id/status/completed";
  // static String enginearJobList() => "/api/v1/property-job/engineer/completed";
  //
  // // profile
  // static String getDashBoard() => "/api/v1/auth-user/dashboard";
  // static String getProfile() => "/api/v1/auth-user";
  // static String updateProfile() => "/api/v1/auth-user";
  // static String getProfileEnginear() => "/api/v1/auth-user/engineer";
  //
  // //enginear
  //
  // static String engSignup() => "/api/v1/auth/register-both";
  // static String engPlumberSignup() => "/api/v1/auth/register-plumber";
  // static String engElectricianSignup() => "/api/v1/auth/register-engineer";
  //
  // //pakage
  // static String genarel() => "/api/v1/package/general";
  // static String landlorn() => "/api/v1/package/landlord";
  //
  // // card
  // static String addCard() => "/api/v1/card";
  //
  // // messege
  // static String sendMessage() => "/api/v1/messages";
  // static String getMesssage(int id) => "/api/v1/messages/$id";
  // static String chatList() => "/api/v1/messages";
  // static String termsC() => "/api/v1/privacy-policy";
  // static String applyCoupon(String coupon) => "/api/v1/coupon/apply/$coupon";
}

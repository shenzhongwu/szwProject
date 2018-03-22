//package com.zhongwu.graduation.util;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.TreeMap;
//
//import open189.sign.ParamsSign;
//
//
//public class SendVailMobile2User {
//	static String app_id = "";
//	static String app_secret = "";
//	static String access_token = "";
//	private static String sendSms(String userPhone) throws Exception {
//		Date date = new Date();
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String timestamp = dateFormat.format(date);
//		System.err.println(timestamp);
//		TreeMap<String, String> paramsMap = new TreeMap<String, String>();
//		paramsMap.put("app_id", app_id);
//		paramsMap.put("access_token", access_token);
//		paramsMap.put("timestamp", timestamp);
//		
//		String getUrl = "http://api.189.cn/v2/dm/randcode/token?app_id=" + app_id
//				+ "&access_token=" + access_token + "&timestamp="+timestamp + "&sign="+ParamsSign.value(paramsMap, app_secret);
//		String resJson = HttpInvoker.httpGet(getUrl);
//		System.err.println(resJson);
//		JSONObject json = new JSONObject(resJson);
//		System.out.println(json.get("token"));
//
//		TreeMap<String, String> paramsMap1 = new TreeMap<String, String>();
//		paramsMap1.put("app_id", app_id);
//		paramsMap1.put("access_token", access_token);
//		paramsMap1.put("timestamp", timestamp);
//		paramsMap1.put("token", json.get("token").toString());
//		paramsMap1.put("url", "http://61.154.164.33:10015/RandCode/servlet/rcReceive");
//		paramsMap1.put("phone", userPhone);
//		paramsMap1.put("exp_time", "2");
//		
//		String postUrl = "http://api.189.cn/v2/dm/randcode/send?app_id="
//		                 + app_id + "&access_token=" + access_token + "&timestamp=" + timestamp + "";
//		String postEntity = "token=" + json.get("token")
//				          + "&phone=" + userPhone
//				          + "&url=" + "您的验证码通知接口"// 有开发者实现的验证码通知接口
//				          + "&exp_time=" + "2"
//				          + "&sign="+ParamsSign.value(paramsMap1, app_secret);
//		
//		String resJson1 = HttpInvoker.httpPost(postUrl,null,postEntity);
//		return resJson1;
//	}
//}

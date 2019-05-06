package cn.auto.controller;

import com.alibaba.fastjson.JSONObject;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/message")
public class SMSUtil {
    public static final String DEF_CHATSET = "UTF-8";
    public static final int DEF_CONN_TIMEOUT = 30000;
    public static final int DEF_READ_TIMEOUT = 30000;
    public static String userAgent =  "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36";
    public static final Logger LOGGER = Logger.getLogger(SMSUtil.class);
    public static final String RANDOM =(int)((Math.random()*9+1)*100000)+"";


    @RequestMapping("/gain")
    @ResponseBody
    public static String send(@RequestParam("phone") String phone , HttpSession  session){
        try {
            String url ="http://v.juhe.cn/sms/send";//请求接口地址
            Map params = new HashMap();//请求参数
            params.put("mobile",phone);//接受短信的用户手机号码
            params.put("tpl_id","155285");//您申请的短信模板ID，根据实际情况修改
            params.put("tpl_value",URLEncoder.encode("#code#="+RANDOM+"&#m#=2","UTF-8"));//您设置的模板变量，根据实际情况修改
            params.put("key","aaa3cae88d2d7f228b363138a148c53b");//应用APPKEY(应用详细页查询)
            String result = net(url, params, "GET");
            Map object = JSONObject.parseObject(result, Map.class);
            if((int)object.get("error_code")==0){
                System.out.println(object.get("result"));
                LOGGER.info("短信发送 success,result:"+object.get("result"));

                return RANDOM;
            }
            LOGGER.error("短信发送 fail,result:"+result);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(),e);
        }
        return "";
    }

//    public static void main(String[] args) {
////        SMSUtil.send("16620742738","6666");
////    }

    /**
     *
     * @param strUrl 请求地址
     * @param params 请求参数
     * @param method 请求方法
     * @return  网络请求字符串
     * @throws Exception
     */
    private static String net(String strUrl, Map params,String method) throws Exception {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        String rs = null;
        try {
            StringBuffer sb = new StringBuffer();
            if(method==null || method.equals("GET")){
                strUrl = strUrl+"?"+urlencode(params);
            }
            URL url = new URL(strUrl);
            conn = (HttpURLConnection) url.openConnection();
            if(method==null || method.equals("GET")){
                conn.setRequestMethod("GET");
            }else{
                conn.setRequestMethod("POST");
                conn.setDoOutput(true);
            }
            conn.setRequestProperty("User-agent", userAgent);
            conn.setUseCaches(false);
            conn.setConnectTimeout(DEF_CONN_TIMEOUT);
            conn.setReadTimeout(DEF_READ_TIMEOUT);
            conn.setInstanceFollowRedirects(false);
            conn.connect();
            if (params!= null && method.equals("POST")) {
                try {
                    DataOutputStream out = new DataOutputStream(conn.getOutputStream());
                    out.writeBytes(urlencode(params));
                } catch (Exception e) {
                    // TODO: handle exception
                    e.printStackTrace();
                }
            }
            InputStream is = conn.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, DEF_CHATSET));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sb.append(strRead);
            }
            rs = sb.toString();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                reader.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rs;
    }

    //将map型转为请求参数型
    private static String urlencode(Map<String,String> data) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry i : data.entrySet()) {
            try {
                sb.append(i.getKey()).append("=").append(URLEncoder.encode(i.getValue()+"","UTF-8")).append("&");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
}

package com.csr.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.csr.service.userlogin.OtherServiceI;


@Controller
@RequestMapping(value = "/user") 
public class UserController {

    public static Logger logger = Logger.getLogger(UserController.class);
    public int page = 0;
    @Resource(name="otherService")
	private OtherServiceI otherService;
	
	
	@RequestMapping("/first")
    public ModelAndView first(HttpServletRequest request,
            HttpServletResponse response) throws Exception{   
        return new ModelAndView("first");
    }

    @RequestMapping(value="/{jsp}")
    public ModelAndView jspDispatcher(@PathVariable String jsp) throws Exception{
        ModelAndView tModelAndView = new ModelAndView();
        tModelAndView.setViewName(jsp);
        return tModelAndView;
    }

    @RequestMapping(value="/userRegist",produces="text/html;charset=UTF-8" )
    private String userRegist(HttpServletRequest request,HttpServletResponse response,Model model){

        Map map= request.getParameterMap();
        Map _map= new HashMap();
        for(Iterator iter=map.entrySet().iterator();iter.hasNext();) {
            Map.Entry element = (Map.Entry) iter.next();
            Object strKey = element.getKey();
            String[] value = (String[]) element.getValue();
            System.out.print(strKey.toString() + "=");
            for (int i = 0; i < value.length; i++) {
                System.out.print(value[i] + ",");
            }
            _map.put(strKey,value[0]);
        }
        request.setAttribute("map", _map);
        int i=otherService.addUserInfo(_map);
        if(i>0) {
            List<Object> registMapList = otherService.qryAllUserInfo();
            request.setAttribute("list", registMapList);
        }
    

        return "registSuccess";
    }

    @RequestMapping(value="/userLogin",produces="text/html;charset=UTF-8" )
    private String userLogin(HttpServletRequest request,HttpServletResponse response,Model model){

        Map map= request.getParameterMap();
        Map _map= new HashMap();
        for(Iterator iter=map.entrySet().iterator();iter.hasNext();) {
            Map.Entry element = (Map.Entry) iter.next();
            Object strKey = element.getKey();
            String[] value = (String[]) element.getValue();
            System.out.print(strKey.toString() + "=");
            for (int i = 0; i < value.length; i++) {
                System.out.print(value[i] + ",");
            }
            _map.put(strKey,value[0]);
        }

        Map resultMap=(Map)otherService.qryUserInfo(_map);
        request.setAttribute("map", resultMap);
       

        return "loginResult";
    }

    @RequestMapping(value="/searchcontent",produces="text/html;charset=UTF-8" )
    private String searchcontent(HttpServletRequest request,HttpServletResponse response,Model model){

    	 Map map= request.getParameterMap();
         Map _map= new HashMap();
         for(Iterator iter=map.entrySet().iterator();iter.hasNext();) {
             Map.Entry element = (Map.Entry) iter.next();
             Object strKey = element.getKey();
             String[] value = (String[]) element.getValue();
             System.out.print(strKey.toString() + "=");
             for (int i = 0; i < value.length; i++) {
                 System.out.print(value[i] + ",");
             }
             String keyWord = "%"+value[0]+"%";
             _map.put(strKey,keyWord);
            
         }
         
         
         /*Map resultMap=(Map)otherService.qrysearchcontent(_map);   */
         
         List<Object> list=otherService.qrysearchcontent(_map); 
         request.setAttribute("list", list);

         return "searchcontentResult";
    }
    
    @RequestMapping(value="/getOtherList",produces="text/html;charset=UTF-8" )
    private String getOtherList(HttpServletRequest request,HttpServletResponse response,Model model){  
		List<Object> list=otherService.getOterList();  
		request.setAttribute("list", list);
        return "houseinfortab";  
    }  
	
	
    /**
     * 杩斿洖JSON
     * @return
     */
    @RequestMapping(value="/getUserInfoList",produces="text/html;charset=UTF-8" )
    @ResponseBody
    private String getUserInfoList(){
    	List<Map> mapList=new ArrayList<Map>();
    	for(int i=0;i<10;i++){
    		Map argsMap=new HashMap();
    		argsMap.put(i, "kk");
    		mapList.add(argsMap);
    	}
 
    	return JSONObject.toJSONString(mapList);
    }

	

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	/*
	 * 分页
	 */
	 @RequestMapping(value="/getFenye",produces="text/html;charset=UTF-8" )
	    private String getFenye(HttpServletRequest request,HttpServletResponse response,Model model){  
		 Map map= request.getParameterMap();
         Map _map= new HashMap();
         String searchcontent = request.getParameter("searchcontent");
         _map.put("page",0);
         page = 2;
         for(Iterator iter=map.entrySet().iterator();iter.hasNext();) {
             Map.Entry element = (Map.Entry) iter.next();
             Object strKey = element.getKey();
             String[] value = (String[]) element.getValue();
             System.out.print(strKey.toString() + "=");
             for (int i = 0; i < value.length; i++) {
                 System.out.print(value[i] + ",");
             }
             String keyWord = "%"+value[0]+"%";
             _map.put(strKey,keyWord);           
         }  
         
		    List<Object> list=otherService.querypage(_map);  
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			request.getSession().setAttribute("searchcontent", searchcontent);
	        return "searchcontentResult";  
	    }  
	 
	 /*
		 * 分页
		 */
		 @RequestMapping(value="/pageadd",produces="text/html;charset=UTF-8" )
		    private String pageadd(HttpServletRequest request,HttpServletResponse response,Model model) throws IOException{  
			 request.setCharacterEncoding("utf-8");
			 Map map= request.getParameterMap();
	         Map _map= new HashMap();
	         String searchcontent = request.getParameter("searchcontent");
	         page = page+1;
	         int pagesize = (page+1)*10; 
	         _map.put("page",pagesize);         
	         for(Iterator iter=map.entrySet().iterator();iter.hasNext();) {
	             Map.Entry element = (Map.Entry) iter.next();
	             Object strKey = element.getKey();
	             String[] value = (String[]) element.getValue();
	             System.out.print(strKey.toString() + "=");
	             for (int i = 0; i < value.length; i++) {
	                 System.out.print(value[i] + ",");
	             }
	             String keyWord = "%"+value[0]+"%";
	             _map.put(strKey,keyWord);           
	         }  
	         
			    List<Object> list=otherService.querypage(_map);  
				request.setAttribute("list", list);
				request.getSession().setAttribute("searchcontent", searchcontent);
		        return "searchcontentResult";  
		    } 
	 
	
		 /*
			 * 分页
			 */
			 @RequestMapping(value="/pagesub",produces="text/html;charset=UTF-8" )
			    private String pagesub(HttpServletRequest request,HttpServletResponse response,Model model) throws IOException{  
				 request.setCharacterEncoding("utf-8");
				 Map map= request.getParameterMap();
		         Map _map= new HashMap();
		         String searchcontent = request.getParameter("searchcontent");
                 page = page - 1;
		         int pagesize = (page-1)*10; 
		         _map.put("page",pagesize);	         
		         for(Iterator iter=map.entrySet().iterator();iter.hasNext();) {
		             Map.Entry element = (Map.Entry) iter.next();
		             Object strKey = element.getKey();
		             String[] value = (String[]) element.getValue();
		             System.out.print(strKey.toString() + "=");
		             for (int i = 0; i < value.length; i++) {
		                 System.out.print(value[i] + ",");
		             }
		             String keyWord = "%"+value[0]+"%";
		             _map.put(strKey,keyWord);	            	            
		         }  
		            
				    List<Object> list=otherService.querypage(_map);  
					request.setAttribute("list", list);
					request.getSession().setAttribute("searchcontent", searchcontent);
			        return "searchcontentResult";  
			    }  

}

package com.csr.service.userlogin;

import java.util.List;
import java.util.Map;

public interface OtherServiceI {  
    
    public List<Object> getOterList();  
    public int addUserInfo(Map argsMap);
    public Object qryUserInfo(Map argsMap);
    public List<Object> qryAllUserInfo();
    
    public List<Object> qrysearchcontent(Map argsMap);
    
    public List<Object> querypage(Map argsMap);

}  

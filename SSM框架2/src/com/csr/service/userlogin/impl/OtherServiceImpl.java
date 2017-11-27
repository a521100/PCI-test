package com.csr.service.userlogin.impl;

import com.csr.dao.BaseDao;
import com.csr.service.userlogin.OtherServiceI;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("otherService")
public class OtherServiceImpl implements OtherServiceI{


    @Resource(name="baseDao")
    private BaseDao baseDao;

    @Override
    public List<Object> getOterList() {
        return baseDao.queryListData("qry_houseinfortab");
    }

    @Override
    public int addUserInfo(Map argsMap) {
        return baseDao.addData("add_userinfo",argsMap);
    }

    @Override
    public Object qryUserInfo(Map argsMap) {
        return baseDao.queryData("qry_userinfo",argsMap);
    }
    
    @Override
    public List<Object> qrysearchcontent(Map argsMap) {
        return baseDao.querysearch("qry_searchinfo",argsMap);
    }

    @Override
    public  List<Object> qryAllUserInfo() {
        return baseDao.queryListData("qry_alluserinfo");
    }
    
    @Override
    public List<Object> querypage(Map argsMap) {
        return baseDao.querypage("qry_page",argsMap);
    }
 
    
    @Override
    public List<Object> getAllList() {
        return baseDao.queryListData("qry_tab");
    }
}

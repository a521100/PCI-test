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
    public List<Object> getOterList2() {
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
    public Object getstep0(Map argsMap) {
        return baseDao.creat("step0",argsMap);
    }
    
    @Override
    public void getstep(){
		baseDao.creat("step");
    }
    @Override
    public void getstep1(){
		baseDao.creat("step1");
    }
    @Override
    public void getstep2(){
		baseDao.creat("step2");
    }
    @Override
    public void getstep21(){
		baseDao.insert("step21");
    }
    @Override
    public void getstep3(){
		baseDao.creat("step3");
    }
    @Override
    public void getstep31(){
		baseDao.creat("step31");
    }
    @Override
    public void getstep32(){
		baseDao.creat("step32");
    }
    
    @Override
    public void getstep33(){
		baseDao.creat("step33");
    }
    @Override
    public void getstep340(){
		baseDao.creat("step340");
    }
    @Override
    public void getstep34(){
		baseDao.insert("step34");
    }
    @Override
    public void getstep35(){
		baseDao.insert("step35");
    }
    
    @Override
    public void newgetstep1(){
		baseDao.creat("newstep1");
    }
    @Override
    public void newgetstep2(){
		baseDao.insert("newstep2");
    }
    @Override
    public void newgetstep3(){
		baseDao.creat("newstep3");
    }
    @Override
    public void newgetstep4(){
		baseDao.insert("newstep4");
    }
    
    @Override
    public void steppci1(){
		baseDao.creat("steppci1");
    }
    @Override
    public void steppci2(){
		baseDao.creat("steppci2");
    }
    @Override
    public void steppci3(){
		baseDao.insert("steppci3");
    }
    @Override
    public void steppci4(){
		baseDao.insert("steppci4");
    }
    @Override
    public void steppci5(){
		baseDao.update("steppci5");
    }
    @Override
    public void gettotal1(){
		baseDao.update("total1");
    }
    @Override
    public void gettotal2(){
		baseDao.update("total2");
    }
    @Override
    public void gettotal4(){
		baseDao.insert("total4");
    }

    
    @Override
    public List<Object> getstep4() {
        return baseDao.queryListData("step4");
    }
    @Override
    public List<Object> getstep5() {
        return baseDao.queryListData("step5");
    }
    @Override
    public List<Object> getstep6() {
        return baseDao.queryListData("step6");
    }
    
    @Override
    public List<Object> getpci() {
        return baseDao.queryListData("getpci");
    }
    
    @Override
    public List<Object> gettotal3() {
        return baseDao.queryListData("gettotal3");
    }

    
    @Override
    public void drop1(){
		baseDao.drop("drop1");
    }
    
    @Override
    public void drop2(){
		baseDao.drop("drop2");
    }
    
    @Override
    public void drop3(){
		baseDao.drop("drop3");
    }
    
    @Override
    public void drop4(){
		baseDao.drop("drop4");
    }
    
    @Override
    public void drop5(){
		baseDao.drop("drop5");
    }
    
    @Override
    public void drop6(){
		baseDao.drop("drop6");
    }
    
    @Override
    public void drop7(){
		baseDao.drop("drop7");
    }
    @Override
    public void drop8(){
		baseDao.drop("drop8");
    }
    @Override
    public void drop9(){
		baseDao.drop("drop9");
    }
    @Override
    public void drop10(){
		baseDao.drop("drop10");
    }
    @Override
    public void drop11(){
		baseDao.drop("drop11");
    }
    @Override
    public void drop12(){
		baseDao.drop("drop12");
    }
    @Override
    public void drop13(){
		baseDao.drop("drop13");
    }
    @Override
    public void drop14(){
		baseDao.drop("drop14");
    }
    
}

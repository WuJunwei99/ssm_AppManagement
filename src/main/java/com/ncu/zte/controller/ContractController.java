package com.ncu.zte.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.junit.validator.PublicClassValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncu.zte.beans.Contract;
import com.ncu.zte.service.ContractService;
import com.ncu.zte.service.StudentService;

@Controller
@RequestMapping("Contract")
public class ContractController {

	@Autowired
	private ContractService ContractService;

	@InitBinder
	public void initBinder(ServletRequestDataBinder binder){
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping("save")
	@ResponseBody
	public Map<String, String> saveContract(@RequestBody Contract contract,BindingResult result){
	   	
	   	Map<String, String> map = new HashMap<>();
	   	
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", "500");
            return map;
        }
	   	Boolean flag = this.ContractService.insertContract(contract);
	   	if(flag){
		   	map.put("status", "200");
	   	}else{
		   	map.put("status", "500");
	   	}

	   	return map;
	}
	
	@RequestMapping("find")
    @ResponseBody
	public Map<String, Object> findContract(String id){
	   	Map<String, Object> map = new HashMap<>();
	   	Contract contract = this.ContractService.selectContractById(id);
	   	map.put("contract",contract);
	   	return map;
	   
	}
	
	
    @RequestMapping("list")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryContractAll(){
    	
    	Map<String, Object> map = new HashMap<>();
    	//查询贷款信息列表List<Contract>
    	List<Contract> Contracts = this.ContractService.queryContractAll();
    	map.put("rows",Contracts);
    	return map;
    }
    
    /**
     * 请求路径：/edit
     * 方法返回值：{status：200}
     * 参数：Contract对象
     */
    @RequestMapping("edit")
    @ResponseBody
    public Map<String, Object> editContract(@Valid Contract Contract, BindingResult result) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", 500);
            return map;
        }
        
        // 调用ContractService的新增方法
        Boolean b = this.ContractService.editContract(Contract);
        if (b) {
            map.put("status", 200);
        }else{
            map.put("status", 500);
        }
        return map;
    }
    
    /**
     * 请求路径：/delete
     * 方法返回值：{status：200}
     * 参数：以逗号分割的ids
     */
//    @RequestMapping("delete")
//    @ResponseBody
//    public Map<String, Object> deleteContract(@RequestParam("ids")String[] ids) throws Exception {
//        
//        Map<String, Object> map = new HashMap<String, Object>();
//        
//        // 调用ContractService的新增方法
//        Boolean b = this.ContractService.deleteByIds(ids);
//        if (b) {
//            map.put("status", 200);
//        }else{
//            map.put("status", 500);
//        }
//        
//        return map;
//    }
//    
//    


    
//    @RequestMapping("checkPassword")
//    @ResponseBody
//    public Map<String, Object> checkPassword(Contract Contract) throws Exception {
//        
//        Map<String, Object> map = new HashMap<String, Object>();
//        
//        // 调用ContractService的新增方法
//        System.out.println(Contract);
//	   	Contract Contract1 = this.ContractService.selectContractByName(Contract.getName());
//	   	if(Contract1==null){
//	   		map.put("status", "100");
//	   	}else{
//
//	   		if(Contract1.getPassword().equals(Contract.getPassword())){
//	   			map.put("status", "200");
//	   		}else{
//	   		
//		   	map.put("status", "500");}
//	   	}
//        return map;
//    }
    
    
    

    
    
}

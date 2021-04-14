package com.ncu.zte.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.junit.validator.PublicClassValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ncu.zte.beans.Student;
import com.ncu.zte.service.StudentService;

@Controller
@RequestMapping("Student")
public class StudentController {

	@Autowired
	private StudentService StudentService;

	//@RequestMapping("save")
	@ResponseBody
	public Map<String, String> saveStudent(@Valid Student Student,BindingResult result){
	   	
	   	Map<String, String> map = new HashMap<>();
	   	
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", "500");
            return map;
        }
        
	   	Boolean flag = this.StudentService.insertStudent(Student);
	   	if(flag){
		   	map.put("status", "200");
	   	}else{
		   	map.put("status", "500");
	   	}

	   	return map;
	}
	
    @RequestMapping("list")
    @ResponseBody		//把Controller方法返回值转化为JSON，称为序列化
    public Map<String, Object> queryStudentAll(){
    	
    	Map<String, Object> map = new HashMap<>();
    	//查询总条数
    	Long total = this.StudentService.queryTotal();
    	map.put("total", total);
    	//查询用户列表List<Student>
    	List<Student> Students = this.StudentService.queryStudentAll();
    	map.put("rows",Students);
    	return map;
    }
    
    /**
     * 请求路径：/edit
     * 方法返回值：{status：200}
     * 参数：Student对象
     */
    @RequestMapping("edit")
    @ResponseBody
    public Map<String, Object> editStudent(@Valid Student Student, BindingResult result) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 如果有异常错误
        if (result.hasErrors()) {
            System.out.println(result.getAllErrors());
            map.put("status", 500);
            return map;
        }
        
        // 调用StudentService的新增方法
        Boolean b = this.StudentService.editStudent(Student);
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
    @RequestMapping("delete")
    @ResponseBody
    public Map<String, Object> deleteStudent(@RequestParam("ids")String[] ids) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用StudentService的新增方法
        Boolean b = this.StudentService.deleteByIds(ids);
        if (b) {
            map.put("status", 200);
        }else{
            map.put("status", 500);
        }
        
        return map;
    }
    
    

    @RequestMapping("checkStudentName")
    @ResponseBody
    public Map<String, Object> checkStudentName(Student Student) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用StudentService的新增方法

	   	Student Student1 = this.StudentService.findStudentByName(Student);
	   	if(Student1==null){
		   	Boolean flag = this.StudentService.insertStudent(Student);
		   	if(flag){
			   	map.put("status", "200");
		   	}else{
			   	map.put("status", "500");
		   	}
	   	}else{
		   	map.put("status", "500");
	   	}
        return map;
    }
    
    @RequestMapping("checkPassword")
    @ResponseBody
    public Map<String, Object> checkPassword(Student Student) throws Exception {
        
        Map<String, Object> map = new HashMap<String, Object>();
        
        // 调用StudentService的新增方法
        System.out.println(Student);
	   	Student Student1 = this.StudentService.findStudentByName(Student);
	   	if(Student1==null){
	   		map.put("status", "100");
	   	}else{

	   		if(Student1.getPassword().equals(Student.getPassword())){
	   			map.put("status", "200");
	   		}else{
	   		
		   	map.put("status", "500");}
	   	}
        return map;
    }
    
    
    

    
    
}

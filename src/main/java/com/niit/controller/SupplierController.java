package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.SupplierDao;
import com.niit.model.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDao supplierDao;
	@RequestMapping("Supplier")
	public ModelAndView newSupplier(){
		
		ModelAndView mv = new ModelAndView("Supplier");
		mv.addObject("AddSupplierButtonClicked", true);
		return mv;
	}
	
	
	@RequestMapping("addSupplier")
	public String addSupplier(@ModelAttribute Supplier supplier,Model model){
		supplierDao.saveOrUpdate(supplier);
		
		return "redirect:ViewSupplier";
		
	}
	
	@RequestMapping("ViewSupplier")
	public String viewSupplier(Model model){
		
		List<Supplier> supplierList = supplierDao.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("ViewSupplierButtonClicked", true);
		
		return "Supplier";
		
	}
	
	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam("supplierId") int supplierid ,Model model){
		
		supplierDao.delete(supplierid);
		return "redirect:ViewSupplier";
		
	}
	
	@RequestMapping("editSupplier")
	public String editSupplier(@RequestParam ("supplierId") int supplierId, Model model){
		Supplier supplier = supplierDao.getBySupplierId(supplierId);
		model.addAttribute("supplier", supplier);
		model.addAttribute("editSupplierClicked", true);
		return "Supplier";
		
	}
	@RequestMapping("supplierEdited")
	public String supplierEdited(@ModelAttribute Supplier supplier){
		
		supplierDao.saveOrUpdate(supplier);
		return "redirect:ViewSupplier";
	}
}

 
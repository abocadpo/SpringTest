package com.abocado.test.ajax;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abocado.test.ajax.domain.Favorite;
import com.abocado.test.ajax.service.FavoriteService;

@RequestMapping("/ajax/favorite")
@Controller
public class FavoriteController {
	
	@Autowired
	public FavoriteService favoriteService; 
	
	@GetMapping("/list")
	public String FavoriteList(Model model) {
		
		List<Favorite> favoriteList = favoriteService.getFavoriteList();
		
		model.addAttribute("favoriteList", favoriteList);
		
		return "/ajax/favorite/list";
	}
	
	@ResponseBody
	@PostMapping("/add")
	public Map<String, String> createdFavorite(
			@RequestParam("name") String name
			, @RequestParam("address") String address) {
		int count = favoriteService.addFavorite(name, address);
		
		// 실행결과 성공여부
		// 성공 : {"result": "success"}
		// 실패 : {"result": "fail"}
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	@GetMapping("/input")
	public String favoriteInput() {
		return "ajax/favorite/input";
	}
	
	
	
//	// 삭제 API
//	@GetMapping("/delete")
//	@ResponseBody
//	 public Map<String, String> deleteFavorite(@RequestParam("id") int id) {
//		int count = favoriteService.deleteFavorite(id);
//		
//		// 성공 : {"result" : "success"}
//		// 실패 : {"result" : "fail"}
//		
//		Map<String, String> resultMap = new HashMap<>();
//		
//		if(count == 1) {
//			// 성공
//			resultMap.put("result", "success");
//		} else {
//			// 실패
//			resultMap.put("result", "fail");
//		}
//		
//		return resultMap;
//	}
//	
	
}

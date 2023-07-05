package com.abocado.test.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lifecycle/test01")
public class Test02Controller {
	
	@ResponseBody
	@RequestMapping("/3")
	public List<Map<String, Object>> movieList() {
		
		List<Map<String, Object>> movieList = new ArrayList<>();
		
		Map<String, Object> movie = new HashMap<>();
		movie.put("title", "기생충");
		movie.put("director", "봉준호");
		movie.put("rate", 15);
		movie.put("time", 131);
		
		movieList.add(movie);
		
		movie.put("title", "인셉션");
		movie.put("director", "놀란");
		movie.put("rate", 20);
		movie.put("time", 161);
		
		movieList.add(movie);
		
		return movieList;
	}
	
	public postList() {
		
		List<Post> postList = new ArrayList<>();
		Post post = new Post("안녕하세요 가입인사 드립니다", "hagulu", "안녕하세요 가입했어요. 앞으로 잘 부탁드립니다");
		postList.add(post);
	}
	
	
	
}

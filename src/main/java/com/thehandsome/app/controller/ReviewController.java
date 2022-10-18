package com.thehandsome.app.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.ReviewDTO;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.ReviewService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/review")
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Resource
	ReviewService reviewService;
	
	@GetMapping(value = "/getproductreview", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String getProductReviewList(@RequestParam(defaultValue = "1") int pageNum, String productCode, int pageSize,
			String reviewType, Model model, HttpSession session) {
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setPcodecolor(productCode);
		if(!reviewType.equals("ALL")) {
			reviewDTO.setReviewtype(reviewType);	
		}
		else {
			reviewDTO.setReviewtype("%");	
		}
		
		List<ReviewDTO> reviewList = reviewService.getReviewList(reviewDTO);

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		for (ReviewDTO review : reviewList) {
			JSONObject tmpObject = new JSONObject();

			JSONObject pObject = new JSONObject();
			pObject.put("rno", review.getRno());
			pObject.put("mid", review.getMid());
			pObject.put("pcode", review.getPcode());
			pObject.put("pcodecolor", review.getPcodecolor());
			pObject.put("psize", review.getPsize());
			pObject.put("rdate", review.getRdate());
			pObject.put("rrate", review.getRrate());
			pObject.put("rcontent", review.getRcontent());
			pObject.put("rimg", review.getRimg());
			pObject.put("product_pcode", review.getProduct_pcode());
			pObject.put("product_pno", review.getProduct_pno());
			pObject.put("reviewtype", review.getReviewtype());
			
			tmpObject.put("review", pObject);
		
			jsonArray.put(tmpObject);
		}
		
		//jsonObject.put("reviewOrderData", jsonArray);		
		jsonObject.put("reviewList", jsonArray);
		jsonObject.put("reviewCnt", 3);
		jsonObject.put("reviewPhotoCnt", 1);
		jsonObject.put("reviewTextCnt", 2);
		jsonObject.put("reviewAvg", 4);
		jsonObject.put("result", "success");
		String json = jsonObject.toString();

		return json;
	}
	
	@GetMapping(value = "/reviewWriteBeforeVerify", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String reviewWriteBeforeVerify(@RequestParam String productCode, Model model, HttpSession session) {
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setPcodecolor(productCode);
		
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		jsonObject.put("orderProductReviewList", jsonArray);
		jsonObject.put("offlineProductReviewList", jsonArray);
		jsonObject.put("height", 10);
		jsonObject.put("enjoySize", 15);
		jsonObject.put("photoAccumulationRightYn", "Y");
		
		
		String json = jsonObject.toString();

		return json;
	}
	

}

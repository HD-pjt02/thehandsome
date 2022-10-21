package com.thehandsome.app.controller;

import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.ReviewDTO;
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
		
		//mapper에서 조회해온 데이터를 이곳에 담아 반환
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
	
	//ajax에서 데이터를 받아옴 
	//리뷰 작성하기 위해 필요한 데이터를 가져오는 메소드
	@GetMapping(value = "/reviewWriteBeforeVerify", produces = "application/json; charset=UTF-8")
	@ResponseBody // 데이터만 조회해서 보내주기 때문에 화면 전환이 아닌 전송방식
	public String reviewWriteBeforeVerify(@RequestParam String productCode, HttpSession session) { // 세션 로그인 체크를 위함 
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setPcodecolor(productCode); // 여기서 productcode 를 pcodecolor 라 지칭함 
		
		ReviewDTO colorProduct = reviewService.getColorProduct(reviewDTO);

		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		jsonObject.put("orderProductReviewList", jsonArray);//주문내역을 확인 ? 
		jsonObject.put("offlineProductReviewList", jsonArray);// 추후 삭제 
		jsonObject.put("height", 10);//키, 추후삭제
		jsonObject.put("enjoySize", 15);//평소입는 사이즈 추후삭제 
		jsonObject.put("photoAccumulationRightYn", "Y");//사진 여부 남기게 할 것인지 ? 추후삭제 
		
	
		//상품상세페이지에서 조회해온 정보를 통해 기존에 있던 데이터로 조회를 성공했음 
		
		
		String json = jsonObject.toString();

		return json;
	}
	
	//리뷰등록 할때  첨부파일 미등록
	//insert into review values(seq.nextVal,#{mid},#{pcode},pcodecolor,sysdate,#{rcontent},#{rlmg},#{product_pcode},#{product_pno},#{reviewtype});
	@RequestMapping(value ="/reviewWriteNew", method = {RequestMethod.GET})
	@ResponseBody 
	public String reviewWriteNew(@RequestParam Map<String,Object> map, HttpSession session) {
		
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("member");//세션에 있는 멤버 관련 내용을 모두 가져옴 
		System.out.println(memberInfo.getId());
		System.out.println((String)map.get("pcode"));
		System.out.println((String)map.get("productCode"));
		
		
		System.out.println("리뷰쓰기 폼");
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setRrate(Integer.parseInt((String)map.get("rating")));
		reviewDTO.setRcontent((String)map.get("headline"));
		reviewDTO.setMid(memberInfo.getId());
		reviewDTO.setPcode((String)map.get("pcode"));
		reviewDTO.setPcodecolor((String)map.get("productCode"));
		reviewDTO.setRimg("");
		reviewDTO.setProduct_pcode((String)map.get("pcode"));
		reviewDTO.setProduct_pno(Integer.parseInt((String)map.get("pno")));
		reviewDTO.setReviewtype("TEXT");
		//reviewDTO.setRimg((String)map.get("reviewFile"));
		Long result = reviewService.insertReview(reviewDTO);
		System.out.println("별점:"+reviewDTO.getRrate());
		System.out.println("내용:"+reviewDTO.getRcontent());
		//logger.info("이미지"+reviewDTO.getRimg());
		JSONObject jsonObject = new JSONObject();
		
		JSONArray jsonArray = new JSONArray();
		
	
		
		String json = jsonObject.toString();

		return json;//ajax이므로 데이터 다시 있던 곳으로 보내기 
		
	}
	
//	//리뷰등록 할때  첨부파일 등록 
//		@RequestMapping(value ="/reviewWriteNew", method = {RequestMethod.GET})
//		@ResponseBody 
//		public String reviewWriteNewPhoto(@RequestParam Map<String,Object> map) {
//			
//			System.out.println("리뷰쓰기 폼");
//			ReviewDTO reviewDTO = new ReviewDTO();
//			reviewDTO.setRrate(Integer.parseInt((String)map.get("rating")));
//			reviewDTO.setRcontent((String)map.get("headline"));
//			reviewDTO.setRimg((String)map.get("reviewFile"));
//			
//			Long resultphoto = reviewService.insertPhotoReview(reviewDTO);
//			
//			System.out.println("별점:"+reviewDTO.getRrate());
//			System.out.println("내용:"+reviewDTO.getRcontent());
//			System.out.println("이미지:"+reviewDTO.getRimg());
//			
//			JSONObject jsonObject = new JSONObject();
//			JSONArray jsonArray = new JSONArray();
//		
//			String json = jsonObject.toString();
//
//			return json;//ajax이므로 데이터 다시 있던 곳으로 보내기 
//			
//		}
//	
	

}

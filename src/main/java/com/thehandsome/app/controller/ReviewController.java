package com.thehandsome.app.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.thehandsome.app.dto.ColorDTO;
import com.thehandsome.app.dto.MemberDTO;
import com.thehandsome.app.dto.OrderItemListDTO;
import com.thehandsome.app.dto.ProductDTO;
import com.thehandsome.app.dto.ReviewDTO;
import com.thehandsome.app.service.OrderService;
import com.thehandsome.app.service.ProductService;
import com.thehandsome.app.service.ReviewService;

import lombok.extern.log4j.Log4j;

/* 
 * 작성자 : 신미림
 * 작성일 : 2022.10.20.월
 * 리뷰관련컨트롤러
 */

@Log4j
@Controller
@RequestMapping("/review")
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Resource
	ReviewService reviewService; 
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "/review", produces = "application/json; charset=UTF-8", method = {RequestMethod.GET})
	@ResponseBody
	public String review(@RequestParam String productCode, Model model, HttpSession session) {
		
		MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setPcodecolor(productCode);
		reviewDTO.setReviewtype("%");	
		
		
		//mapper에서 조회해온 데이터를 이곳에 담아 반환
		List<ReviewDTO> reviewList = reviewService.getReviewList(reviewDTO);

		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		JSONObject reviewListObject = new JSONObject();
		JSONObject pageObject = new JSONObject();
		
		pageObject.put("currentPage", 0);
		pageObject.put("numberOfPages", 2);
		pageObject.put("pageSize", 4);
		pageObject.put("totalNumberOfResults", 0);
		
		for (ReviewDTO review : reviewList) {
			

			JSONObject pObject = new JSONObject();
			pObject.put("rno", review.getRno());
			pObject.put("mid", review.getMid());
			pObject.put("pcode", review.getPcode());
			pObject.put("pcodecolor", review.getPcodecolor());
			pObject.put("psize", review.getPsize());
			pObject.put("displayCreateDate", review.getRdate());//리뷰작성일
			pObject.put("rating", review.getRrate());//별점
			pObject.put("headline", review.getRcontent());//리뷰내용
			pObject.put("photograph", review.getRimg());
			pObject.put("product_pcode", review.getProduct_pcode());
			pObject.put("product_pno", review.getProduct_pno());
			pObject.put("reviewtype", review.getReviewtype());
			
			
			pObject.put("realAccumulationReviewPoint", 0);
			pObject.put("photographCnt", 1);
			pObject.put("bestYN", false);
			pObject.put("profileData", "NORMAL");//등급
			
			

			jsonArray.put(pObject);
		}
		reviewListObject.put("pagination", pageObject);
		reviewListObject.put("results", jsonArray);
		
		//jsonObject.put("reviewOrderData", jsonArray);		
		jsonObject.put("reviewList", reviewListObject);
		jsonObject.put("reviewCnt", reviewService.selectAllReviewCount(reviewDTO));
		jsonObject.put("reviewPhotoCnt", reviewService.selectPhotoReviewCount(reviewDTO));
		jsonObject.put("reviewTextCnt", reviewService.selectTextReviewCount(reviewDTO));
		jsonObject.put("reviewAvg", reviewService.selectoReviewRateAvg(reviewDTO));
		jsonObject.put("reviewType", "ALL");
		//jsonObject.put("reviewOrderData", );
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		
		
	
		return json;
	}
	
	
	@RequestMapping(value = "/getproductreview", produces = "application/json; charset=UTF-8", method = {RequestMethod.GET})
	@ResponseBody
	public String getProductReviewList(@RequestParam(defaultValue = "1") int pageNum, String productCode, int pageSize,
			String reviewType, Model model, HttpSession session) {
		
		MemberDTO memberInfo = (MemberDTO)session.getAttribute("member");
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setPcodecolor(productCode);
		session.setAttribute("currentId", memberInfo.getId());
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
		JSONObject reviewListObject = new JSONObject();
		JSONObject pageObject = new JSONObject();
		
		pageObject.put("currentPage", 0);
		pageObject.put("numberOfPages", 2);
		pageObject.put("pageSize", 4);
		pageObject.put("totalNumberOfResults", 0);
		
		for (ReviewDTO review : reviewList) {
			

			JSONObject pObject = new JSONObject();
			pObject.put("rno", review.getRno());
			pObject.put("mid", review.getMid());
			pObject.put("pcode", review.getPcode());
			pObject.put("pcodecolor", review.getPcodecolor());
			pObject.put("psize", review.getPsize());
			pObject.put("displayCreateDate", review.getRdate());//리뷰작성일
			pObject.put("rating", review.getRrate());//별점
			pObject.put("headline", review.getRcontent());//리뷰내용
			pObject.put("photograph", review.getRimg());
			pObject.put("product_pcode", review.getProduct_pcode());
			pObject.put("product_pno", review.getProduct_pno());
			pObject.put("reviewtype", review.getReviewtype());
			
			pObject.put("purchaseColorName", review.getPcodecolor());
			pObject.put("purchaseSize", review.getPsize());
			pObject.put("realAccumulationReviewPoint", 0);
			pObject.put("photographCnt", 1);
			pObject.put("bestYN", false);
			pObject.put("profileData", "NORMAL");//등급
			pObject.put("orderNumber", 1);
			pObject.put("purchaseProdYN", 'Y');
			
			

			jsonArray.put(pObject);
		}
		reviewListObject.put("pagination", pageObject);
		reviewListObject.put("results", jsonArray);
		
		//jsonObject.put("reviewOrderData", jsonArray);		
		jsonObject.put("reviewList", reviewListObject);
		jsonObject.put("reviewCnt", reviewService.selectAllReviewCount(reviewDTO));
		jsonObject.put("reviewPhotoCnt", reviewService.selectPhotoReviewCount(reviewDTO));
		jsonObject.put("reviewTextCnt", reviewService.selectTextReviewCount(reviewDTO));
		jsonObject.put("reviewAvg", reviewService.selectoReviewRateAvg(reviewDTO));
		jsonObject.put("reviewType", reviewType);
		//jsonObject.put("reviewOrderData", );
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		
		
	
		return json;
	}
	
	//ajax에서 데이터를 받아옴 
	//리뷰 작성하기 위해 필요한 데이터를 가져오는 메소드
	@GetMapping(value = "/reviewWriteBeforeVerify", produces = "application/json; charset=UTF-8")
	@ResponseBody // 데이터만 조회해서 보내주기 때문에 화면 전환이 아닌 전송방식
	public String reviewWriteBeforeVerify(@RequestParam String productCode, HttpSession session) { // 세션 로그인 체크를 위함 
		MemberDTO memberInfo = (MemberDTO) session.getAttribute("member");//세션에 있는 멤버 관련 내용을 모두 가져옴 
		session.setAttribute("currentId", memberInfo.getId());
		System.out.println(memberInfo.getId());
		ColorDTO colorDTO = productService.getCurrentProductColor(productCode);
		ProductDTO productDTO = productService.getProduct(colorDTO.getPcode());
		System.out.println(colorDTO.getPcodecolor());
		OrderItemListDTO orderDTO = new OrderItemListDTO();
		orderDTO.setMno(memberInfo.getMno());
		orderDTO.setPcode(colorDTO.getPcode());
		orderDTO.setPcodecolor(colorDTO.getPcodecolor());
		
		JSONObject jsonObject = new JSONObject();
		if(orderService.checkMemberOrderProduct(orderDTO) == null) {
			jsonObject.put("rsltMsg", "주문 내역이 없습니다.");
			return jsonObject.toString();
		}
		ReviewDTO reviewCheck = new ReviewDTO();
		reviewCheck.setMid(memberInfo.getId());
		reviewCheck.setPcode(colorDTO.getPcode());
		reviewCheck.setPcodecolor(colorDTO.getPcodecolor());

		if(reviewService.checkMemberReviewProduct(reviewCheck) != null) {
			jsonObject.put("rsltMsg","이미 리뷰를 작성했습니다.");
			return jsonObject.toString();
		}
		
		
		

		
		
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
		ColorDTO colorDTO = productService.getCurrentProductColor((String)map.get("productCode"));
		
		
		
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
	
	//리뷰등록 할때  첨부파일 등록 
		@RequestMapping(value ="/reviewWriteNew", method = {RequestMethod.POST})
		@ResponseBody 
		public String reviewWriteNewPhoto(@RequestParam Map<String,Object> map,MultipartFile[] reviewFile, HttpSession session) {
			
			MemberDTO memberInfo = (MemberDTO) session.getAttribute("member");//세션에 있는 멤버 관련 내용을 모두 가져옴 
			System.out.println(memberInfo.getId());
			System.out.println((String)map.get("pcode"));
			System.out.println((String)map.get("productCode"));
			ColorDTO colorDTO = productService.getCurrentProductColor((String)map.get("productCode"));
			
	
			
			
			Long nextRno = reviewService.selectNextReviewNo();
			
			
			String uploadFolder = "D:\\mirim\\kosa\\thehandsome\\src\\main\\webapp\\resources\\upload";
			String saveFileName = "";
			for(MultipartFile multipartFile : reviewFile) {
				System.out.println("-----------");
				System.out.println("파일명:"+multipartFile.getOriginalFilename());
				System.out.println("파일크기:" + multipartFile.getSize());
				
				String[] orgNameSplit = multipartFile.getOriginalFilename().split("[.]");
				saveFileName = ""+nextRno+"."+orgNameSplit[orgNameSplit.length-1]; 
				System.out.println("저장되는 파일명:"+ saveFileName);
				
				File saveFile = new File(uploadFolder, saveFileName);
				
				
				try {
					//list.add(multipartFile.getOriginalFilename());
					multipartFile.transferTo(saveFile);
				}catch(Exception e) {
					System.out.println(e.getMessage());
				}
				
				
			}
			
			
			System.out.println("리뷰쓰기 폼(사진첨부완료)");
			ReviewDTO reviewDTO = new ReviewDTO();
			reviewDTO.setRrate(Integer.parseInt((String)map.get("rating")));
			reviewDTO.setRcontent((String)map.get("headline"));
			reviewDTO.setMid(memberInfo.getId());
			reviewDTO.setPcode((String)map.get("pcode"));
			reviewDTO.setPcodecolor((String)map.get("productCode"));
			reviewDTO.setRimg(saveFileName);
			reviewDTO.setProduct_pcode((String)map.get("pcode"));
			reviewDTO.setProduct_pno(Integer.parseInt((String)map.get("pno")));
			reviewDTO.setReviewtype("PHOTO");
			Long result = reviewService.insertPhotoReview(reviewDTO);
			
			
			
			
			
			System.out.println("별점:"+reviewDTO.getRrate());
			System.out.println("내용:"+reviewDTO.getRcontent());
			System.out.println("이미지:"+reviewDTO.getRimg());
		
			JSONObject jsonObject = new JSONObject();
			JSONArray jsonArray = new JSONArray();
		
     		String json = jsonObject.toString();
            return json;//ajax이므로 데이터 다시 있던 곳으로 보내기 
		
		}
	
	

}

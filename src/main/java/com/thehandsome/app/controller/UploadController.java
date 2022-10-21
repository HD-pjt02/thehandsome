package com.thehandsome.app.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UploadController {	
	
	@GetMapping("/uploadForm")
	public void uploadForm() {
		log.info("upload 페이지 진입");		
	}//end upload...
	
	//uploadFile 이름 버그 주의
		@PostMapping("/uploadFormAction")
		public String uploadFormPost(MultipartHttpServletRequest request, MultipartFile[] uploadFile, Model model) {
			String path = request.getSession().getServletContext().getRealPath("");
            String path2 = "resources/qnaimage";
			
			String uploadFolder = "";
//			C:\\upload
			
			log.info(uploadFile);
			log.info(uploadFile.length);

			for (MultipartFile multipartFile : uploadFile) {

				log.info("-------------------------------------");
				log.info("Upload File Name: " + multipartFile.getOriginalFilename());
				log.info("Upload File Size: " + multipartFile.getSize());
				
				System.out.println(path);
				System.out.println(path2);
				
				
				File saveFile = new File(path+path2, multipartFile.getOriginalFilename());
				
				try {
					multipartFile.transferTo(saveFile);
				} catch (Exception e) {
					log.error(e.getMessage());
				} // end catch
			} // end for
			
			return "redirect:/qna/customerCenterMain";

		}//end uploadpost...
		
//	    @PostMapping("/uploadFormAction")
//		public String boardUploadFile(MultipartHttpServletRequest request ,HttpSession session, Model model) throws IOException {
//			Iterator<String> itr =  request.getFileNames();
//		        List<MultipartFile> mpf = request.getFiles(itr.next());
//		       
//		        for(int i=0; i< mpf.size();i++){
//		        	String path = request.getSession().getServletContext().getRealPath("");
//		            String path2 = request.getSession().getServletContext().getRealPath("resources/qnaimage");
//		        	System.out.println("path :  "+path);
//		        	System.out.println("path2 :  "+path2);
//		        	String fileName = "/"+new String(mpf.get(i).getOriginalFilename().getBytes("8859_1"),"utf-8");
//		        	File files = new File(path2 + fileName );
//				System.out.println("Fullpath :  "+files);
//		        	mpf.get(i).transferTo(files);
//		        }
//		        
//		        return "redirect:/qna/customerCenterMain";
//		 }

}//end class

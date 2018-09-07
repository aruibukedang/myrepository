package controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class file_Controller {
	@RequestMapping("upload")
    public @ResponseBody String  fileUpload2(@RequestParam CommonsMultipartFile file,HttpServletRequest req) throws IOException {
         long  startTime=System.currentTimeMillis();
         
         String filepath = req.getServletContext().getRealPath("/uploadFile/"); // �������·��
 		File ww = new File(filepath);
 		if (!ww.exists()) {
 			ww.mkdirs();
 		}
 		
 		String filename = file.getOriginalFilename();
		int pos = filename.lastIndexOf(".");
		// ȡͼƬ�ļ���ʽ
		String ff;
		if (pos > 0) {
			 ff = startTime + filename.substring(pos);
		}else {
			ff = startTime+"";
		}
		filename = filepath + '/' + ff;
        //ͨ��CommonsMultipartFile�ķ���ֱ��д�ļ���ע�����ʱ��
        file.transferTo(new File(filename));
        String p = req.getServletContext().getContextPath() + "/uploadFile/" + ff;
		String json="{\"status\":1,\"url\":\""+p+"\"}";
        return json; 
    }
}

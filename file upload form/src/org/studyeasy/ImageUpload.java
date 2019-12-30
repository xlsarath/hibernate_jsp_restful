package org.studyeasy;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.studyeasy.hibernate.DAO.FilesDAO;
import org.studyeasy.hibernate.entity.Files;



/**
 * Servlet implementation class ImageUpload
 */
@WebServlet("/ImageUpload")
public class ImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String path ="/Users/sarathchandra/Documents/images/";
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());		
	try {
		List<FileItem> images = upload.parseRequest(request);
		for(FileItem image: images) {
			try {
				image.write(new File("/Users/sarathchandra/Documents/images/"+image.getName()));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(image.getName());
			new FilesDAO().addFileDetails(new Files(image.getName()));
			System.out.println("Path is "+path+" "+image.getName());
			image.write(new File(path+image.getName()));

		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}

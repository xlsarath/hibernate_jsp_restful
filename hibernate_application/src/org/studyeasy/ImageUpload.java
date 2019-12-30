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
	public String path ="/Users/sarathchandra/eclipse-workspace/hibernate_application/WebContent/";
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String action = request.getParameter("action");
		switch(action) {
		case "filesUpload": 
				filesUpload(request,response);
				break;
		case "updateInformation": 
				updateInformation(request,response);
				break;
		default:
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		
	}
	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String action = request.getParameter("action");
		switch(action) {
		case "listingImages":
			listingImages(request,response);
			break;
		case "viewImage":
			viewImage(request,response);
			break;
		case "deleteImage":
			deleteImage(request,response);
			break;
		default:
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		
	}
	
	private void deleteImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Image Deleted");
		int fileId = Integer.parseInt(request.getParameter("fileId"));
		Files file = new FilesDAO().getFile(fileId);
		new FilesDAO().deleteFile(fileId);
		//logic for file deletion on file disk
		File fileOnDisc = new File(path+file.getFileName());
		if(!fileOnDisc.delete()) {
			System.out.println("File is deleted from disk"); }
		else {
				System.out.println("File isn't deleted from disk");
			}
		listingImages(request,response);

		}
		
	



	private void viewImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int fileId = Integer.parseInt(request.getParameter("fileId"));
		Files file = new FilesDAO().getFile(fileId);
		System.out.println(file);
		request.setAttribute("file", file );
		request.setAttribute("path", path);
		request.getRequestDispatcher("viewimage.jsp").forward(request, response);
	}



	private void updateInformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int fileId = Integer.parseInt(request.getParameter("fileId"));
		String label = request.getParameter("label");
		String caption = request.getParameter("caption");
		//String fileName = request.getParameter("fileName");
		Files file = new Files(fileId, label, caption );
		new FilesDAO().updateInformation(fileId,label,caption);
		listingImages(request,response);
	
	}
	
	private void listingImages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Files> files = new FilesDAO().listFiles();
		request.setAttribute("files", files);
		request.setAttribute("path", path);
		request.getRequestDispatcher("listfiles.jsp").forward(request, response);;
		
	}

	public void filesUpload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());	
		String webAppPath = getServletContext().getRealPath("/");
       // System.out.println(getServletContext().getRealPath("/"););
		try {
			List<FileItem> images = upload.parseRequest(request);
			for(FileItem image: images) {
				System.out.println("Path is "+path+" "+image.getName());
				File file = new File(path+image.getName());
				if(!file.exists()) {
					new FilesDAO().addFileDetails(new Files(image.getName()));
					image.write(file);
				}
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		listingImages(request,response);

	}

}

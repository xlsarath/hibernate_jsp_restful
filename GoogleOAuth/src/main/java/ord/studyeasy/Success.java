package ord.studyeasy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;

import org.studyeasy.model.GoogleToken;
import org.studyeasy.model.RequestTokenParams;
import org.studyeasy.model.User;

/**
 * Servlet implementation class Success
 */
public class Success extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Client client = ClientBuilder.newClient();
    WebTarget GoogleTokenServer =client.target("https://www.googleapis.com/oauth2/v4/token");
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Success() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//step2
		String code = request.getParameter("code");
		System.out.println(code);
		String client_id,client_secret,redirect_uri,grant_type;
		client_id="886864327785-mg0q4j05avpcm42ivcrpt65cb7age585.apps.googleusercontent.com";
		client_secret ="jLWFguJC-eYgLJ_5o0Jk7TTU";
		redirect_uri="http://localhost:8080/GoogleOAuth/success";
		grant_type="authorization_code";
		RequestTokenParams requestTokenParams = new RequestTokenParams(code,client_id,client_secret,redirect_uri,grant_type);
		Response tokenInJson = GoogleTokenServer.request().post(Entity.json(requestTokenParams));
	    GoogleToken googleToken = tokenInJson.readEntity(GoogleToken.class);
	    //step3
	    WebTarget googleUserInfoAPI = client.target("https://www.googleapis.com/oauth2/v2/userinfo?access_token="+googleToken.getAccess_token());
	    Response userInfo = googleUserInfoAPI.request().get();
	    //System.out.println(userInfo);
	    //System.out.println(userInfo.readEntity(String.class));
	    User user = userInfo.readEntity(User.class);
	    request.setAttribute("User", user);
	    request.getRequestDispatcher("DisplayUserInfo.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

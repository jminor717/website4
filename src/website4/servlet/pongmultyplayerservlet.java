package website4.servlet;

import java.io.IOException;
//import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import website4.controller.UserController;
import website4.controller.chatcontroler;
import website4.controller.highscorecontroller;
import website4.controller.pongwebscocketctrl;
import website4.model.post;
import website4.model.usser;



public class pongmultyplayerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String gamename="3djavascript";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		
		
		System.out.println("__________________________________________________________");
		System.out.println("pong multiplayer Servlet: DOGET");
		
		
		UserController usecontrol=new UserController();
		pongwebscocketctrl multictrl= new pongwebscocketctrl();
	
		
		usser user = null;
		Integer userid = (Integer) req.getSession().getAttribute("userid");
		if(userid!=null) {
			user=usecontrol.getuserbyid(userid);
		}
		if(user==null) {//if user id was not found creates a new guest 
			user=usecontrol.createguestuser();
		}
		
		req.getSession().setAttribute("userid", user.getuserid());
		//
		multictrl.gotomultiplayer(user.getuserid());
		
		// call JSP to generate empty form/website4/war/_view/pongmulti.jsp
		req.getRequestDispatcher("/_view/pongmulti.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		System.out.println("__________________________________________________________");
		System.out.println("pong multiplayer Servlet: doPost");
	
		UserController usecontrol=new UserController();
		//pongwebscocketctrl multictrl= new pongwebscocketctrl();
		
		//Gson gson = new GsonBuilder().create();
		boolean sync=true;
		usser user = null;
		int mine;
		Integer userid = (Integer) req.getSession().getAttribute("userid"),otherid=null;
		if(userid!=null) {
			user=usecontrol.getuserbyid(userid);
			//System.out.println("sesion usser     "+user.getusername());
		}
		if(user==null) {//if user id was not found creates a new guest   leavemultiplayer
			user=usecontrol.createguestuser() ;

		}
		mine=user.getuserid();
		try {
			String otheruser=req.getParameter("otheruser");
			System.out.println(otheruser);
			if (otheruser!=null) {
				otherid= Integer.parseInt(otheruser);
				//req.getSession().setAttribute("otheruser", otherid);
			}
			//gtmyid
			String getme=req.getParameter("gtmyid");
			if (getme!=null) {
				sync=false;
			}
			
		}
		finally{
			
		}
		
		
		
		req.getSession().setAttribute("userid", user.getuserid());
		
		
		
		
		
		resp.setContentType("text/plain");
		//resp.getWriter().println(userlist);
		//resp.getWriter().print(" ");
		resp.getWriter().println(mine);
		
		if(sync) {
			//req.setAttribute("user", user);
			req.setAttribute("mine", mine);
			if(otherid!=null)
				req.setAttribute("otherid", otherid);
			req.getRequestDispatcher("/_view/pongmulti.jsp").forward(req, resp);
		}
	}

	
	
}

package website4.controller;



import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

//	import website4.database.DatabaseProvider;
//	import website4.database.IDatabase;
//	import website4.databsecontroler.InitDatabase;
import website4.model.post;


public class chatcontroler {
	private post incomingpost;
	private ArrayList<post> posts=new ArrayList<post>();
	public chatcontroler() {
		incomingpost=new post(15210791386L,"jminor","this cant be right");
		posts.add(incomingpost);
		incomingpost=new post(1511079138360L,"jminor","iim from teh past");
		posts.add(incomingpost);
		incomingpost=new post(1521079138360L,"jminor","this is a post with some text");
		posts.add(incomingpost);
		incomingpost=new post(1521079138360L,"jminor","so is this");
		posts.add(incomingpost);
		incomingpost=new post(1523079138360L,"jminor","i can see the future");
		posts.add(incomingpost);
	
	}
	
	
	
	//TODO this controler will take username and password from servlet and check or reject the information
	// if the information is invalid it should throw an exception to the servlet which will send the message to the user
	
	//for now this method will contain an aray but later that will be replased by a database
	/**
	 * this method should be called from the servlets to add new posts to the total
	 * for now it is an araylist but later this method will interface with the data base
	 * it will also validate the post eg makesure its not to long, contains no html/js/sql, ect 
	 * 
	 * @param mils_time
	 * @param username
	 * @param post
	 */
	public void makenewpost(long mils_time ,String username,String posttext) {
		if(posttext!=""&&posttext!=null) {
			//other validations will go here
			
			
			
			incomingpost=new post(mils_time,username,posttext);
			
			posts.add(incomingpost);
		}	
	}
	
	
	public List<post> Getchat(){
		//Scanner keyboard = new Scanner(System.in);
		
		//InitDatabase.init(keyboard);
		
		//IDatabase db = DatabaseProvider.getInstance();
		
		//return db.getpostsnoblacklist();

		return posts;
	}
	
	
	
	
	
	
	
	
}
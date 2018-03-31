package website4.database;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import website4.model.post;
import website4.model.usser;

public interface IDatabase {
	
	public List<post> getposts_no_blacklist(int chatindex,int numposts);
	public void addpost(long mils_time ,int userid,String posttext);
	public usser getuser_by_id(int id);
	public void addusertodb(int userid,String username,String password,String email,int coins);
	public boolean checkdbcontainsuserid(int id);
	public boolean checkdbcontainsusername(String username);
	/**
	 * key= score
	 * value = userid
	 * @param nameofthegame
	 * @return
	 */
	public List<Map.Entry<String, Integer>> getper_game_scores(String nameofthegame);//List<Map.Entry<Integer, Integer>>
	public List<Map.Entry<String, Integer>> addscoretogmaedb(String nameofthegame,int userid,int score,String username );
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Song;

/**
 *
 * @author nvlon
 */
public class SongDAO extends DBContext {

    public List<Song> getLatest() {
        List<Song> latest = new ArrayList<>();
        String sql = "select top 6 song.songID, name, img, uri, viewCount, categoryName\n"
                + "from \n"
                + "song inner join genre on song.songID = genre.songID \n"
                + "inner join category on	genre.categoryID = category.categoryID\n"
                + "order by songID desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Song s = new Song();
                s.setSongID(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setGenre(rs.getString(6));
                s.setImg(rs.getString(3));
                s.setUri(rs.getString(4));
                s.setViewCount(rs.getInt(5));
                latest.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return latest;
    }
    
    public void printSth(){
        System.out.println("Tested");
    }
    
    public static void main(String[] args) {
        SongDAO sdb = new SongDAO();
        List<Song> top6 = sdb.getLatest();
        System.out.println(top6.get(0));
    }
    
}


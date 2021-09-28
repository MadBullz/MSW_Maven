/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nvlon
 */
public class Song {
    private int songID, viewCount;
    private String name, singer, genre, img, uri;

    public Song() {
    }

    public Song(int songID, int viewCount, String name, String singer, String genre, String img, String uri) {
        this.songID = songID;
        this.viewCount = viewCount;
        this.name = name;
        this.singer = singer;
        this.genre = genre;
        this.img = img;
        this.uri = uri;
    }

    public int getSongID() {
        return songID;
    }

    public void setSongID(int songID) {
        this.songID = songID;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    @Override
    public String toString() {
        return "Song{" + "songID=" + songID + ", name=" + name + ", singer=" + singer + ", genre=" + genre + ", img=" + img + ", uri=" + uri + ", viewCount=" + viewCount + '}';
    }
    
}

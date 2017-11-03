package server;

import java.util.List;

import entity.ImageTable;

public interface ImageTableServer {

	public boolean add(ImageTable image);//为水果添加图片
	
	public List<ImageTable> selImage(int rid);//根据出售水果id获得图片集合
	
	public boolean deleteImage(int id);
	
	public ImageTable loadImage(int id);
}

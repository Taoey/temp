package server;

import java.util.List;

import entity.ImageTable;

public interface ImageTableServer {

	public boolean add(ImageTable image);//Ϊˮ�����ͼƬ
	
	public List<ImageTable> selImage(int rid);//���ݳ���ˮ��id���ͼƬ����
	
	public boolean deleteImage(int id);
	
	public ImageTable loadImage(int id);
}

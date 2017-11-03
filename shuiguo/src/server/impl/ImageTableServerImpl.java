package server.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import server.ImageTableServer;
import server.LeaseShuiguoServer;
import dao.ProjectDao;
import dao.impl.ProjectDaoimpl;
import entity.ImageTable;
import entity.Leaseshuiguo;

@Entity public class ImageTableServerImpl implements ImageTableServer {

	@ManyToOne private ProjectDao dao=new ProjectDaoimpl();
	public boolean add(ImageTable image) {
		// TODO Auto-generated method stub
		return dao.add(image);
	}
	public List<ImageTable> selImage(int rid) {
		// TODO Auto-generated method stub
		String hql="select img from ImageTable img where 1=1 ";
		List args=new ArrayList();
		if(rid!=0){
			hql+=" and img.leaseShuiguo.id=?";
			args.add(rid);
		}
		 
		List<ImageTable> img=dao.select(hql, args);
		return img;
	}
	public boolean deleteImage(int id) {
		// TODO Auto-generated method stub
		ImageTable image=loadImage(id);
		boolean flag=dao.delete(image);
		List<ImageTable> list=selImage(id);
		LeaseShuiguoServer server=new LeaseShuiguoServerImpl(); 
		Leaseshuiguo shuiguo=server.getShuiguo(image.getLeaseShuiguo().getId());
		//�жϸ�ˮ����ͼƬ�Ƿ�ȫ��ɾ��
		if(list!=null&&list.size()>0){   
			boolean is=true;
			for (int i = 0; i < list.size(); i++) {
				if(shuiguo.getImg().equals(list.get(i).getImage())){
					is=false;
					break;
				}
			}
			if(is){
				shuiguo.setImg(list.get(0).getImage()); //�����ˮ������
				server.update(shuiguo);
			}
		}else{  //ͼƬ��ȫ��ɾ�������ø�ˮ��Ϊû�з���
			shuiguo.setImg("");
			server.update(shuiguo);
		}
		return flag;
	}
	public ImageTable loadImage(int id) {
		// TODO Auto-generated method stub
		return (ImageTable)dao.getPojo(ImageTable.class, id);
	}

}

package server;

import java.io.Serializable;
import java.util.List;

import bean.BegRentBean;
import bean.PublicBean;

import entity.BegRent;

public interface BegRentServer {

	public boolean addBegRent(BegRent begRent);// �����

	public boolean delBegRent(BegRent begRent);// ɾ����

	public boolean upBegRent(BegRent begRent);// �޸���

	public List<BegRent> selBegRent();// ��ѯ��

	public PublicBean selectBegRentByPage(int showpage, int row,
			BegRentBean begRentBean);// ��ѯ��ҳ

	public BegRent getthis(Serializable id); // ����

	public PublicBean selectQianByPage(int showpage, int row,
			BegRentBean begRentBean);

}

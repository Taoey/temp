package dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import session.HibernateSessionFactory;

import dao.ProjectDao;
import entity.Users;

@Entity public class ProjectDaoimpl implements ProjectDao {

	public boolean add(Object obj) { // ���
		boolean flag = false;
		Session session = HibernateSessionFactory.getSession(); // ���session����

		Transaction transaction = null; // ��������
		try {
			transaction = session.beginTransaction(); // ��ʼһ������
			session.save(obj); // ִ����ӷ���
			transaction.commit(); // �ɹ����ύ����
			flag = true;
		} catch (HibernateException e) {

			transaction.rollback(); // ʧ�ܺ�ع�����
			e.printStackTrace();

		} finally {

			session.close(); // �ر�Session
		}

		return flag;
	}

	public boolean delete(Object obj) { // ɾ��
		boolean flag = false;
		Session session = HibernateSessionFactory.getSession(); // ��ȡSession����

		Transaction transaction = null; // ����һ������

		try {
			transaction = session.beginTransaction(); // ������

			session.delete(obj); // ִ��ɾ������

			transaction.commit(); // �ɹ��ύ����

			flag = true;

		} catch (HibernateException e) {
			transaction.rollback(); // ʧ�ܺ�ع�����
			e.printStackTrace();
		} finally {

			session.close();

		}

		return flag;
	}

	public boolean deleteBySQL(String sql){
		boolean flag = false;
		Session session = HibernateSessionFactory.getSession(); // ��ȡSession����
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction(); // ����һ������
			Query query = session.createQuery(sql);
			query.executeUpdate();
			transaction.commit();

			flag = true;

		} catch (HibernateException e) {
			transaction.rollback(); // ʧ�ܺ�ع�����
			e.printStackTrace();
		} finally {

			session.close();

		}

		return flag;
	}
	public Object getPojo(Class clazz, Serializable id) { // ����

		Session session = HibernateSessionFactory.getSession(); // ���session����
		Object obj = null;
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			obj = session.get(clazz, id);
			tran.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			tran.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

		return obj;
	}

	public List select(String hql, List args) { // ��ѯ
		Session session = HibernateSessionFactory.getSession(); // ���session����
		List list = new ArrayList();
		try {
			Query query = session.createQuery(hql); // ���Query����

			if (args != null) { // �ж��Ƿ��в���
				for (int i = 0; i < args.size(); i++) {
					query.setParameter(i, args.get(i)); // �в�������hql���Ĳ�������ֵ
				}
			}
			list = query.list(); // ִ�в�ѯ����
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close(); // �ر�session����
		}

		return list;
	}

	public boolean update(Object obj) { // �޸�

		boolean flag = false;

		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = null; // ����һ������

		try {
			transaction = session.beginTransaction(); // ������

			session.update(obj); // ִ���޸Ĳ���

			transaction.commit(); // �ɹ��ύ����

			flag = true;

		} catch (HibernateException e) {
			transaction.rollback(); // ʧ�ܺ�ع�����
			e.printStackTrace();
		} finally {

			session.close();

		}
		return flag;
	}

	public Object uniqueSelect(String hql, List args) { // ���ͳ������
		Object obj = null;
		Session session = HibernateSessionFactory.getSession(); // ���session����
		try {
			Query query = session.createQuery(hql);// ���Query����
			if (args != null) { // �ж��Ƿ��в���
				for (int i = 0; i < args.size(); i++) {
					query.setParameter(i, args.get(i)); // ��hql���Ĳ�������ֵ
				}
			}
			obj = query.uniqueResult();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}
		return obj;
	}

	public List getByPage(String hql, int showPage, List args, int row) { // ��ҳ��ѯ

		List list = new ArrayList();
		Session session = HibernateSessionFactory.getSession();
		try {
			Query query = session.createQuery(hql); // ���Query����

			if (args != null) { // �ж��Ƿ��в���
				for (int i = 0; i < args.size(); i++) {
					query.setParameter(i, args.get(i)); // �в�������hql���Ĳ�������ֵ
				}
			}
			int firstIndex = row * (showPage - 1);
			query.setFirstResult(firstIndex); // ���ÿ�ʼ���
			query.setMaxResults(row); // ÿҳ��ʾ������
			list = query.list(); // ִ�в�ѯ����
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	public List getByTop(String hql, List args, int count) {
		List list = new ArrayList();
		Session session = HibernateSessionFactory.getSession();
		try {
			Query query = session.createQuery(hql); // ���Query����

			if (args != null) { // �ж��Ƿ��в���
				for (int i = 0; i < args.size(); i++) {
					query.setParameter(i, args.get(i)); // �в�������hql���Ĳ�������ֵ
				}
			}
			query.setFirstResult(0); // ���ÿ�ʼ���
			query.setMaxResults(count); // ��Ҫ��ʾ������
			list = query.list(); // ִ�в�ѯ����
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

}

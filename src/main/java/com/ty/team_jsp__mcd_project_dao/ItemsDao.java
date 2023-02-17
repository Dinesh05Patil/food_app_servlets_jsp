package com.ty.team_jsp__mcd_project_dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.team_jsp__mcd_project_dto.Items;

public class ItemsDao  {
	public EntityManager getEntityManager() {
		return Persistence.createEntityManagerFactory("vinod").createEntityManager();
	}
	public Items addItems(Items items) {
		EntityManager entityManager=getEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(items);
		entityTransaction.commit();
		return items;
	}
	public List<Items> getAllItems(){
		
		EntityManager entityManager=getEntityManager();
		Query query=entityManager.createQuery("select item from Items item");
		List<Items> list=query.getResultList();
		return list;
	}
	public Items getItemById(int id) {
		EntityManager entityManager=getEntityManager();
		
		Items items=entityManager.find(Items.class, id);
		return items;
		
	}
	

}

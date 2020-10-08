package service;

import java.util.List;

import Model.Allocation;

public interface AllocateDAO {

	List<Allocation> get();
	
	Allocation get(int allocationid);
	
	boolean save(Allocation event);
	
	boolean delete(int bookid);
	
	boolean update(Allocation event);
}

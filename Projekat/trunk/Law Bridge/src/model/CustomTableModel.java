package model;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import model.TreeElement.Column;
import model.TreeElement.TableHelper;
import model.TreeElement;

/**
 * Klasa koja definise model tabele za prikaz tabele iz baze podataka.
 * @author grupa2
 * 
 *
 */

public class CustomTableModel extends GeneralTableModel
{
	private StoredProceduresHelper udspHelper;
	private TableHelper table;
	private ResultSet resultSet = null;
	
	public CustomTableModel(TableHelper table) {
		// TODO Auto-generated constructor stub
		this.table = table;
		this.udspHelper = new StoredProceduresHelper(table);
		resultSet = udspHelper.read();
		setColumns();
		getAllData();
		
	}
	public CustomTableModel(ResultSet resultSet) {
		try {
			ResultSetMetaData rsmd = resultSet.getMetaData();
			
			this.columns = new ArrayList<>();
			
			for(int i=0; i<rsmd.getColumnCount(); i++) {
				Column column = new Column(rsmd.getColumnName(i+1));
				column.setSize(rsmd.getPrecision(i+1));
				this.columns.add(column);
				System.out.println(column.getName());
			}
			
			this.data = new ArrayList<>();
			while(resultSet.next()) {
				List<Object> row = new ArrayList<>();
				for(int i=1; i<=columns.size(); i++) {
					row.add(resultSet.getObject(i));
				}
				this.data.add(row);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public CustomTableModel() {
		this.table = null;
	}
	
	@Override
	public void getAllData() {
		// TODO Auto-generated method stub
		resultSet = udspHelper.read();

		try {			
			this.data = new ArrayList<>();
			while (resultSet.next()) {
				List<Object> row = new ArrayList<>();
				for(int i=1; i<=columns.size(); i++) {
					row.add(resultSet.getObject(i));
					System.out.println(resultSet.getObject(i));
				}
				this.data.add(row);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void setColumns() {
		this.columns = new ArrayList<>();
		for(int i=0; i<table.getAllElements().size(); i++) {
			this.columns.add(((Column) table.getElementAt(i)));
			
		}
		
		try {
			ResultSetMetaData rsmd = resultSet.getMetaData();
			

			for(int i=0; i<table.getAllElements().size(); i++) {
				this.columns.get(i).setType(rsmd.getColumnClassName(i+1));
				this.columns.get(i).setSize(rsmd.getPrecision(i+1));
				this.columns.get(i).setScale(rsmd.getScale(i+1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public boolean deleteRowById(Object id) {
		// TODO Auto-generated method stub	
		return udspHelper.delete(id);
	}

	@Override
	public boolean getRowById(Object id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addRow(HashMap<String, Object> params) {
		StoredProceduresHelper proc = new StoredProceduresHelper(this.table);
		ResultSet rs = proc.insert(params);
		if(rs == null)
			return false;
		
		this.resultSet = proc.read();
		getAllData();
		return true;
	}

	@Override
	public boolean editRow(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return udspHelper.update(params);
	}
	public TableHelper getTable() {
		return table;
	}
	
	

}

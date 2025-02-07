package model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import javax.swing.JOptionPane;

import com.microsoft.sqlserver.jdbc.SQLServerResultSet;

import databaseAccess.DbConnection;
import model.TreeElement;
import model.TreeElement.Column;
import model.TreeElement.TableHelper;

/**
 * Klasa za pozivanje spremljenih procedura iz baze podataka.
 * @author grupa2
 *
 *
 */

public class StoredProceduresHelper
{
	private TableHelper table;
    private DbConnection instance;
    private Connection conn;
	
	public StoredProceduresHelper(TableHelper table)
	{
		this.table = table;
		this.instance = DbConnection.GetInstance();
		this.conn = instance.getConn();
	}
	
	public ResultSet read()
	{
		return read(table.getRetrieveSProc());
	}
	
	public ResultSet read(String procedure) {
		try {
			return getCallableStatement(procedure).executeQuery();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	private CallableStatement getCallableStatement(String procedure) {
		// TODO Auto-generated method stub
		if(procedure == null || procedure.length() == 0) {
			JOptionPane.showMessageDialog(null, "Procedura jos uvijek nije prilagodjena aplikaciji.");
			return null;
		}
		try {
			return conn.prepareCall(procedure, SQLServerResultSet.TYPE_SCROLL_INSENSITIVE, SQLServerResultSet.CONCUR_READ_ONLY);
		} catch (SQLException e) {
			// TODO: handle exception
			JOptionPane.showMessageDialog(null, "Greska");
			return null;
		}
	}
	
public boolean delete(Object id) {
		
		CallableStatement callableStatement = getCallableStatement(table.getDeleteSProc());
		try {
			callableStatement.setObject(1, id);
			
			callableStatement.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

public boolean update(HashMap<String, Object> params) {
	CallableStatement callableStatement = getCallableStatement(table.getUpdateSProc());
	for(int i=0; i<table.getAllElements().size(); i++) {
		Column col = (Column) table.getElementAt(i);
		try {
			callableStatement.setObject(i+1, params.get(col.getName()));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	try {
		callableStatement.execute();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	return true;
}

public ResultSet insert(HashMap<String, Object> params) {
	
	CallableStatement callableStatement = getCallableStatement(table.getCreateSProc());
	int inc = 1;
	for(int i=0; i<table.getAllElements().size(); i++) {
		Column col = (Column) table.getElementAt(i);
	
			try {
				callableStatement.setObject(i + inc, params.get(col.getName()));
				System.out.println(params.get(col.getName()));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	try {
		return callableStatement.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}
	
}
}

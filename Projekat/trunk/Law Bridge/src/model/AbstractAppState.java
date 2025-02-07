package model;

import view.viewComponent.MenuBar;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.table.TableModel;

import view.Window;
import view.viewComponent.FormPanel;
import view.viewComponent.StatusBar;
import view.viewComponent.Table;
import view.viewComponent.Toolbar;

/**
 *  Apstraktna klasa koju nasljedjuju konkretna stanja aplikacije.
 * @author grupa2
 * 
 *
 */

public abstract class AbstractAppState implements ApplicationState
{
	protected Window window;
	protected Table table;
	protected FormPanel form;
	protected Toolbar toolbar;
	protected StatusBar statusbar;
	protected MenuBar menubar;
	
	public AbstractAppState(Window window)
	{
		this.window = window;
		table = window.getMainTable();
		form = window.getFormPanel();
		menubar = window.getMenuBarComponent();
		toolbar = window.getToolbar();
		statusbar = window.getStatusBar();
	}
	
	protected abstract void handleSpecificSelection();
	protected abstract void handleSpecificSubmit();
	

	@Override
	public void handleSelectionChanged(ListSelectionEvent e) {
		// TODO Auto-generated method stub
		boolean selectionHappened = handleSelectionCommon(e);
		if(selectionHappened) {
			handleSpecificSelection();
		}
	}

	@Override
	public void handleCreate() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleChange() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleDelete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleCancel() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleSubmit() {
		// TODO Auto-generated method stub
		if(!form.validateInputs()) {
			JOptionPane.showMessageDialog(null, "Polja oznacena sa * su obavezna!");
		}
		else {
			handleSpecificSubmit();
		}
	}
	
	private boolean handleSelectionCommon(ListSelectionEvent e) {
		boolean selectionHappened = false;
		
		if(e.getValueIsAdjusting()) {
			return selectionHappened;
		}
		
		TableModel tblModel = window.getMainTable().getModel();
		
		ListSelectionModel lsm = (ListSelectionModel) e.getSource();
		
		if(!lsm.isSelectionEmpty()) {
			int selectedRow = lsm.getMinSelectionIndex();
			List<Object> row = new ArrayList<>();
			
			for(int i=0; i<tblModel.getColumnCount(); i++) {
				row.add(tblModel.getValueAt(selectedRow, i));
			}
			
			form.fillInputs(row);
			form.disableInputs();
			
			selectionHappened = true;
		}
		return selectionHappened;
	}
}

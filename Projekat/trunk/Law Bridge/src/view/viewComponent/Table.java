package view.viewComponent;



import model.ApplicationModel;
import model.CustomTableModel;
import model.GeneralTableModel;
import observer.Subject;
import view.ViewComponents;

import java.awt.Component;
import java.awt.Cursor;

import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;
import javax.swing.table.TableColumnModel;

/**
 * Ova klasa predstavlja tabelu koja se koristi za prikaz podataka sa prilagođenim modelom tabele,
 * omogućujući podešavanje visine redova, selekciju pojedinačnih redova, prilagođavanje širine kolona i promkenu izgleda ćelija.
 * @author grupa2
 */

public class Table extends JTable implements ViewComponents
{
private CustomTableModel tableModel;
	
	public Table(CustomTableModel tableModel) {
		// TODO Auto-generated constructor stub
		this.tableModel = tableModel;
		
		//setModel(tableModel);
		setRowHeight(30);
		setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		getTableHeader().setReorderingAllowed(false);
		setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
		
		setDefaultRenderer(Object.class, new CustomTableCellRenderer());
		setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
	}
	
	public CustomTableModel getTableModel() {
		return tableModel;
	}
	public void setSelectionListener(ListSelectionListener listener) {
		getSelectionModel().addListSelectionListener(listener);
	}
	public void setTableModel(GeneralTableModel tableModel) {
	    setModel(tableModel);
	    if (tableModel.getColumns() != null) {
	        TableColumnModel columnModel = getColumnModel();
	        for (int i = 0; i < columnModel.getColumnCount(); i++) {
	            TableColumn tableColumn = columnModel.getColumn(i);
	            int preferredWidth = tableColumn.getMinWidth();
	            int maxWidth = tableColumn.getMinWidth();
	            
	            for (int row = 0; row < getRowCount(); row++) {
	                TableCellRenderer cellRenderer = getCellRenderer(row, i);
	                Component comp = prepareRenderer(cellRenderer, row, i);
	                int width = comp.getPreferredSize().width + getIntercellSpacing().width;
	                if(i>0) preferredWidth = Math.max(preferredWidth, width);
	                
	                
//	                if (preferredWidth >= maxWidth) {
//	                    preferredWidth = maxWidth;
//	                    break;
//	                }
	            }
	            tableColumn.setPreferredWidth(preferredWidth);
	        }
	    }
	}

	public void setTableModel() {
		setModel(tableModel);
	}

	@Override
	public void update(Subject subject)
	{
		// TODO Auto-generated method stub
		
	}
}

package view.viewComponent;

import java.awt.BorderLayout;
import java.awt.Dimension;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;

import view.viewComponent.Table;
/**
 * Ovaj dijalog omogućava odabir vrijednosti iz tabele prikazane u tabelarnom prikazu, 
 * koji se koristi kao modalni dijalog za selekciju vrijednosti koja se zatim prenose povezanom polju.
 * @author grupa2 
 */

public class SelectionDialog extends JDialog{

	private static final long serialVersionUID = 1L;
	
	private Object selectedValue;
	
	public SelectionDialog(LinkedField linkedField, Table tableView, String table, String refColumn, int currentRow) {
		setTitle(table);
		
		System.out.println(tableView.getColumnCount());
		tableView.setTableModel();
		if(currentRow > -1)
		this.selectedValue = tableView.getValueAt(currentRow, tableView.getTableModel().findColumn(refColumn));
		
		setLayout(new BorderLayout());
		JButton btnOk = new JButton("SELECT");
		btnOk.setPreferredSize(new Dimension(200, 40));
		btnOk.addActionListener(e->{
			linkedField.setValue(selectedValue);
			dispose();
		});
		
		JButton btnCancel = new JButton("CANCEL");
		btnCancel.setPreferredSize(new Dimension(200, 40));
		btnCancel.addActionListener(e->{dispose();});
		
		tableView.setSelectionListener(e->{
			if(e.getValueIsAdjusting()) {
				return;
			}
			ListSelectionModel lsm = (ListSelectionModel)e.getSource();
			if(!lsm.isSelectionEmpty()){
				int selectedRow = lsm.getMinSelectionIndex();
				int selectedCol = tableView.getTableModel().getIndexOfColumn(refColumn);
				
				selectedValue = tableView.getModel().getValueAt(selectedRow, selectedCol);
			}
		});
		
		setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		
		JScrollPane scrollPane = new JScrollPane(tableView);
		setPreferredSize(new Dimension(800, 400));
		
		JPanel pnlButtons = new JPanel();
		
		pnlButtons.setLayout(new BoxLayout(pnlButtons, BoxLayout.X_AXIS));
		pnlButtons.add(btnOk);
		pnlButtons.add(btnCancel);
		tableView.setRowSelectionInterval(currentRow, currentRow);

		add(scrollPane, BorderLayout.CENTER);
		add(pnlButtons, BorderLayout.SOUTH);
		
		setModalityType(ModalityType.APPLICATION_MODAL);
		pack();
		setLocale(null);
		setVisible(true);
		revalidate();
	}
}
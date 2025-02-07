package listeners;

import java.awt.Component;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JOptionPane;
import javax.swing.JTree;
import javax.swing.SwingUtilities;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.tree.TreePath;

import model.ActiveState;
import model.CustomTableModel;
import model.TreeElement;
import view.Window;

/**
 * Klasa koja implementira izbor opcije iz application browsera koji je realizovan kao JTree.
 * @author grupa2
 * 
 *
 */

public class CustomTreeSelectionListener extends MouseAdapter implements TreeSelectionListener
{
	Object node = null;
	JTree tree = null;
	@Override
	public void valueChanged(TreeSelectionEvent e) {
		tree = (JTree) e.getSource();
		node = tree.getLastSelectedPathComponent();
	}
	@Override
	public void mousePressed(MouseEvent e) {
		if(e.getSource() instanceof JTree) {
			if(e.getClickCount() == 2) {
				Window window = (Window)SwingUtilities.getWindowAncestor((Component)e.getSource());
				if(tree != null) {
					int row = tree.getRowForLocation(e.getX(), e.getY());
					
					if(row == -1) {
						tree.clearSelection();
					}
					else {
						TreePath selPath = tree.getPathForLocation(e.getX(), e.getY());	
						tree.setSelectionPath(selPath);
						if(selPath.getLastPathComponent() instanceof TreeElement.TableHelper) {
							TreeElement.TableHelper table = (TreeElement.TableHelper)selPath.getLastPathComponent();
							CustomTableModel tableModel = new CustomTableModel(table);
							window.setTableModel(tableModel);	
							window.setAppState(new ActiveState(window, table.getName()));
							
						}
					}
				}
			}
			else if(e.isMetaDown()) {
			}
		}
	}
}

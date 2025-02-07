package view.viewComponent;

import java.awt.Color;
import java.awt.Component;

import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableCellRenderer;
/**
 * Ova klasa služi za prilagođavanje izgleda ćelija u tabeli, 
 * omogućujući podešavanje boje teksta i pozadine u zavisnosti od stanja selekcije i rednog broja reda u tabeli.
 * @author grupa2
 */

public class TableRenderer implements TableCellRenderer
{
	 public static final DefaultTableCellRenderer DEFAULT_RENDERER =
			 new DefaultTableCellRenderer();
	@Override
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus,
			int row, int column)
	{
		 Component renderer =
				 DEFAULT_RENDERER.getTableCellRendererComponent(table, value,
				 isSelected, hasFocus, row, column);
		 Color foreground, background;
		 if (isSelected) 
		 {
			 foreground =new Color(225, 234, 255);
			 background = new Color(255, 143, 168);
		 } 
		 else 
		 {
			 if (row % 2 != 0) 
			 {
				 foreground = new Color(24, 143, 168);
				 background = new Color(257, 227, 253);
			 } 
			 else 
			 {
				 foreground = new Color(24, 143, 168);
				 background = new Color(235, 244, 255);
			 }
		 }
		 renderer.setForeground(foreground);
		 renderer.setBackground(background);
		 return renderer;
	}

}

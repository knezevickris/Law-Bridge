package view.viewComponent;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;

import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
/**
 * Klasa CustomTableCellRenderer prilagođava prikaz ćelija u JTable-u tako da parni redovi imaju plavu pozadinu,
 * neparni redovi sivu, a selektovane ćelije tamno plavu pozadinu sa belim tekstom, centrirajući numeričke vrednosti
 * i podebljavajući font za selektovane ćelije.
 * @author grupa2
 */
public class CustomTableCellRenderer extends DefaultTableCellRenderer
{
	@Override
	public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus,
			int row, int column) {
		// TODO Auto-generated method stub
		Component component = super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
		
		if(component instanceof JLabel)
		{
			JLabel label = (JLabel) component;
			
			Font font = label.getFont();
			
			if(row %2 ==0) {
				label.setBackground(Color.decode("#8EBBE0"));
				label.setForeground(Color.white);
			}
			else {
				label.setBackground(Color.decode("#E0E0E0"));
				label.setForeground(Color.black);
			}
			
			if(isSelected)
			{
				label.setBackground(Color.decode("#005B96"));
				label.setForeground(Color.WHITE);
				label.setFont(new Font(font.getName(), Font.BOLD, font.getSize()));
			}
			
			
			if(value instanceof Integer || value instanceof Long)
			{
				label.setHorizontalAlignment(JLabel.CENTER);
			}
			else {
				label.setHorizontalAlignment(JLabel.LEFT);
			}
			
			return label;
		}
		return component;
	}
}

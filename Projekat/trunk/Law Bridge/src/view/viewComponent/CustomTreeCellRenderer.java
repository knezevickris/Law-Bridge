package view.viewComponent;

import javax.swing.*;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;
import java.awt.*;
/**
 * Klasa CustomTreeCellRenderer prilagođava izgled čvorova u JTree komponenti, postavljajući različite ikone za listove,
 * korenske i ostale čvorove, te koristi podebljani font i specifične boje za tekst i pozadinu.
 * @author grupa2 
 */
public class CustomTreeCellRenderer extends DefaultTreeCellRenderer {
    Icon dbIcon = new ImageIcon(new ImageIcon("icons/database.png").getImage().getScaledInstance(15, 15, Image.SCALE_SMOOTH));
    Icon tableIcon = new ImageIcon(new ImageIcon("icons/table.png").getImage().getScaledInstance(15, 15, Image.SCALE_SMOOTH));
    Icon packageIcon;
    @Override
    public Component getTreeCellRendererComponent(JTree tree, Object value, boolean sel, boolean expanded, boolean leaf, int row, boolean hasFocus) {
        Component component = super.getTreeCellRendererComponent(tree, value, sel, expanded, leaf, row, hasFocus);

        // Postavljanje bold fonta
        Font originalFont = getFont();
        Font boldFont = new Font(originalFont.getName(), Font.BOLD, originalFont.getSize());
        setFont(boldFont);
        
        setForeground(Color.BLACK);
        setBackground(Color.decode("#8EBBE0"));
        setBackground(new Color(30, 144, 255));

        // Postavljanje ikona na osnovu tipa čvora
        if (leaf) 
        {
            setIcon(tableIcon);
        } 
        else if (tree.getModel().getRoot() == value) 
        {
            setIcon(dbIcon);
        } 
        else 
        {
        	Icon packageIcon = new ImageIcon(new ImageIcon("icons/" + value + ".png").getImage().getScaledInstance(25, 25, Image.SCALE_SMOOTH));
        	System.out.println("ime value: " + value);
            setIcon(packageIcon);
        }

        return component;
    }
}

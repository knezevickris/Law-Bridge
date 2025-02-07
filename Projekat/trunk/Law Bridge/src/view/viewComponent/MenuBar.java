package view.viewComponent;

import javax.swing.*;

import listeners.EditMenuActionListener;
import listeners.LogoutListener;
import observer.Subject;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;

/**
 * Klasa koja omogucava prikaz menu bar-a koji se sastoji iz tri dijela sa odgovarajucim opcija unutar njih 
 * @author grupa2
 * @version 1.0
 *
 */
public class MenuBar implements ViewComponent{
	
	public JMenu editMenu;
    public JMenuItem firstItem;
    public JMenuItem nextItem;
    public JMenuItem previousItem;
    public JMenuItem lastItem;

    public JMenuItem newItem;
    public JMenuItem editItem;
    public JMenuItem deleteItem;

    public JMenuItem acceptItem;
    public JMenuItem cancelItem;

    public JMenuItem reportItem;
	
    public JMenuBar createMenuBar(JFrame frame) {
        
        JMenuBar menuBar = new JMenuBar();
        
        Icon icoChooseXML = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/chooseXML.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoSwitchXML = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/switchXML.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoExitApp = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/exit.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoLogout = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/logout.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        
       
        JMenu fileMenu = new JMenu("File");
        JMenuItem xmlDescriptionItem = new JMenuItem("Choose XML",icoChooseXML);
        JMenuItem switchXMLItem = new JMenuItem("Switch XML",icoSwitchXML);
        JMenuItem exitItem = new JMenuItem("Exit",icoExitApp);
        JMenuItem logoutItem = new JMenuItem("Logout", icoLogout);

        
        exitItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                System.exit(0);
            }
        });
        
        xmlDescriptionItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O, ActionEvent.CTRL_MASK));
        switchXMLItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, ActionEvent.CTRL_MASK));
        exitItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_Q, ActionEvent.CTRL_MASK));
        logoutItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_G, ActionEvent.CTRL_MASK));
        


        fileMenu.add(xmlDescriptionItem);
        fileMenu.add(switchXMLItem);
        fileMenu.addSeparator();
        fileMenu.add(logoutItem);
        fileMenu.add(exitItem);
        
        logoutItem.addActionListener(new LogoutListener());
        
        
        Icon icoFirst = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/first.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoNext = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/next.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoPrevious = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/previous.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoLast = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/last.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoNew = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/new.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoEdit = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/edit.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoDelete = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/delete.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoAccept = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/accept.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoCancel = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/cancel.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoReport = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/report.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        editMenu = new JMenu("Edit");
        firstItem = new JMenuItem("First", icoFirst);
        nextItem = new JMenuItem("Next", icoNext);
        previousItem = new JMenuItem("Previous", icoPrevious );
        lastItem = new JMenuItem("Last", icoLast);

        newItem = new JMenuItem("New", icoNew);
        editItem = new JMenuItem("Edit", icoEdit);
        deleteItem = new JMenuItem("Delete", icoDelete );

        acceptItem = new JMenuItem("Accept", icoAccept);
        cancelItem = new JMenuItem("Cancel", icoCancel);

        reportItem = new JMenuItem("Kompleksni pravni izvjestaj", icoReport);

        firstItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_F, ActionEvent.CTRL_MASK));
        nextItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N, ActionEvent.CTRL_MASK));
        previousItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P, ActionEvent.CTRL_MASK));
        lastItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_L, ActionEvent.CTRL_MASK));
        newItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_W, ActionEvent.CTRL_MASK));
        deleteItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_D, ActionEvent.CTRL_MASK));
        acceptItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_A, ActionEvent.CTRL_MASK));
        cancelItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C, ActionEvent.CTRL_MASK));
        reportItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_R, ActionEvent.CTRL_MASK));
        editItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_E, ActionEvent.CTRL_MASK));
        
        EditMenuActionListener editMenuActionListener = new EditMenuActionListener();

        firstItem.setActionCommand("first");
        nextItem.setActionCommand("next");
        previousItem.setActionCommand("prev");
        lastItem.setActionCommand("last");
        newItem.setActionCommand("new");
        editItem.setActionCommand("edit");
        deleteItem.setActionCommand("delete");
        acceptItem.setActionCommand("accept");
        cancelItem.setActionCommand("cancel");
        reportItem.setActionCommand("report");

        firstItem.addActionListener(editMenuActionListener);
        nextItem.addActionListener(editMenuActionListener);
        previousItem.addActionListener(editMenuActionListener);
        lastItem.addActionListener(editMenuActionListener);
        newItem.addActionListener(editMenuActionListener);
        editItem.addActionListener(editMenuActionListener);
        deleteItem.addActionListener(editMenuActionListener);
        acceptItem.addActionListener(editMenuActionListener);
        cancelItem.addActionListener(editMenuActionListener);
        reportItem.addActionListener(editMenuActionListener);
       
        editMenu.add(firstItem);
        editMenu.add(nextItem);
        editMenu.add(previousItem);
        editMenu.add(lastItem);
        editMenu.addSeparator();

        
        editMenu.add(newItem);
        editMenu.add(editItem);
        editMenu.add(deleteItem);
        editMenu.addSeparator();

       
        editMenu.add(acceptItem);
        editMenu.add(cancelItem);
        editMenu.addSeparator();

        editMenu.add(reportItem);

       
        
        Icon icoAbout = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/about.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        Icon icoSupport = new ImageIcon(java.awt.Toolkit.getDefaultToolkit().getImage("icons/onlineHelp.png")
    			.getScaledInstance(25, 25, java.awt.Image.SCALE_SMOOTH));
        
        JMenu helpMenu = new JMenu("Help");
        JMenuItem aboutItem = new JMenuItem("About", icoAbout);
        JMenuItem supportItem = new JMenuItem("Online support", icoSupport);

        aboutItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(frame, "PIS2023/2024, Law Bridge by Grupa 2.");
            }
        });
        
        aboutItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_H, ActionEvent.CTRL_MASK));
        supportItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_U, ActionEvent.CTRL_MASK));
        
      
        helpMenu.add(aboutItem);
        helpMenu.add(supportItem);

        
        menuBar.add(fileMenu);
        menuBar.add(editMenu);
        menuBar.add(helpMenu);

        return menuBar;
    }

	@Override
	public void update(Subject subject) {
		// TODO Auto-generated method stub
		
	}
}

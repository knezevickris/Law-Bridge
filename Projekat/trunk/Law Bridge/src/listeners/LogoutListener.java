package listeners;

import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;
import javax.swing.SwingUtilities;

import view.ApplicationView;
import view.Login;
import view.Window;

/**
 * Klasa koja implementira odjavu korisnika sa sistema.
 * @author grupa2
 * 
 *
 */

public class LogoutListener implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		JPopupMenu menuItem = (JPopupMenu)((JMenuItem)e.getSource()).getParent();
		Window window = (Window)SwingUtilities.getWindowAncestor((JMenuBar)((JMenuItem)menuItem.getInvoker()).getParent());
		new ApplicationView(window.getModel());
		window.dispose();
		
	}

}

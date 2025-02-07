package listeners;

import view.Window;


import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

import model.SelectionState;

/**
 * Klasa koja implementira listener za izbor reda ili tabele.
 * @author grupa2
 *
 *
 */

public class CustomListSelectionListener  implements ListSelectionListener{

	private Window window;
	public CustomListSelectionListener(Window window) {
		
		this.window = window;
	}
	@Override
	public void valueChanged(ListSelectionEvent e) {
		// TODO Auto-generated method stub
		if(!e.getValueIsAdjusting()) {
			window.getAppState().handleSelectionChanged(e);
			if(!(window.getAppState() instanceof SelectionState)) {
				window.setAppState(new SelectionState(window));
			}
			
		}
	}

}

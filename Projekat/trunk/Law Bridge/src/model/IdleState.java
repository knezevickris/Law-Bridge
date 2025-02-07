package model;

import javax.swing.event.ListSelectionEvent;

import view.Window;

/**
 * Klasa koja opisuje pocetno stanje aplikacije i azurira korisnicki interfejs u skladu sa tim.
 * @author grupa2
 * 
 *
 */

public class IdleState extends AbstractAppState
{

	public IdleState(Window window)
	{
		super(window);
		// TODO Auto-generated constructor stub
		
		window.getStatusBar().setStatusMessage("Idle");
		this.toolbar.setVisible(true);
		this.toolbar.setButtonsEnabled(false);
		this.menubar.acceptItem.setEnabled(false);
		this.menubar.cancelItem.setEnabled(false);
		this.menubar.deleteItem.setEnabled(false);
		this.menubar.firstItem.setEnabled(false);
		this.menubar.lastItem.setEnabled(false);
		this.menubar.previousItem.setEnabled(false);
		this.menubar.nextItem.setEnabled(false);
		this.menubar.reportItem.setEnabled(false);
		this.menubar.editItem.setEnabled(false);
		this.menubar.newItem.setEnabled(false);
	}

	@Override
	public void loadData()
	{
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void handleSpecificSelection()
	{
		// TODO Auto-generated method stub
		this.form.disablePrimaryInputs();
		this.window.setAppState(new SelectionState(window));
	}

	@Override
	protected void handleSpecificSubmit()
	{
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void handleCreate() {
		form.enableInputs();
		form.setVisible(true);
		
		window.setAppState(new CreationState(window));
	}

	@Override
	public void handleNext() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleFirst() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handlePrev() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handleLast() {
		// TODO Auto-generated method stub
		
	}

}

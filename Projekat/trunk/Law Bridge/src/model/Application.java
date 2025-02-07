package model;

import view.ApplicationView;

/**
 * Klasa cija se instanca kreira u Main klasi za pokretanje aplikacije.
 * @author grupa2
 * 
 */

public class Application
{
	private ApplicationModel appModel;
	private ApplicationView appView;
	
	public ApplicationModel getAppModel()
	{
		return appModel;
	}
	public ApplicationView getAppView()
	{
		return appView;
	}
	public Application()
	{
		this.appModel = new ApplicationModel();
		this.appView = new ApplicationView(appModel);
	}
	
	
}

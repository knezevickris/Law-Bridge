package view;

import java.awt.Color;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import model.ApplicationModel;
/**
 * Klasa ApplicationView predstavlja prikaz aplikacije, povezujući model aplikacije sa glavnim prozorom i inicijalizujući login prozor.
 * @author grupa2
 */
public class ApplicationView
{
	private ApplicationModel appModel;
	private Window window;
	
	public ApplicationView(ApplicationModel appModel)
	{
		/*try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
           }
       } catch (Exception e) {
           e.printStackTrace();
        }*/	
		this.setAppModel(appModel);
		Login login = new Login(appModel, this);
	}

	public Window getWindow()
	{
		return window;
	}

	public void setWindow(Window window)
	{
		this.window = window;
	}

	public ApplicationModel getAppModel()
	{
		return appModel;
	}

	public void setAppModel(ApplicationModel appModel)
	{
		this.appModel = appModel;
	}
}

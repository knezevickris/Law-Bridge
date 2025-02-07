package listeners;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import databaseAccess.DbConnection;
import model.ApplicationModel;
import view.ApplicationView;
import view.Login;
import view.Window;

/**
 * Klasa koja implementira prijavu korisnika na sistem.
 * @author grupa2
 * 
 *
 */

public class LoginListener implements ActionListener
{
	ApplicationModel appModel = null;
	ApplicationView appView = null;
	Login login = null;
	
	public LoginListener(ApplicationView appView, Login login, ApplicationModel appModel)
	{
		this.appView = null;
		this.login = login;
		this.appModel = appModel;
	}

	@Override
	public void actionPerformed(ActionEvent e)
	{
		String username = login.getTxtUsername().getText();
		String password = new String(login.getTxtPassword().getPassword());
      
        DbConnection instance = DbConnection.GetInstance();
        Connection conn = instance.getConn();
        try {
			CallableStatement udspLogin = conn.prepareCall("{call udsp_Login(?,?)}");
			udspLogin.setString(1,  username);
			udspLogin.setString(2, password);
			
			ResultSet resultSet = udspLogin.executeQuery();
			if(resultSet.next())
			{
				login.setVisible(false);
				Window window = new Window(appModel);
			}
			else
			{
				JOptionPane.showMessageDialog(null,  "Neispravno korisnicko ime ili lozinka!\nMolimo Vas da unesete ponovo.", "Error", JOptionPane.ERROR_MESSAGE);
				
				login.setTxtPassword("");
				login.getTxtPassword().requestFocus();
				
				login.setTxtUsername("");
				login.getTxtUsername().requestFocus();
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
}

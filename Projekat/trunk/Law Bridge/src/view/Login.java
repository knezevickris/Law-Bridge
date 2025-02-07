 package view;

import javax.swing.*;

import databaseAccess.DbConnection;
import listeners.LoginListener;
import model.ApplicationModel;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * Klasa Login predstavlja JFrame prozor za prijavu korisnika u aplikaciju, sadrži polja za unos korisničkog imena i lozinke,
 *  dugmad za prijavu i otkazivanje, te koristi LoginListener za obradu događaja prilikom pritiska na dugme za prijavu.
 * @author grupa2 
 */
public class Login extends JFrame {
	
	public String username;
	public String password;
	
	private JTextField txtUsername = null;
	private JPasswordField txtPassword = null;
	
	JButton loginButton = new JButton("PRIJAVI SE");
    JButton cancelButton = new JButton("ODUSTANI");
	
	public JTextField getTxtUsername()
	{
		return txtUsername;
	}

	public JPasswordField getTxtPassword()
	{
		return txtPassword;
	}
	
    public void setTxtUsername(String txtUsername)
	{
		this.txtUsername.setText(txtUsername);
	}

	public void setTxtPassword(String txtPassword)
	{
		this.txtPassword.setText(txtPassword);
	}

	public Login(ApplicationModel appModel, ApplicationView view) {
        
        setTitle("Login");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setExtendedState(JFrame.MAXIMIZED_BOTH); 
        setSize(400, 600);

        
        JPanel mainPanel = new JPanel();
        mainPanel.setBackground(Color.WHITE);
        mainPanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 10, 10, 10);
        gbc.fill = GridBagConstraints.HORIZONTAL;

       
        ImageIcon imageIcon = new ImageIcon("icons/logo2.jpg"); // Unesite putanju do vaše slike
        Image image = imageIcon.getImage();
        Image scaledImage = image.getScaledInstance((int) (getWidth()), (int) (getHeight() * 0.45), Image.SCALE_SMOOTH);
        imageIcon = new ImageIcon(scaledImage);
        JLabel imageLabel = new JLabel(imageIcon);
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.gridwidth = 2;
        gbc.anchor = GridBagConstraints.CENTER;
        mainPanel.add(imageLabel, gbc);

       
        gbc.gridwidth = 1;
        gbc.gridy = 1;
        gbc.gridx = 0;
        gbc.anchor = GridBagConstraints.EAST;
        JLabel usernameLabel = new JLabel("Korisničko ime:");
        mainPanel.add(usernameLabel, gbc);

        gbc.gridx = 1;
        gbc.anchor = GridBagConstraints.WEST;
        txtUsername = new JTextField(20);
        mainPanel.add(txtUsername, gbc);

      
        gbc.gridy = 2;
        gbc.gridx = 0;
        gbc.anchor = GridBagConstraints.EAST;
        JLabel passwordLabel = new JLabel("Lozinka:");
        mainPanel.add(passwordLabel, gbc);

        gbc.gridx = 1;
        gbc.anchor = GridBagConstraints.WEST;
        txtPassword = new JPasswordField(20);
        mainPanel.add(txtPassword, gbc);

    
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new GridBagLayout());
        GridBagConstraints gbcButtons = new GridBagConstraints();
        gbcButtons.insets = new Insets(10, 10, 10, 10);
        gbcButtons.fill = GridBagConstraints.HORIZONTAL;


        Dimension buttonSize = new Dimension(150, 30);
        loginButton.setPreferredSize(buttonSize);
        cancelButton.setPreferredSize(buttonSize);
        
        buttonPanel.setBackground(Color.WHITE);

    
        gbcButtons.gridx = 0;
        gbcButtons.gridy = 0;
        buttonPanel.add(loginButton, gbcButtons);

        gbcButtons.gridx = 1;
        buttonPanel.add(cancelButton, gbcButtons);
        
        gbc.gridy = 3;
        gbc.gridx = 0;
        gbc.gridwidth = 2;
        gbc.anchor = GridBagConstraints.CENTER;
        mainPanel.add(buttonPanel, gbc);
        
        
        


        cancelButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.exit(0); 
            }
        });

        add(mainPanel);

        
        setVisible(true);
        
        loginButton.addActionListener(new LoginListener(view, this, appModel));
        getRootPane().setDefaultButton(loginButton);

    }

}
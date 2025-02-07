package databaseAccess;

import java.awt.Component;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * Klasa za kreiranje i zatvaranje konekcije na bazu podataka.
 * @author grupa2
 */

public class DbConnection {
	
	private static DbConnection instance;
	protected Connection conn = null;
	String address = null;
	String database = null;
	String port = null;
	String databaseType = null;
	String username = null;
	String password = null;
	
	
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public Connection getConn() {
		return conn;
	}
	
	private DbConnection() {
		try {
			
			File inputXML = new File("xml/sema.xml");
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(inputXML);

			doc.getDocumentElement().normalize();
			NodeList nodeList = doc.getElementsByTagName("connection");
			for (int i = 0; i < nodeList.getLength(); i++) {
				Node nodeConnection = nodeList.item(i);
				if (nodeConnection.getNodeType() == Node.ELEMENT_NODE) {
					System.out.println("XML radi!");
					Element xmlElement = (Element) nodeConnection;
					address = xmlElement.getAttribute("address");
					database = xmlElement.getAttribute("database");
					System.out.println("Ovo je baza " + database);
					port = xmlElement.getAttribute("port");
					databaseType = xmlElement.getAttribute("database_type");
					username = xmlElement.getAttribute("username");
					password = xmlElement.getAttribute("password");
					String connectionString = "jdbc:sqlserver://" + address + ":" + port + ";user=" + username
							+ ";password=" + password + "; trustServerCertificate=true";
					
					System.out.println("Konekcioni string: " + connectionString + "\nPort: " + port);

					try {
						DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
						conn = DriverManager.getConnection(connectionString);
						System.out.println("Uspjesna konekcija");
					} catch (SQLException e) {
						System.out.println("Neuspjesna konekcija");
						JOptionPane.showMessageDialog(null, "Doslo je do greske!\nOpis: " + e.getMessage(), "Greska!",
								JOptionPane.ERROR_MESSAGE);
					}
				}
			}
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static DbConnection GetInstance()
	{
		if(instance == null)
			instance = new DbConnection();
		
		return instance;
	}
	
	public boolean isConnOpen()
	{
		if(conn != null)
		{
			System.out.println("Konekcija je otvorena!");
			return true;
		}
		else
		{
			System.out.println("Konekcija nije otvorena...");
			return false;
		}
			
	}
	
	
	public void closeConnection() {
		if(isConnOpen())
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				ErrorHandlerMethod(null, e.getMessage());
			}
			finally {
				conn = null;
			}
		}
	}
	
	
	public boolean isConnectionValid(int timeout) {
		if(isConnOpen())
		{
			try {
				return conn.isValid(timeout);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				ErrorHandlerMethod(null, e.getMessage());
			}
		}	
		
		return false;		
	}
	


	public String getAddress() {
		return address;
	}

	public String getDatabase() {
		return database;
	}
	public void setDatabase(String database) {
		this.database = database;
	}
	public String getDatabaseType() {
		return databaseType;
	}
	public void setDatabaseType(String databaseType) {
		this.databaseType = databaseType;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPort() {
		return port;
	}

	public String getPassword() {
		return password;
	}

	protected void ErrorHandlerMethod(Component component, String errorMessage) {
		JOptionPane.showMessageDialog(component, errorMessage, "Error", 0);
	}

}

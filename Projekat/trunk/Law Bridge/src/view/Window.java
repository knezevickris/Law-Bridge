package view;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.util.Vector;

import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

import listeners.CustomListSelectionListener;
import listeners.CustomTreeSelectionListener;

import javax.swing.JMenuBar;

import model.ApplicationModel;
import model.ApplicationState;
import model.CustomTableModel;
import model.GeneralTableModel;
import model.IdleState;
import view.viewComponent.BrowserPanel;
import view.viewComponent.FormPanel;
import view.viewComponent.Table;
import view.viewComponent.Toolbar;
import view.viewComponent.MenuBar;
import view.viewComponent.StatusBar;
/**
 * Klasa Window predstavlja glavni prozor aplikacije koji sadrži različite komponente korisničkog interfejsa, kao što su meni,
 *  alatna traka, statusna traka, panel za pregled aplikacija, tabela za prikaz podataka, 
 * i forma za unos i uređivanje podataka, sve povezane sa modelom aplikacije i stanjem aplikacije.
 * @author grupa2
 */
public class Window extends JFrame {
    private static final long serialVersionUID = 1L;
    public Vector<ViewComponents> viewComponents;
    private ApplicationModel model;
    private Table mainTable;
    private FormPanel formPanel = null;
   
    private Toolbar toolbar = null;
    private StatusBar statusBar = null;
    private MenuBar menuBarComponent = null;

    private ApplicationState appState; //intefejs
    
    
    public ApplicationState getAppState()
	{
		return appState;
	}

	public void setAppState(ApplicationState appState)
	{
		this.appState = appState;
	}

	public Table getMainTable()
	{
		return mainTable;
	}

	public void setMainTable(Table mainTable)
	{
		this.mainTable = mainTable;
	}

	public FormPanel getFormPanel()
	{
		return formPanel;
	}

	public Toolbar getToolbar()
	{
		return toolbar;
	}

	public StatusBar getStatusBar()
	{
		return statusBar;
	}

	public MenuBar getMenuBarComponent()
	{
		return menuBarComponent;
	}

	public void setFormPanel(FormPanel formPanel)
	{
		this.formPanel = formPanel;
	}

	public void setToolbar(Toolbar toolbar)
	{
		this.toolbar = toolbar;
	}

	public ApplicationModel getModel() {
		return model;
	}

	public void setStatusBar(StatusBar statusBar)
	{
		this.statusBar = statusBar;
	}

	public void setMenuBarComponent(MenuBar menuBarComponent)
	{
		this.menuBarComponent = menuBarComponent;
	}
    
    public Window() {
        viewComponents = new Vector<ViewComponents>();
    }

    public Window(ApplicationModel model) {
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        this.setSize(screenSize.width, screenSize.height);

        setLayout(new BorderLayout());
        ImageIcon icon = new ImageIcon("icons/logo.png");
        setIconImage(icon.getImage());
        setTitle("LAW BRIDGE");
        setExtendedState(MAXIMIZED_BOTH);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        this.model = model;
        this.mainTable = new Table(new CustomTableModel());
        this.mainTable.getSelectionModel().addListSelectionListener(new CustomListSelectionListener(this));
        BrowserPanel treePanel = new BrowserPanel(model);

        JScrollPane scrollPane = new JScrollPane(mainTable);

        formPanel = new FormPanel(new CustomTableModel(), this);

        JPanel tablePanel = new JPanel();
        tablePanel.setLayout(new BoxLayout(tablePanel, BoxLayout.Y_AXIS));
        tablePanel.add(scrollPane);
        tablePanel.add(formPanel);

        add(treePanel, BorderLayout.WEST);
        add(tablePanel, BorderLayout.CENTER);

        // Initialize and set the MenuBar
        menuBarComponent = new MenuBar();
        JMenuBar menuBar = menuBarComponent.createMenuBar(this);
        setJMenuBar(menuBar);

        // Initialize and add the Toolbar
        toolbar = new Toolbar(model);
        add(toolbar, BorderLayout.NORTH);

        // Initialize and add the StatusBar
        statusBar = new StatusBar(model);
        add(statusBar, BorderLayout.SOUTH);
        
        this.appState = new IdleState(this);

        setVisible(true);
    }

	public void setTableModel(GeneralTableModel tableModel) {
        mainTable.setModel(tableModel);
        formPanel.setTableModel(tableModel);
        System.out.println(mainTable.getModel());
    }
}

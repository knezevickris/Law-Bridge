package view.viewComponent;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JPanel;

import model.ApplicationState;
import model.GeneralTableModel;
import model.TreeElement.Column;
import view.Window;
/**
 * Klasa FormPanel omogućava dinamičko kreiranje i upravljanje unosnim poljima za unos podataka u formi, 
 * osiguravajući validaciju unosa i interakciju s glavnim prozorom aplikacije putem različitih stanja i modela podataka.
 * @author grupa2
 */

public class FormPanel extends JPanel
{
	private static final long serialVersionUID = 1L;

	private GeneralTableModel tableModel = null;
	private List<InputField> inputComponents = new ArrayList<>();
	private final JPanel containerPanel = new JPanel(new GridBagLayout());
	private ApplicationState appState;
	private Window window;
	
	public FormPanel(GeneralTableModel model, Window window) {
		// TODO Auto-generated constructor stub
		this.window = window;
		this.tableModel = model;
		setLayout(new FlowLayout(FlowLayout.LEFT));
		add(containerPanel);
		
		setVisible(false);
	}

	public void setInputs(List<Column> columns) 
	{
		containerPanel.removeAll();
		inputComponents.clear();
		
		for(Column column : columns) {
			InputField input = FieldGenerator.createInput(column);
			inputComponents.add(input);
		}
		addWithLayout();
	}
	private void addWithLayout() {
		GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(5, 5, 5, 5);
        int row = 1;
        int col = 0;
		
        JPanel buttonPanel = new JPanel();
		JButton btnSubmit = new JButton("Potvrdi");
		btnSubmit.addActionListener((e)->window.getAppState().handleSubmit());
		
		JButton btnCancel = new JButton("Odustani");
		btnCancel.addActionListener((e)->window.getAppState().handleCancel());
		
		buttonPanel.add(btnSubmit);
		buttonPanel.add(btnCancel);
		
		containerPanel.add(buttonPanel, gbc);
        
		for (InputField input: inputComponents)
		{
			gbc.gridx = col;
			gbc.gridy = row;
			gbc.anchor = GridBagConstraints.LINE_START;

			containerPanel.add((Component) input, gbc);
			
	        row++;
	        if (row >= 5) 
	        {
	            row = 0;
	            col++;
	        }
		}
		
		
		
		gbc.gridx = row==0 && col < 5? col-1 : 4 ;
		gbc.gridy = row+1;
		
		
		containerPanel.revalidate();
		containerPanel.repaint();
	}
	public void setTableModel(GeneralTableModel model) {
		tableModel = model;
		setInputs(model.getColumns());
		setVisible(true);
	}
	
	public void fillInputs(List<Object> row) {
		for(int i=0; i<row.size(); i++) {
			inputComponents.get(i).setValue(row.get(i));
		}
	}
	
	public boolean validateInputs() {
		for(InputField input : inputComponents) {
			if(input.getValue() == null && !input.isNullable() && !input.isPrimary()) {
				
				return false;
			}
		}
		return true;
	}
	
	public void disablePrimaryInputs() {
		for(InputField input : inputComponents) {
			if(input.isPrimary()) {
				input.setEnabled(false);
			}
		}
	}
	
	public void disableInputs() {
		for(InputField input : inputComponents) {
			input.setEnabled(false);		}
	}
	
	public void enableInputs() {
		for(InputField input : inputComponents) {
			input.setEnabled(true);
		}
	}
	public void clearAll() {
		for(InputField input : inputComponents) {
			input.setValue(null);
		}
	}
	public HashMap<String, Object> getValues(){
		HashMap<String, Object> res = new HashMap<String, Object>();
		String name="";
		for(InputField input : inputComponents) {
			if(input.getName().endsWith("*"))
			{
				name = input.getName().substring(0,input.getName().length()-1);
			}
			else name=input.getName();
			res.put(name, input.getValue());
			
		}
		return res;
	}
	
}

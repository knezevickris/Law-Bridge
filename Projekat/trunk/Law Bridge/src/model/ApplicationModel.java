package model;

import java.awt.Color;
import java.util.Vector;
import javax.swing.tree.DefaultMutableTreeNode;
import observer.Observer;

/**
 * Klasa kojom se definise model aplikacije i obavjestavaju posmatraci o promjeni.
 * @author grupa2
 * 
 *
 */

public class ApplicationModel implements observer.Subject {

    public Vector<Observer> observers;
    public ApplicationState appState;
    private final XMLTreeModel xmlTreeModel;
    private GeneralTableModel tableModel;

    public GeneralTableModel getTableModel() {
        return tableModel;
    }

    public void setTableModel(GeneralTableModel tableModel) {
        this.tableModel = tableModel;
    }

    public XMLTreeModel getTreeModel() {
        return xmlTreeModel;
    }

    public ApplicationModel() {
        this.xmlTreeModel = new XMLTreeModel(new DefaultMutableTreeNode());

        this.observers = new Vector<Observer>();
        this.appState = new LoginState(this);
    }

    @Override
    public void attach(Observer observer) {
        observers.add(observer);
    }

    @Override
    public void detach(Observer observer) {
        observers.remove(observer);
    }

    @Override
    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update(this);
        }
    }

   
}

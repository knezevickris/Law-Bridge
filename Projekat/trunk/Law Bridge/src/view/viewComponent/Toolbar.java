package view.viewComponent;

import javax.swing.*;
import java.awt.*;
import model.ApplicationModel;
import observer.Subject;
import listeners.ToolbarButtonsActionListener;

/**
 * Klasa koja omogucava prikaz toolbar-a sa edit opcijama
 * @author grupa2
 * @version 1.0
 */
public class Toolbar extends JToolBar implements ViewComponent {

    private JButton btnFirst, btnNext, btnPrevious, btnLast;
    private JButton btnNew, btnEdit, btnDelete;
    private JButton btnAccept, btnCancel;
    private JButton btnReport;

    public Toolbar(ApplicationModel model) {
        // Navigacioni dugmići
        btnFirst = createButton("First", "icons/first.png", "first");
        btnNext = createButton("Next", "icons/next.png", "next");
        btnPrevious = createButton("Previous", "icons/previous.png", "prev");
        btnLast = createButton("Last", "icons/last.png", "last");

        // Komande za promenu stanja
        btnNew = createButton("New", "icons/new.png", "new");
        btnEdit = createButton("Edit", "icons/edit.png", "edit");
        btnDelete = createButton("Delete", "icons/delete.png", "delete");

        // Potvrda unosa/promene
        btnAccept = createButton("Accept", "icons/accept.png", "accept");
        btnCancel = createButton("Cancel", "icons/cancel.png", "cancel");

        // Generisanje izveštaja
        btnReport = createButton("Report", "icons/report.png", "report");

        // Dodavanje dugmića u toolbar
        add(btnFirst);
        add(btnNext);
        add(btnPrevious);
        add(btnLast);
        addSeparator();
        add(btnNew);
        add(btnEdit);
        add(btnDelete);
        addSeparator();
        add(btnAccept);
        add(btnCancel);
        addSeparator();
        add(btnReport);

        // Inicijalno stanje dugmića
        setButtonsEnabled(true);

        // Dodavanje listenera dugmićima
        ToolbarButtonsActionListener actionListener = new ToolbarButtonsActionListener();
        btnFirst.addActionListener(actionListener);
        btnNext.addActionListener(actionListener);
        btnPrevious.addActionListener(actionListener);
        btnLast.addActionListener(actionListener);
        btnNew.addActionListener(actionListener);
        btnEdit.addActionListener(actionListener);
        btnDelete.addActionListener(actionListener);
        btnAccept.addActionListener(actionListener);
        btnCancel.addActionListener(actionListener);
        btnReport.addActionListener(actionListener);
    }

    private JButton createButton(String tooltip, String iconPath, String actionCommand) {
        JButton button = new JButton(new ImageIcon(Toolkit.getDefaultToolkit().getImage(iconPath).getScaledInstance(25,25, Image.SCALE_SMOOTH)));
        button.setToolTipText(tooltip);
        button.setActionCommand(actionCommand);
        return button;
    }

    public void setButtonsEnabled(boolean enabled) {
        btnFirst.setEnabled(enabled);
        btnNext.setEnabled(enabled);
        btnPrevious.setEnabled(enabled);
        btnLast.setEnabled(enabled);
        btnNew.setEnabled(enabled);
        btnEdit.setEnabled(enabled);
        btnDelete.setEnabled(enabled);
        btnAccept.setEnabled(enabled);
        btnCancel.setEnabled(enabled);
        btnReport.setEnabled(enabled);
    }
    
    public void setButtonsInActiveState() {
        btnFirst.setEnabled(false);
        btnNext.setEnabled(false);
        btnPrevious.setEnabled(false);
        btnLast.setEnabled(false);
        btnNew.setEnabled(true);
        btnEdit.setEnabled(false);
        btnDelete.setEnabled(false);
        btnAccept.setEnabled(false);
        btnCancel.setEnabled(false);
        btnReport.setEnabled(true);
    }
    
    public void setButtonsInCreationState() {
        btnFirst.setEnabled(false);
        btnLast.setEnabled(false);
        btnNext.setEnabled(false);
        btnPrevious.setEnabled(false);
        btnNew.setEnabled(false);
        btnEdit.setEnabled(false);
        btnDelete.setEnabled(false);
        btnAccept.setEnabled(true);
        btnCancel.setEnabled(true);
        btnReport.setEnabled(false);
    }

    public void setButtonsInModifyState() { 
    	 btnFirst.setEnabled(true);
         btnLast.setEnabled(true);
         btnNext.setEnabled(true);
         btnPrevious.setEnabled(true);
         btnNew.setEnabled(true);
         btnEdit.setEnabled(false);
         btnDelete.setEnabled(true);
         btnAccept.setEnabled(true);
         btnCancel.setEnabled(true);
         btnReport.setEnabled(true);
    }

    @Override
    public void update(Subject subject) {
        // TODO Auto-generated method stub
        
    }
}

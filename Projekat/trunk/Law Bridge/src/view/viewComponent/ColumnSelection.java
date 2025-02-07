package view.viewComponent;

import java.awt.Dimension;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JDialog;
import javax.swing.JPanel;
/**
 * Klasa predstavlja dijalog za odabir kolona koje će se prikazati, 
 * koristeći ResultSetMetaData za dohvaćanje naziva kolona i omogućavajući korisniku da označi koje kolone želi prikazati.
 * @author grupa2
 */
public class ColumnSelection extends JDialog {

    private static final long serialVersionUID = 1L;
    private List<JCheckBox> list = null;
    private JButton btnOk;
    private JButton btnCancel;

    public ColumnSelection(ResultSetMetaData rsmd, List<Boolean> boolList) {

        setTitle("Izbor kolona za prikaz");
        setSize(new Dimension(1000, 500));
        setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));
        list = new ArrayList<JCheckBox>();
        try {
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                list.add(new JCheckBox(rsmd.getColumnName(i), false));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        JPanel checkBoxPanel = new JPanel();
        checkBoxPanel.setLayout(new BoxLayout(checkBoxPanel, BoxLayout.Y_AXIS));
        checkBoxPanel.add(Box.createVerticalGlue()); 

        for (JCheckBox jCheckBox : list) {
            jCheckBox.setAlignmentX(CENTER_ALIGNMENT); 
            checkBoxPanel.add(jCheckBox);
        }

        checkBoxPanel.add(Box.createVerticalGlue()); 
        add(checkBoxPanel);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new BoxLayout(buttonPanel, BoxLayout.X_AXIS));
        btnOk = new JButton("OK");
        btnCancel = new JButton("Odustani");

        btnOk.addActionListener(e -> {
            for (int i = 0; i < list.size(); i++) {
                boolList.add(list.get(i).isSelected());
            }
            dispose();
        });

        btnCancel.addActionListener(e -> {
            dispose();
        });

        buttonPanel.add(Box.createHorizontalGlue()); 
        buttonPanel.add(btnOk);
        buttonPanel.add(btnCancel);
        buttonPanel.add(Box.createHorizontalGlue()); 

        add(buttonPanel);

        setModal(true);
        pack();
        setLocationRelativeTo(null);
        setVisible(true);
    }
}
package view.viewComponent;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;

import javax.swing.BorderFactory;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.Border;
import javax.swing.border.MatteBorder;

import model.ApplicationModel;
/**
 * Status bar definise statusnu traku koja prikazuje stanje aplikacije, datum i vrijeme.
 * @author grupa2
 * @version 1.0
 */

public class StatusBar extends JPanel {

    private static final long serialVersionUID = 1L;

    protected JPanel pnlLeft;
    protected JPanel pnlRight;
    protected JPanel pnlCenter;

    private static TimerThread thread = null;
    private JLabel lblLeft = null;
    private JLabel tblSelected = null;
    private JLabel rowSelected = null;
    private ApplicationModel applicationModel;
    private JLabel lblStatus;

    public static void terminateTimeThread() {
        if (thread != null)
            thread.setRunning(false);
    }

    public void setStatusMessage(String message) {
        lblStatus.setText(message);
    }

    public void setTableMessage(String tableName) {
        tblSelected.setText(tableName);
    }

    public void setRowMessage(String s) {
        rowSelected.setText("Row selected: " + s);
    }

    public StatusBar(ApplicationModel applicationModel) {
        createPartControl();
        this.applicationModel = applicationModel;
        this.lblStatus = new JLabel("State"); // Skraceni ispis
        tblSelected = new JLabel("Table");
        rowSelected = new JLabel("Row");

        final JLabel lblDate = new JLabel();
        lblDate.setFont(new Font("Segoe UI", Font.BOLD, 12));
        lblDate.setHorizontalAlignment(JLabel.LEFT); // Poravnanje za datum
        lblDate.setPreferredSize(new Dimension(75, 23)); // Dodavanje dimenzije za labelu

        final JLabel lblTime = new JLabel();
        lblTime.setFont(new Font("Segoe UI", Font.BOLD, 12));
        lblTime.setHorizontalAlignment(JLabel.LEFT); // Poravnanje za vreme
        lblTime.setPreferredSize(new Dimension(100, 23)); // Dodavanje dimenzije za labelu

        lblStatus.setFont(new Font("Segoe UI", Font.ITALIC, 12));
        lblStatus.setHorizontalAlignment(JLabel.LEFT); // Poravnanje za status
        lblStatus.setPreferredSize(new Dimension(75, 23)); // Skracena dimenzija za labelu

        this.addLeftComponent(lblDate);
        this.addSeparator(pnlLeft);
        this.addLeftComponent(lblTime);
        this.addSeparator(pnlLeft);
        this.addRightComponent(lblStatus);
        this.addSeparator(pnlRight);
        this.addRightComponent(tblSelected);
        this.addSeparator(pnlRight);
        this.addRightComponent(rowSelected);

        thread = new TimerThread(lblDate, lblTime);
        thread.start();
    }

    protected void createPartControl() {
        setLayout(new BorderLayout());
        setPreferredSize(new Dimension(getWidth(), 23));

        pnlLeft = new JPanel(new FlowLayout(FlowLayout.LEADING, 5, 3));
        pnlLeft.setOpaque(false);
        add(pnlLeft, BorderLayout.WEST);

        pnlCenter = new JPanel(new FlowLayout(FlowLayout.CENTER, 5, 3)); 
        pnlCenter.setOpaque(false);
        add(pnlCenter, BorderLayout.CENTER);

        pnlRight = new JPanel(new FlowLayout(FlowLayout.LEADING, 5, 3)); 
        pnlRight.setOpaque(false);
        add(pnlRight, BorderLayout.EAST);

        Border blueBorder = new MatteBorder(2, 2, 0, 2, Color.BLUE);
        setBorder(blueBorder);
    }

    public void addLeftComponent(JComponent component) {
        pnlLeft.add(component);
    }

    public void setCenterComponent(JComponent component) {
        pnlCenter.removeAll();
        pnlCenter.add(component);
    }

    public void addRightComponent(JComponent component) {
        pnlRight.add(component);
    }

    private void addSeparator(JPanel panel) {
        JLabel separator = new JLabel("|");
        separator.setFont(new Font("Segoe UI", Font.PLAIN, 12));
        panel.add(separator);
    }
}

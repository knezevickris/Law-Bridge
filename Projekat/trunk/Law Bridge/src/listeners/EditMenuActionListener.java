package listeners;

import java.awt.Color;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JPopupMenu;
import javax.swing.SwingUtilities;

import ar.com.fdvs.dj.core.DynamicJasperHelper;
import ar.com.fdvs.dj.core.layout.ClassicLayoutManager;
import ar.com.fdvs.dj.domain.AutoText;
import ar.com.fdvs.dj.domain.DynamicReport;
import ar.com.fdvs.dj.domain.ImageBanner.Alignment;
import ar.com.fdvs.dj.domain.builders.ColumnBuilderException;
import ar.com.fdvs.dj.domain.builders.DynamicReportBuilder;
import ar.com.fdvs.dj.domain.builders.FastReportBuilder;
import ar.com.fdvs.dj.domain.builders.StyleBuilder;
import databaseAccess.DbConnection;
import model.ModifyState;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRResultSetDataSource;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

import javax.swing.JMenuBar;
import javax.swing.JMenuItem;

import view.Window;

/**
 * Klasa koja implementira izbor opcije iz edit menu bara
 * @author grupa2
 * 
 *
 */
public class EditMenuActionListener implements ActionListener {

	
	@Override
	public void actionPerformed(ActionEvent e) {
		JPopupMenu menuItem = (JPopupMenu)((JMenuItem)e.getSource()).getParent();
		Window window = (Window)SwingUtilities.getWindowAncestor((JMenuBar)((JMenuItem)menuItem.getInvoker()).getParent());
		
		// TODO Auto-generated method stub
		switch(e.getActionCommand()) {
		case "new":
			window.getAppState().handleCreate();
			break;
		case "edit":
			window.setAppState(new ModifyState(window));
			window.getAppState().handleChange();
			break;
		case "next":
			window.getAppState().handleNext();
			break;
		case "prev":
			window.getAppState().handlePrev();
			break;
		case "last":
			window.getAppState().handleLast();
			break;
		case "first":
			window.getAppState().handleFirst();
			break;
		case "accept":
			window.getAppState().handleSubmit();
			break;
		case "cancel":
			window.getAppState().handleCancel();
			break;
		case "report":
			try {
		        DbConnection instance = DbConnection.GetInstance();
		        Connection conn = instance.getConn();
				CallableStatement callableStatement = conn.prepareCall("{call udsp_ComplexReport()}");
				
				ResultSet resultSet = callableStatement.executeQuery();
				ResultSetMetaData rsmd = resultSet.getMetaData();
				List<Boolean> showCols = new ArrayList<>();
				
				new view.viewComponent.ColumnSelection(rsmd, showCols);
				
				FastReportBuilder drb = new FastReportBuilder();
				try {
					for(int i=1; i<=rsmd.getColumnCount(); i++) {
						if(showCols.get(i-1)) 
							drb.addColumn(rsmd.getColumnName(i), rsmd.getColumnName(i), String.class.getName(), 30);
					}
					
					DynamicReportBuilder drpb = drb
							.setTitle("Kompleksni izvjestaj")
							.setOddRowBackgroundStyle(new StyleBuilder(false).setBackgroundColor(new Color(252, 191, 80)).build())
							.setTitleStyle(new StyleBuilder(false).setFont(new ar.com.fdvs.dj.domain.constants.Font(23, "Georgia", true)).build())
							.setPrintBackgroundOnOddRows(true)
							.setUseFullPageWidth(true)
							.addFirstPageImageBanner("icons/logo2.jpg", 200, 150, Alignment.Left)
							.setHeaderVariablesHeight(20)
						    .addAutoText("Kreirano dana: " + new java.text.SimpleDateFormat("dd.MM.yyyy. HH:mm")
						    		.format(new java.util.Date()), AutoText.POSITION_HEADER, AutoText.ALIGNMENT_RIGHT, 250, new StyleBuilder(true).build()) 
							.setFooterVariablesHeight(20)
							.addAutoText(AutoText.AUTOTEXT_PAGE_X_OF_Y, AutoText.POSITION_FOOTER, AutoText.ALIGNMENT_CENTER, 30, 20);
					;
					
					DynamicReport dynamicReport = drpb.build();
					JRDataSource jrDataSource = new JRResultSetDataSource(resultSet);
					
					JasperPrint jasperPrint = DynamicJasperHelper.generateJasperPrint(dynamicReport, new ClassicLayoutManager(), jrDataSource);
					JasperViewer viewer = new JasperViewer(jasperPrint, false);
					viewer.setVisible(true);
				} catch (ColumnBuilderException | ClassNotFoundException e1) {

					e1.printStackTrace();
				} catch (JRException e1) {

					e1.printStackTrace();
				}
			} catch (SQLException e1) {

				e1.printStackTrace();
			}
			
           break;
		
	}
}
}

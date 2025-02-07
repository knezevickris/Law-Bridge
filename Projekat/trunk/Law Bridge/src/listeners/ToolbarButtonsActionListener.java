package listeners;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
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
import model.CustomTableModel;
import model.GeneralTableModel;
import model.ModifyState;
import model.StoredProceduresHelper;
import model.TreeElement.Column;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRResultSetDataSource;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;
import view.Window;
import view.viewComponent.Table;

/**
 * Klasa koja implementira listener za izvrsavanje akcija pri kliku na JButton instancu iz toolbar-a.
 * @author grupa2
 * 
 *
 */

public class ToolbarButtonsActionListener implements ActionListener{

	
	@Override
	public void actionPerformed(ActionEvent e) {
		Window window = (Window) SwingUtilities.getWindowAncestor((JButton)e.getSource());
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
		case "delete":
			window.getAppState().handleDelete();
		case "report":
			Table table = window.getMainTable();
			GeneralTableModel tableModel = (GeneralTableModel) window.getMainTable().getModel();
			
			if(tableModel instanceof CustomTableModel) {
				CustomTableModel customTableModel = (CustomTableModel) tableModel;
				
				FastReportBuilder drb = new FastReportBuilder();
				try {
					for(int i=0; i<tableModel.getColumnCount(); i++) {
						Column col = (Column) tableModel.getColumn(i);
						drb.addColumn(col.getName(), col.getName(), String.class.getName(), 30);

					}
					
					DynamicReportBuilder drpb = drb
							.setTitle(customTableModel.getTable().getName())
							.setOddRowBackgroundStyle(new StyleBuilder(false).setBackgroundColor(new Color(252, 191, 73)).build())
							.setTitleStyle(new StyleBuilder(false).setFont(new ar.com.fdvs.dj.domain.constants.Font(21, "Georgia", true)).build())
							.setPrintBackgroundOnOddRows(true)
							.setUseFullPageWidth(true)
							.addFirstPageImageBanner("icons/logo2.jpg", 250, 120, Alignment.Center)
							.setHeaderVariablesHeight(30)
						    .addAutoText("Izvjestaj kreiran: " + new java.text.SimpleDateFormat("dd.MM.yyyy HH:mm")
						    		.format(new java.util.Date()), AutoText.POSITION_HEADER, AutoText.ALIGNMENT_RIGHT, 200, new StyleBuilder(true).build()) 
							.setFooterVariablesHeight(20)
							.addAutoText(AutoText.AUTOTEXT_PAGE_X_OF_Y, AutoText.POSITION_FOOTER, AutoText.ALIGNMENT_RIGHT, 30, 20)
							
					;
					
					DynamicReport dynamicReport = drpb.build();
					StoredProceduresHelper procUtil = new StoredProceduresHelper(customTableModel.getTable());
					JRDataSource jrDataSource = new JRResultSetDataSource(procUtil.read());
					
					JasperPrint jasperPrint = DynamicJasperHelper.generateJasperPrint(dynamicReport, new ClassicLayoutManager(), jrDataSource);
					JasperViewer viewer = new JasperViewer(jasperPrint, false);
					viewer.setVisible(true);
				} catch (ColumnBuilderException | ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (JRException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				break;
			}
		}
		
	}

}

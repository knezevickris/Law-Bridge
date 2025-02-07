package view.viewComponent;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.swing.JLabel;
import javax.swing.SwingUtilities;

/**
 * Klasa pruža mogućnost prikaza trenutnog vremena i datuma.
 * @author grupa2
 * @version 1.0
 *
 */

public class TimerThread extends Thread{

	protected boolean isRunning;
	
	protected JLabel lblDate;
	protected JLabel lblTime;
	
	protected SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
	protected SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
	
	public TimerThread(JLabel lblDate, JLabel lblTimer) {
		this.lblDate=lblDate;
		this.lblTime=lblTimer;
		this.isRunning=true;
	}
	
	@Override
	public void run() {
		while (isRunning) {
			SwingUtilities.invokeLater(new Runnable() {
				@Override
				public void run() {
					Calendar currentCalendar = Calendar.getInstance();
					Date currentTime = currentCalendar.getTime();
					lblDate.setText(
							"<html><b style = \"color:blue\">" + dateFormat.format(currentTime) + "</b></html>");
					lblTime.setText(
							"<html><b style = \"color:blue\">" + timeFormat.format(currentTime) + "</b></html>");
				}
			});

			try {
				Thread.sleep(5000L);
			} catch (InterruptedException e) {
			}
		}
	}
	
	public void setRunning(boolean isRunning) {
		this.isRunning = isRunning;
	}
	
}

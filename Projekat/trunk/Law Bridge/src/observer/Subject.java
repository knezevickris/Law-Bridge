package observer;

/**
 * Interfejs Subject deklariše metode za dodavanje, uklanjanje i obaveštavanje posmatrača (observera).
 * @author grupa2
 * 
 *
 */

public interface Subject {
	void attach(Observer observer);
	void detach(Observer observer);
	void notifyObservers();
}

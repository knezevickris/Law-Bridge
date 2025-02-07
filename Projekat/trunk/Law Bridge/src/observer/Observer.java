package observer;

/**
 * Ovaj interfejs definiše metodu koja omogućava observeru (posmatracu) da prima obaveštenja o 
 * promjenama stanja drugog objekta (subjekta) koji posmatra.
 * @author grupa2
 * 
 *
 */

public interface Observer {
	void update(Subject subject);
}

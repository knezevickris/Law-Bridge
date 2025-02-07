package view.viewComponent;

import observer.Observer;
import observer.Subject;

/**
 * Interfejs ViewComponent predstavlja apstrakciju koja definiše osnovne metode koje mora implementirati svaka komponenta prikaza u korisničkom interfejsu.
 * @author grupa2
 * @version 1.0
 *
 */

public interface ViewComponent extends Observer {
	void update(Subject subject);
}

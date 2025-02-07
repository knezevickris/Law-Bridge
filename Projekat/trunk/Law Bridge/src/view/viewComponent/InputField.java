package view.viewComponent;

import java.awt.Component;
/**
 * Ova interfejsna klasa definiše metode za dobijanje i postavljanje vrednosti polja unosa, postavljanje imena,
 * referentnog dugmeta i omogućavanje/onemogućavanje polja,
 * pružajući informacije o tome da li je polje primarno ili može biti prazno, kao i dobijanje naziva polja.
 * @author grupa2
 */
public interface InputField
{
	Object getValue();
	void setValue(Object object);
	void setName(String name);
	void setReferenceBtn(Component btn);
	void setEnabled(boolean enabled);
	
	boolean isPrimary();
	boolean isNullable();
	String getName();
}



import java.util.Collection;

public interface PhoneBook {

	/**
	 * Adds a person to your data structure.
	 * @param person table of strings containing person data as generated by
	 * the class RandomPersonGenerator.
	 */
	void addPerson(String[] person);

	/**
	 * Returns all the phone numbers for the given person.
	 * @param place place where this person lives.
	 * @param lastName person 's last name
	 * @param firstName person 's first name
	 * @return a collection with all the phone numbers.
	 */
	Collection<String> getNumbers(String place, String lastName, String firstName);

	/**
	 * Adds an additional phone number for this person.
	 * @param place place where this person lives.
	 * @param lastName person 's last name
	 * @param firstName person 's first name
	 * @param phoneNumber the additional phone number.
	 */
	void addPhoneNumber(String place, String lastName, String firstName, String phoneNumber);

	/**
	 * Writes the phone book to the screen.
	 * (See assignment for further details.)
	 */
	void write();
}

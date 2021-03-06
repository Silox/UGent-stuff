/**
 *
 * @author Tom Naessens
 * TomNaessens@UGent.be 
 * 1ste Bachelor Informatica
 * Universiteit Gent
 *
 */

package elektrobank.Controllers.Buttons;

import elektrobank.Models.Simulator.SimulatorModel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JToggleButton;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

public class LoopToggleButton extends JToggleButton implements ActionListener, ChangeListener {

	private SimulatorModel sModel;

	public LoopToggleButton(SimulatorModel sModel, String title) {
		super(title);

		this.sModel = sModel;

		addActionListener(this);

		sModel.addChangeListener(this);
	}

	public void stateChanged(ChangeEvent e) {
		setSelected(sModel.getTimer().isRunning());
	}

	public void actionPerformed(ActionEvent e) {
		sModel.changeTimer();
	}
}

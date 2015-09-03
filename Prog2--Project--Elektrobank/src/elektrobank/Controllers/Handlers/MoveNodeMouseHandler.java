/**
 *
 * @author Tom Naessens
 * TomNaessens@UGent.be
 * 1ste Bachelor Informatica
 * Universiteit Gent
 *
 */
package elektrobank.Controllers.Handlers;

import elektrobank.Models.Ontwerper.TekenModel;
import elektrobank.Models.ModelBeheerder;
import elektrobank.icons.IconPainter;
import elektrobank.icons.SwitchIcon;
import elektrobank.utils.PointNode;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.MouseEvent;
import javax.swing.event.MouseInputAdapter;
import joldespice.circuit.EdgeCircuit;
import joldespice.components.Component;
import joldespice.components.nonlinear.Switch;
import joldespice.graph.EdgeContainer;
import joldespice.graph.EdgeList;

public class MoveNodeMouseHandler extends MouseInputAdapter implements MouseHandler {

	private ModelBeheerder mBeheerder;
	private TekenModel tModel;

	public MoveNodeMouseHandler(ModelBeheerder mBeheerder) {
		this.mBeheerder = mBeheerder;
	}

	@Override
	public void mouseMoved(MouseEvent e) {
		tModel.selectEdge(e.getPoint());
	}

	@Override
	public void mousePressed(MouseEvent e) {
		tModel.selectNode(e.getPoint());
	}

	@Override
	public void mouseDragged(MouseEvent e) {
		tModel.moveNode(e.getPoint());
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		tModel.placeNode(e.getPoint());
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		tModel.getProperties(e.getPoint());
	}

	public void paint(Graphics g) {
		tModel = mBeheerder.getTModel();

		Graphics2D g2 = (Graphics2D) g;
		int length;
		double angle;
		IconPainter icon;

		g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

		EdgeCircuit circ = tModel.getCirc();
		EdgeList<Component, PointNode> edges = circ.getEdgeList();

		for (EdgeContainer<Component, PointNode> edge : edges) {
			PointNode headNode = edge.getHead();
			PointNode tailNode = edge.getTail();

			icon = tModel.getIconMap(edge.getE().getClass().getSimpleName());

			if (edge.getE().getClass().getSimpleName().equals("Switch")) {
				((SwitchIcon) icon).setOpen(((Switch) edge.getE()).getState());
			}

			if (tModel.getCommitedEdge() != null) {
				// Twee edges zijn gelijk als ze hetzelfde begin- en eindpunt hebben
				if (headNode.getLocation() == (tModel.getCommitedEdge().getHead()).getLocation()
					   && tailNode.getLocation() == (tModel.getCommitedEdge().getTail()).getLocation()) {
					g2.setColor(tModel.getSELECT_COLOR());
				} else {
					g2.setColor(Color.BLACK);
				}
			}

			g2.fillOval(headNode.getX() - tModel.getNODE_SIZE() / 2, headNode.getY() - tModel.getNODE_SIZE() / 2, tModel.getNODE_SIZE(), tModel.getNODE_SIZE());

			length = (int) headNode.getLocation().distance(tailNode.getLocation());
			angle = Math.atan2(tailNode.getY() - headNode.getY(), tailNode.getX() - headNode.getX());
			icon.setLength(length);
			icon.setColor(g2.getColor());
			icon.setAngle(angle);
			icon.setThickness(1);
			icon.paintIcon(null, g2, (headNode.getX() + tailNode.getX()) / 2 - icon.getIconWidth() / 2, (headNode.getY() + tailNode.getY()) / 2 - icon.getIconHeight() / 2);

			g2.fillOval(tailNode.getX() - tModel.getNODE_SIZE() / 2, tailNode.getY() - tModel.getNODE_SIZE() / 2, tModel.getNODE_SIZE(), tModel.getNODE_SIZE());
		}
	}
}

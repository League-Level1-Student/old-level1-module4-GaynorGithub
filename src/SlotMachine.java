
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Random;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class SlotMachine implements ActionListener {
	int num1;
	int num2;
	int num3;
	JLabel reel1 = new JLabel();
	JLabel reel2 = new JLabel();
	JLabel reel3 = new JLabel();
	JFrame frame = new JFrame();

	public static void main(String[] args) throws MalformedURLException {
		SlotMachine slot = new SlotMachine();
		slot.spin();
	}

	void spin() throws MalformedURLException {

		JPanel panel = new JPanel();
		JButton spinning = new JButton("SPIN!!");

		reel1.setIcon(createLabelImage("Cherry.jpg"));
		reel2.setIcon(createLabelImage("Seven.png"));
		reel3.setIcon(createLabelImage("Bar.png"));
		frame.add(panel);
		panel.add(reel1);
		panel.add(reel2);
		panel.add(reel3);
		panel.add(spinning);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		spinning.addActionListener(this);

		frame.pack();

	}

	private Icon createLabelImage(String fileName) throws MalformedURLException {
		URL imageURL = getClass().getResource(fileName);
		if (imageURL == null) {
			System.err.println("Could not find image " + fileName);
			return new ImageIcon();
		}
		Icon icon = new ImageIcon(imageURL);
		JLabel imageLabel = new JLabel(icon);
		return icon;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Random rand = new Random();
		int num1 = rand.nextInt(3);
		int num2 = rand.nextInt(3);
		int num3 = rand.nextInt(3);

		try {
			if (num1 == 0) {
				reel1.setIcon(createLabelImage("Cherry.jpg"));
			} else if (num1 == 1) {
				reel1.setIcon(createLabelImage("Seven.png"));
			} else if (num1 == 2) {
				reel1.setIcon(createLabelImage("bar.png"));
			}

			if (num2 == 0) {
				reel2.setIcon(createLabelImage("Cherry.jpg"));
			} else if (num2 == 1) {
				reel2.setIcon(createLabelImage("Seven.png"));
			} else if (num2 == 2) {
				reel2.setIcon(createLabelImage("Bar.png"));
			}

			if (num3 == 0) {
				reel3.setIcon(createLabelImage("Cherry.jpg"));
			} else if (num3 == 1) {
				reel3.setIcon(createLabelImage("Seven.png"));
			} else if (num3 == 2) {
				reel3.setIcon(createLabelImage("Bar.png"));
			}

			if (num1 == num2 && num2 == num3) {
				JOptionPane.showMessageDialog(null, "You WIN!!");
				System.exit(0);
			}

		} catch (Exception Ex) {

		}

		frame.repaint();
		frame.pack();
	}

}

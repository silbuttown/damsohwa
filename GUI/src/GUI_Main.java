import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import java.awt.BorderLayout;
import javax.swing.SwingConstants;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import javax.swing.JPanel;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class GUI_Main {

	private JFrame frame;
	private JTextField textField;
	private JPasswordField passwordField;

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					GUI_Main window = new GUI_Main();
					// �������ȭ�鿡 frame�� ����ִ� �޼ҵ� -> setVisible()
					
					window.frame.setVisible(true); // ��! true! false�� ���� �ȵ�
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public GUI_Main() {
		initialize();
	}

	private void initialize() {
		frame = new JFrame();
		// frame�� ��ġ �� ũ�� ���� -> setBounds(x��, y��, ����, ����)
		//frame.setBounds(100, 100, 273, 158);
		frame.setSize(364, 474);
		// frameâ�� ����� ���� �ϱ�
		frame.setLocationRelativeTo(null);
		// frame ũ�⸦ ���Ӱ� ����
		
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JPanel LOGIN_page = new JPanel();
		JPanel Main_page = new JPanel();
		LOGIN_page.setBounds(0, 0, 348, 435);
		frame.getContentPane().add(LOGIN_page);
		LOGIN_page.setLayout(null);
		
		JLabel label = new JLabel("<LOGI_IN PROGRAM>");
		label.setBounds(80, 53, 192, 26);
		label.setHorizontalAlignment(SwingConstants.CENTER);
		label.setFont(new Font("���� ���", Font.BOLD, 20));
		LOGIN_page.add(label);
		
		JLabel label_1 = new JLabel("ID : ");
		label_1.setBounds(40, 134, 29, 21);
		label_1.setHorizontalAlignment(SwingConstants.RIGHT);
		label_1.setFont(new Font("���� ���", Font.PLAIN, 16));
		LOGIN_page.add(label_1);
		
		JLabel label_2 = new JLabel("PW : ");
		label_2.setBounds(40, 204, 37, 21);
		label_2.setHorizontalAlignment(SwingConstants.RIGHT);
		label_2.setFont(new Font("���� ���", Font.PLAIN, 16));
		LOGIN_page.add(label_2);
		
		textField = new JTextField();
		textField.setBounds(108, 135, 120, 21);
		textField.setColumns(10);
		LOGIN_page.add(textField);
		
		JButton button = new JButton("LOG_IN");
		button.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				Main_page.setVisible(true);
			}
		});
		button.setBounds(134, 305, 75, 23);
		LOGIN_page.add(button);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(112, 215, 120, 21);
		LOGIN_page.add(passwordField);
		
		
		Main_page.setBounds(0, 0, 348, 435);
		frame.getContentPane().add(Main_page);
		
		JLabel label_3 = new JLabel("\uBA54\uC778\uD398\uC774\uC9C0 \uC785\uB2C8\uB2E4.");
		label_3.setFont(new Font("���ʷҵ���", Font.PLAIN, 15));
		Main_page.add(label_3);
		
	}
}

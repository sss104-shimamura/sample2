package jp.co.soramasu;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,
								HttpServletResponse response)
								throws ServletException, IOException{
		
		// ���{�ꓙ���󂯎��ۂ̕��������h�~����
		request.setCharacterEncoding("Windows-31J");
		
		Enumeration<String> en = request.getParameterNames();
		while (en.hasMoreElements()) {
			String action = en.nextElement();
			if ("loginBtn1".equals(action)) {
				System.out.println("��login.jsp��ʂ�[���O�C��1]�{�^����������܂���");
			} else if ("loginBtn2".equals(action)) {
				System.out.println("��login.jsp��ʂ�[���O�C���Q]�{�^����������܂���");
			}
		}
		// ��ʂœ��͂��ꂽ�l�̎擾
		String name = request.getParameter("txtName");
		String password = request.getParameter("txtPassword");
		
		//���N�G�X�g�X�R�[�v���Z�b�g
		request.setAttribute("NAME_REQ", name);
		
		//�Z�b�V�����X�R�[�v�փZ�b�g
		HttpSession session = request.getSession();
		session.setAttribute("NAME_SES", name);
		
		//���j���[��ʂ֑J��
		this.getServletContext().getRequestDispatcher("/menu.jsp").forward(request,response);
	}
}

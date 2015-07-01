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
		
		// 日本語等を受け取る際の文字化け防止処理
		request.setCharacterEncoding("Windows-31J");
		
		Enumeration<String> en = request.getParameterNames();
		while (en.hasMoreElements()) {
			String action = en.nextElement();
			if ("loginBtn1".equals(action)) {
				System.out.println("★login.jsp画面で[ログイン1]ボタンが押されました");
			} else if ("loginBtn2".equals(action)) {
				System.out.println("★login.jsp画面で[ログイン２]ボタンが押されました");
			}
		}
		// 画面で入力された値の取得
		String name = request.getParameter("txtName");
		String password = request.getParameter("txtPassword");
		
		//リクエストスコープをセット
		request.setAttribute("NAME_REQ", name);
		
		//セッションスコープへセット
		HttpSession session = request.getSession();
		session.setAttribute("NAME_SES", name);
		
		//メニュー画面へ遷移
		this.getServletContext().getRequestDispatcher("/menu.jsp").forward(request,response);
	}
}

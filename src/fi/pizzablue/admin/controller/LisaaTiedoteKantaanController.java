package fi.pizzablue.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fi.pizzablue.admin.bean.Tiedote;
import fi.pizzablue.admin.service.TiedoteService;
import fi.pizzablue.dao.DAOPoikkeus;

@WebServlet("/uusi_tiedote")
public class LisaaTiedoteKantaanController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LisaaTiedoteKantaanController() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String syoteTiedote = request.getParameter("tiedote");
		Tiedote t = new Tiedote(syoteTiedote);

		try {
			TiedoteService service = new TiedoteService();
			service.lisaaTiedote(t);
		} catch (DAOPoikkeus e) {
			throw new ServletException(e);
		}
		request.getRequestDispatcher("WEB-INF/jsp/admin/tiedotteet.jsp?lisatty=true").forward(request, response);
	}

}
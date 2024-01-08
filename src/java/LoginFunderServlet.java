import bean.LoginUser;
import dao.LoginUserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFunderServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @param loginBean
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try (PrintWriter out = response.getWriter()) {
            String fundername = request.getParameter("fundername");
            String funderpass = request.getParameter("funderpass");
  
        LoginUser data = new LoginUser(fundername, funderpass);
        LoginUserDao loginDao = new LoginUserDao();
        
        String userValidate = loginDao.authenticateUser(data);
        
        if (userValidate.equals("SUCCESS")) {
                // If authentication is successful, forward to the Home.jsp page
                request.setAttribute("fundername", fundername);
                request.getRequestDispatcher("/homeUser.jsp").forward(request, response);
            } else {
                // If authentication fails, display an error message and forward to the Login.jsp page
                request.setAttribute("errMessage", userValidate);
                request.getRequestDispatcher("/loginUser.jsp").forward(request, response);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Login Servlet";
    }
}

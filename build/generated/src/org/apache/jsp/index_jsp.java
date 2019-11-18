package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <link href=\"../bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("         <title>Student Management System</title>\n");
      out.write("         <style>\n");
      out.write("             body{\n");
      out.write("                 \n");
      out.write("                 background-attachment:fixed;\n");
      out.write("                 background-size:cover; \n");
      out.write("                 font-family:arial;\n");
      out.write("             }\n");
      out.write("             h1{\n");
      out.write("                 color:darkcyan;\n");
      out.write("                 font-size: 450%;\n");
      out.write("             }\n");
      out.write("             ul{\n");
      out.write("                 margin: 0px;\n");
      out.write("                 padding: 0px;\n");
      out.write("                 list-style: none;\n");
      out.write("                 position: absolute;\n");
      out.write("             }\n");
      out.write("             ul li{\n");
      out.write("                 float: left;\n");
      out.write("                 width: 200px;\n");
      out.write("                 height: 40px;\n");
      out.write("                 background-color: black;\n");
      out.write("                 opacity: .8;\n");
      out.write("                 line-height: 40px;\n");
      out.write("                 text-align: center;\n");
      out.write("                 font-size: 20px;\n");
      out.write("                 margin-top: 6px;\n");
      out.write("                 margin-right: 2px;\n");
      out.write("                 margin-bottom: 2px;\n");
      out.write("                 border-radius: 10px;\n");
      out.write("                 \n");
      out.write("             }\n");
      out.write("             ul li a{\n");
      out.write("                 text-decoration: none;\n");
      out.write("                 color: white;\n");
      out.write("                 display: block;\n");
      out.write("                 border-radius: 10px;\n");
      out.write("             }\n");
      out.write("             ul li a:hover{\n");
      out.write("                 background-color: green;\n");
      out.write("             }\n");
      out.write("             ul li ul li{\n");
      out.write("                display:none;\n");
      out.write("             }\n");
      out.write("             ul li:hover ul li{\n");
      out.write("                 display: block;\n");
      out.write("                 margin-bottom: 2px;\n");
      out.write("             }\n");
      out.write("             #profile\n");
      out.write("             {\n");
      out.write("                 position: absolute;\n");
      out.write("                 margin-top: 30px;\n");
      out.write("                 margin-left: 33px;\n");
      out.write("                 color:black;\n");
      out.write("                 font-size: 23px;\n");
      out.write("                 cursor: pointer;\n");
      out.write("             }\n");
      out.write("             #profile:hover\n");
      out.write("             {\n");
      out.write("                 color:yellow;\n");
      out.write("             }\n");
      out.write("             #profull\n");
      out.write("             {\n");
      out.write("                 display: none;\n");
      out.write("                 right:0;\n");
      out.write("                 top:150px;\n");
      out.write("                 position: absolute;\n");
      out.write("                 padding: 30px;\n");
      out.write("                 background-color:activecaption;\n");
      out.write("             }\n");
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"admin.jpg\">\n");
      out.write("        <div>\n");
      out.write("            <ul>\n");
      out.write("               <li><span class=\"home\"><a href = \"index.jsp\"> Home</a></span></li>\n");
      out.write("               <li><span class=\"about\"><a href = \"about.jsp\"> About</a></span></li>\n");
      out.write("               <li><span class=\"contact\"><a href = \"contact.jsp\"> Contact</a></span></li>\n");
      out.write("               <li  id=\"login\"><span class=\"login\"><a href = \"#\"> Login</a></span>\n");
      out.write("                   <ul>\n");
      out.write("                <li><span class=\"admin\"><a href = \"adminlogin.jsp\">Admin</a></span></li>\n");
      out.write("                <li> <span class=\"student\"><a href = \"studlogin.jsp\">Student</a></span></li>\n");
      out.write("                </ul>\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   ");
    session = request.getSession();
        if(session.getAttribute("email")!=null)
         {
        String driver = "com.mysql.jdbc.Driver";
        try {
        Class.forName(driver);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

                 Statement st=null;
                 ResultSet rs=null;
                
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stureg","root","");
                    st=con.createStatement();
                    String em=session.getAttribute("email").toString();
                    rs=st.executeQuery("select * from registration where email='"+em+"' ");
                   
                    
        
      out.write("\n");
      out.write("                        \n");
      out.write("                <li><span class=\"reg\"><a href = \"stuInfo.jsp\">My Information</a></span></li>\n");
      out.write("               <li><span class=\"payment\"><a href = \"index.jsp\">Payment</a></span>\n");
      out.write("               <ul>\n");
      out.write("                   <li><span class=\"Admission\"><a href = \"semester_fee.jsp\">Semester fee</a></span></li>\n");
      out.write("                   <li><span class=\"semester\"><a href = \"exam_fee.jsp\">Exam fee</a></span></li>\n");
      out.write("                   <li><span class=\"hall\"><a href = \"hall-fee.jsp\">Hall fee</a></span></li>\n");
      out.write("               </ul>\n");
      out.write("                   </li>\n");
      out.write("                            <script>\n");
      out.write("                                \n");
      out.write("                                log=document.querySelector('#login');\n");
      out.write("                                log.style=\"display:none\";\n");
      out.write("                                \n");
      out.write("                            </script>\n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div style=\"border-radius: 50%; background-color:burlywood; width: 150px; height: 150px;\n");
      out.write("                        position: absolute; top:0; right: 0;color:white;\">\n");
      out.write("                           ");
while(rs.next()){
                       
      out.write("\n");
      out.write("                       <a id=\"profile\"> ");
      out.print( rs.getString("name"));
      out.write(" </a>\n");
      out.write("                       \n");
      out.write("                       <div id=\"profull\">\n");
      out.write("                           <p><strong style=\"color:black\">Father Name: </strong>");
      out.print(rs.getString("faname"));
      out.write("</p>\n");
      out.write("                           <p><strong style=\"color:black\">Mother Name: </strong>");
      out.print(rs.getString("moname"));
      out.write("</p>\n");
      out.write("                           <p><strong style=\"color: black\">Reg. No: </strong>");
      out.print(rs.getString("reg_no"));
      out.write("</p>\n");
      out.write("                           <p><strong style=\"color: black\">Email: </strong>");
      out.print(rs.getString("email"));
      out.write("</p>\n");
      out.write("                           <a href=\"stuForgotPassword.jsp?em=\"+session.getAttribute(\"email\").toString()+\"\">Change Password</a><br><br>\n");
      out.write("                            <a href=\"stulogout_process.jsp\">Logout</a>\n");
      out.write("                       </div>\n");
      out.write("                       \n");
      out.write("                           ");
 }}
                           
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    </div>\n");
      out.write("                           \n");
      out.write("                  \n");
      out.write("    </body>\n");
      out.write("    </html>\n");
      out.write("<script>\n");
      out.write("                         \n");
      out.write("                         pro=document.querySelector('#profile');\n");
      out.write("                         profull=document.querySelector('#profull');\n");
      out.write("                         var i=0;\n");
      out.write("                         pro.addEventListener('click', function(){\n");
      out.write("                             i=i+1;\n");
      out.write("                             if(i%2==1)\n");
      out.write("                             {\n");
      out.write("                                 profull.style=\"display: block;\"\n");
      out.write("                                 pro.style=\"color: yellow;\"\n");
      out.write("                             }\n");
      out.write("                             else\n");
      out.write("                             {\n");
      out.write("                                 profull.style=\"display: hidden;\"\n");
      out.write("                                 pro.style=\"color: white;\"\n");
      out.write("                             }\n");
      out.write("                             console.log(i)\n");
      out.write("                             \n");
      out.write("                         });\n");
      out.write("                         \n");
      out.write("                     </script>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

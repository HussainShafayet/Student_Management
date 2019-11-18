package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminIndex_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <link href=\"../bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("         <title>Admin Index</title>\n");
      out.write("         \n");
      out.write("         <style>\n");
      out.write("             \n");
      out.write("         body{\n");
      out.write("                 color: white;\n");
      out.write("                 background-attachment:fixed;\n");
      out.write("                 background-size:cover; \n");
      out.write("                 font-family:arial;\n");
      out.write("             }\n");
      out.write("             h1{\n");
      out.write("                 color:darkcyan;\n");
      out.write("                 font-size: 450%;\n");
      out.write("             }\n");
      out.write("             ul{\n");
      out.write("            \n");
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
      out.write("                 display:none;\n");
      out.write("             }\n");
      out.write("             ul li:hover ul li{\n");
      out.write("                 display:initial;\n");
      out.write("                 margin-bottom: 2px;\n");
      out.write("                 \n");
      out.write("             }\n");
      out.write("             \n");
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"admin.jpg\">\n");
      out.write("        <div>\n");
      out.write("            <ul>\n");
      out.write("               <li><span class=\"home\"><a href = \"adminIndex.jsp\"> Home</a></span></li>\n");
      out.write("               <li><span class=\"info\"><a href = \"\">Student Information</a></span>\n");
      out.write("               <ul>\n");
      out.write("                   <li><span class=\"cse\"><a href = \"cse_stuInfo.jsp\">CSE</a></span></li>\n");
      out.write("                   <li><span class=\"eee\"><a href = \"eee_stuInfo.jsp\">EEE</a></span></li>\n");
      out.write("                   <li><span class=\"ce\"><a href = \"ce_stuInfo.jsp\">CE</a></span></li>\n");
      out.write("               </ul>\n");
      out.write("               </li>\n");
      out.write("               <li><span class=\"notification\"><a href = \"notification.jsp\">Notification</a></span></li>\n");
      out.write("               <li><span class=\"logout\"><a href = \"index.jsp\">Logout</a></span>\n");
      out.write("            </ul> \n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

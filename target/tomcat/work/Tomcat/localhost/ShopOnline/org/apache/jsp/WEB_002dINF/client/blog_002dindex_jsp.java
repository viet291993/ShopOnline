/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-04-25 19:10:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class blog_002dindex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/tags/templateClient.tag", Long.valueOf(1556195684600L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_t_005ftemplateClient_005f0(_jspx_page_context))
        return;
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_t_005ftemplateClient_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  t:templateClient
    org.apache.jsp.tag.webtemplateClient_tag _jspx_th_t_005ftemplateClient_005f0 = (new org.apache.jsp.tag.webtemplateClient_tag());
    _jsp_instancemanager.newInstance(_jspx_th_t_005ftemplateClient_005f0);
    _jspx_th_t_005ftemplateClient_005f0.setJspContext(_jspx_page_context);
    javax.servlet.jsp.tagext.JspFragment _jspx_temp0 = new Helper( 0, _jspx_page_context, _jspx_th_t_005ftemplateClient_005f0, null);
    // /WEB-INF/client/blog-index.jsp(7,0) null
    _jspx_th_t_005ftemplateClient_005f0.setContent(_jspx_temp0);
    _jspx_th_t_005ftemplateClient_005f0.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_t_005ftemplateClient_005f0);
    return false;
  }

  private class Helper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public Helper( int discriminator, javax.servlet.jsp.JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( javax.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("<!-- Title Page -->\r\n");
      out.write("\t<section class=\"bg-title-page p-t-50 p-b-40 flex-col-c-m\" style=\"background-image: url(images/slide/slide-4.jpg);\">\r\n");
      out.write("\t\t<h2 class=\"l-text2 t-center\">\r\n");
      out.write("\t\t\tShop\r\n");
      out.write("\t\t</h2>\r\n");
      out.write("\t\t<p class=\"m-text13 t-center\">\r\n");
      out.write("\t\t\tCá cảnh Hạ Long\r\n");
      out.write("\t\t</p>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- Cart -->\r\n");
      out.write("\t<section class=\"cart bgwhite p-t-70 p-b-100\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<!-- Cart item -->\r\n");
      out.write("\t\t\t<div class=\"container-table-cart pos-relative\">\r\n");
      out.write("\t\t\t\t<div class=\"wrap-table-shopping-cart bgwhite\">\r\n");
      out.write("\t\t\t\t\t<table class=\"table-shopping-cart\">\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"table-head\">\r\n");
      out.write("\t\t\t\t\t\t\t<th class=\"column-1\"></th>\r\n");
      out.write("\t\t\t\t\t\t\t<th class=\"column-2\">Product</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th class=\"column-3\">Price</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th class=\"column-4 p-l-70\">Quantity</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th class=\"column-5\">Total</th>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"table-row\">\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"cart-img-product b-rad-4 o-f-hidden\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/item-10.jpg\" alt=\"IMG-PRODUCT\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-2\">Men Tshirt</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-3\">$36.00</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"flex-w bo5 of-hidden w-size17\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button class=\"btn-num-product-down color1 flex-c-m size7 bg8 eff2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"fs-12 fa fa-minus\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"size8 m-text18 t-center num-product\" type=\"number\" name=\"num-product1\" value=\"1\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button class=\"btn-num-product-up color1 flex-c-m size7 bg8 eff2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"fs-12 fa fa-plus\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-5\">$36.00</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr class=\"table-row\">\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"cart-img-product b-rad-4 o-f-hidden\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/item-05.jpg\" alt=\"IMG-PRODUCT\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-2\">Mug Adventure</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-3\">$16.00</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"flex-w bo5 of-hidden w-size17\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button class=\"btn-num-product-down color1 flex-c-m size7 bg8 eff2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"fs-12 fa fa-minus\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"size8 m-text18 t-center num-product\" type=\"number\" name=\"num-product2\" value=\"1\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button class=\"btn-num-product-up color1 flex-c-m size7 bg8 eff2\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<i class=\"fs-12 fa fa-plus\" aria-hidden=\"true\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"column-5\">$16.00</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm\">\r\n");
      out.write("\t\t\t\t<h5 class=\"m-text20 p-b-24\">\r\n");
      out.write("\t\t\t\t\tCart Totals\r\n");
      out.write("\t\t\t\t</h5>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--  -->\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-sb-m p-b-12\">\r\n");
      out.write("\t\t\t\t\t<span class=\"s-text18 w-size19 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\tSubtotal:\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<span class=\"m-text21 w-size20 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\t$39.00\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--  -->\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-sb bo10 p-t-15 p-b-20\">\r\n");
      out.write("\t\t\t\t\t<span class=\"s-text18 w-size19 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\tShipping:\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"w-size20 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\t<p class=\"s-text8 p-b-23\">\r\n");
      out.write("\t\t\t\t\t\t\tThere are no shipping methods available. Please double check your address, or contact us if you need any help.\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<span class=\"s-text19\">\r\n");
      out.write("\t\t\t\t\t\t\tCalculate Shipping\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12\">\r\n");
      out.write("\t\t\t\t\t\t\t<select class=\"selection-2\" name=\"country\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Select a country...</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>US</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>UK</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Japan</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"size13 bo4 m-b-12\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"sizefull s-text7 p-l-15 p-r-15\" type=\"text\" name=\"state\" placeholder=\"State /  country\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"size13 bo4 m-b-22\">\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"sizefull s-text7 p-l-15 p-r-15\" type=\"text\" name=\"postcode\" placeholder=\"Postcode / Zip\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"size14 trans-0-4 m-b-10\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- Button -->\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\tUpdate Totals\r\n");
      out.write("\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--  -->\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-sb-m p-t-26 p-b-30\">\r\n");
      out.write("\t\t\t\t\t<span class=\"m-text22 w-size19 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\tTotal:\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<span class=\"m-text21 w-size20 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\t$39.00\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"size15 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t<!-- Button -->\r\n");
      out.write("\t\t\t\t\t<button class=\"flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t\tProceed to Checkout\r\n");
      out.write("\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm\">\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-m w-full-sm\">\r\n");
      out.write("\t\t\t\t\t<div class=\"size11 bo4 m-r-10\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"sizefull s-text7 p-l-22 p-r-22\" type=\"text\" name=\"coupon-code\" placeholder=\"Coupon Code\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"size12 trans-0-4 m-t-10 m-b-10 m-r-10\">\r\n");
      out.write("\t\t\t\t\t\t<!-- Button -->\r\n");
      out.write("\t\t\t\t\t\t<button class=\"flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t\t\tApply coupon\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"size10 trans-0-4 m-t-10 m-b-10\">\r\n");
      out.write("\t\t\t\t\t<!-- Button -->\r\n");
      out.write("\t\t\t\t\t<button class=\"flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t\tUpdate Cart\r\n");
      out.write("\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Total -->\r\n");
      out.write("\t\t\t<div class=\"bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm\">\r\n");
      out.write("\t\t\t\t<h5 class=\"m-text20 p-b-24\">\r\n");
      out.write("\t\t\t\t\tCart Totals\r\n");
      out.write("\t\t\t\t</h5>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--  -->\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-sb-m p-b-12\">\r\n");
      out.write("\t\t\t\t\t<span class=\"s-text18 w-size19 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\tSubtotal:\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<span class=\"m-text21 w-size20 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\t$39.00\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--  -->\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-sb bo10 p-t-15 p-b-20\">\r\n");
      out.write("\t\t\t\t\t<span class=\"s-text18 w-size19 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\tShipping:\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"w-size20 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\t<p class=\"s-text8 p-b-23\">\r\n");
      out.write("\t\t\t\t\t\t\tThere are no shipping methods available. Please double check your address, or contact us if you need any help.\r\n");
      out.write("\t\t\t\t\t\t</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<span class=\"s-text19\">\r\n");
      out.write("\t\t\t\t\t\t\tCalculate Shipping\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-size21 m-t-8 m-b-12\">\r\n");
      out.write("\t\t\t\t\t\t\t<select class=\"selection-2\" name=\"country\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Select a country...</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>US</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>UK</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option>Japan</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"size13 bo4 m-b-12\">\r\n");
      out.write("\t\t\t\t\t\t<input class=\"sizefull s-text7 p-l-15 p-r-15\" type=\"text\" name=\"state\" placeholder=\"State /  country\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"size13 bo4 m-b-22\">\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"sizefull s-text7 p-l-15 p-r-15\" type=\"text\" name=\"postcode\" placeholder=\"Postcode / Zip\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"size14 trans-0-4 m-b-10\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- Button -->\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\tUpdate Totals\r\n");
      out.write("\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--  -->\r\n");
      out.write("\t\t\t\t<div class=\"flex-w flex-sb-m p-t-26 p-b-30\">\r\n");
      out.write("\t\t\t\t\t<span class=\"m-text22 w-size19 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\tTotal:\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<span class=\"m-text21 w-size20 w-full-sm\">\r\n");
      out.write("\t\t\t\t\t\t$39.00\r\n");
      out.write("\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"size15 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t<!-- Button -->\r\n");
      out.write("\t\t\t\t\t<button class=\"flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4\">\r\n");
      out.write("\t\t\t\t\t\tProceed to Checkout\r\n");
      out.write("\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>");
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws javax.servlet.jsp.JspException
    {
      javax.servlet.jsp.JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        Object _jspx_saved_JspContext = this.jspContext.getELContext().getContext(javax.servlet.jsp.JspContext.class);
        this.jspContext.getELContext().putContext(javax.servlet.jsp.JspContext.class,this.jspContext);
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
        }
        jspContext.getELContext().putContext(javax.servlet.jsp.JspContext.class,_jspx_saved_JspContext);
      }
      catch( java.lang.Throwable e ) {
        if (e instanceof javax.servlet.jsp.SkipPageException)
            throw (javax.servlet.jsp.SkipPageException) e;
        throw new javax.servlet.jsp.JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
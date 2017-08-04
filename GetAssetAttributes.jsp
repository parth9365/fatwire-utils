
<asset:load name="thisAsset" type='<%=ics.GetVar("c") %>' objectid='<%=ics.GetVar("cid")%>' site='<%=ics.GetVar("site")%>' deptype="exists" />
<asset:scatter name="thisAsset" prefix="thisAsset"/> --%>
<%
  for (Enumeration e = ics.GetVars(); e.hasMoreElements();) {
    String varName = (String)e.nextElement();
    if (varName.startsWith("thisAsset:")){
        out.println("<br/>VarName: " + varName + " = " + ics.GetVar(varName));
    }
  }
%>
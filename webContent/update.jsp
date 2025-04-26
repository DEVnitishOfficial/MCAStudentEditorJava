<%@ include file="WEB-INF/dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    String enrollment_no = request.getParameter("enrollment_no");
    String address = request.getParameter("address");
    String mobile_no = request.getParameter("mobile_no");
    String email = request.getParameter("email");

    String updateQuery = "UPDATE students SET address=?, mobile_no=?, email=? WHERE enrollment_no=?";
    PreparedStatement pst = conn.prepareStatement(updateQuery);
    pst.setString(1, address);
    pst.setString(2, mobile_no);
    pst.setString(3, email);
    pst.setString(4, enrollment_no);

    int rows = pst.executeUpdate();
%>

<%
    if (rows > 0) {
%>
    <div class="message">Details updated successfully!</div>
<%
    } else {
%>
    <div class="message error">Failed to update the details. Please try again.</div>
<%
    }
%>

</body>
</html>

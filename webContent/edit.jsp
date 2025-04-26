<%@ include file="WEB-INF/dbconnection.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    String enroll = request.getParameter("enroll");
    String mobile = request.getParameter("mobile");
    PreparedStatement pst = null;
    ResultSet rs = null;

    if ((enroll != null && !enroll.isEmpty()) || (mobile != null && !mobile.isEmpty())) {
        String query = "SELECT * FROM students WHERE enrollment_no=? OR mobile_no=?";
        pst = conn.prepareStatement(query);
        pst.setString(1, enroll);
        pst.setString(2, mobile);
        rs = pst.executeQuery();

        if (rs.next()) {
%>
    <div class="container">
        <h2>Edit Student Details</h2>
        <form action="update.jsp" method="post">
            <input type="hidden" name="enrollment_no" value="<%= rs.getString("enrollment_no") %>">

            <label>Name:</label>
            <input type="text" value="<%= rs.getString("name") %>" readonly><br>

            <label>Address:</label>
            <input type="text" name="address" value="<%= rs.getString("address") %>"><br>

            <label>Mobile No:</label>
            <input type="text" name="mobile_no" value="<%= rs.getString("mobile_no") %>"><br>

            <label>Email:</label>
            <input type="text" name="email" value="<%= rs.getString("email") %>"><br>

            <input type="submit" value="Update">
        </form>
    </div>
<%
        } else {
%>
    <div class="message error">Student not found.</div>
<%
        }
    } else {
%>
    <div class="message error">Please enter enrollment number or mobile number.</div>
<%
    }
%>
</body>
</html>

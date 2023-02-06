<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
<form action="joinProcess.jsp" method="post" align="center">
            <table style="border-collapse: collapse; border-color: rgb(0, 162, 255);" border="1" align="center" cellpadding="1">
                <tr>
                    <td colspan="2" align="center" style="background-color: rgb(85, 164, 255);"><b>회원 기본 정보</b></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>아이디:</b></td>
                    <td><input type="text" name="id" size="20" minlength="4" maxlength="12"> 4~12자의 영문 대소문자와 숫자로만 입력</td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>비밀번호:</b></td>
                    <td><input type="password" name="pw" size="20" maxlength="12"> 4~12자의 영문 대소문자와 숫자로만 입력</td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>메일주소:</b></td>
                    <td><input type="text" name="email" size="25"> 예) id@domain.com</td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>이름:</b></td>
                    <td><input type="text" name="name" size="25"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="background-color: rgb(85, 164, 255);"><b>개인 신상 정보</b></td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>주민등록번호:</b></td>
                    <td><input type="text" name="idnum" size="25" maxlength="13"> 예) 1234561234567</td>
                </tr>
                <tr>
                    <td align="center" style="background-color: rgb(200, 200, 200);"><b>생일:</b></td>
                    <td><input type="text" name="year" size="10" maxlength="4">년
                        <select name="month">
                        <% for(int i=1; i<=12; i++){ %>
                        <option value="<%=i %>"><%=i %></option>
                        <%} %>
                    </select>월
                    <select name="day">
                        <% for(int i=1; i<=31; i++){ %>
                       <option value="<%=i %>"><%=i %></option>
                        <%} %>
                    </select>일

                </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="회원 가입">
            <input type="reset" value="다시 입력" >
        </form>
</body>
</html>
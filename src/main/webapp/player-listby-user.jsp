<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Player List</title>
</head>
<body>
<form method = "post" action = "listNavigationServlet">
<table>
<c:forEach items="${requestScope.allLists}" var="currentlist">
<tr>
<td><input type="radio" name="id" value="${currentlist.id}"></td>
<td><h2>${currentlist.listName}</h2></td></tr>
<tr><td colspan="3">Death Date: ${currentlist.deathDate}</td></tr>
<tr><td colspan="3">Game:
${currentlist.game.gameName}</td></tr>
<c:forEach var = "listVal" items = "${currentlist.listOfPlayers}">
<tr><td></td><td colspan="3">
${listVal.playerName}, ${listVal.gender}
</td>
</tr>
</c:forEach>
</c:forEach>
</table>
<input type = "submit" value = "edit" name="doThisToList">
<input type = "submit" value = "delete" name="doThisToList">
<input type="submit" value = "add" name = "doThisToList">
</form>
<a href="addPlayersForListServlet">Create a new List</a>
<a href="index.html">Insert a new player</a>
</body>
</html>
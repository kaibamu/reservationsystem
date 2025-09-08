<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>美容室予約システム</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<h1>来店予約入力</h1>
		<form action="${pageContext.request.contextPath}/reservation"
			method="post">
			<input type="hidden" name="action" value="add">
			<p>
				<label for="name">名前:</label> <input type="text" id="name"
					name="name" value="<c:out value="${param.name}"/>" required>
				<span class="error-message"><c:out value="${errorMessage}" /></span>
			</p>
			<p>
				<label for="tek">電話番号:</label> <input type="text" id="tel"
					name="tel" value="<c:out value="${param.tel}"/>" required>
				<span class="error-message"><c:out value="${errorMessage}" /></span>
			</p>
			<p>
				<label for="menu">メニュー:</label> <select id="menu" name="menu"
					required>
					<option value="" <c:if test="${empty param.menu}">selected</c:if>>--
						選択してください --</option>
					<option value="カット"
						<c:if test="${param.menu == 'カット'}">selected</c:if>>カット</option>
					<option value="カラー"
						<c:if test="${param.menu == 'カラー'}">selected</c:if>>カラー</option>
					<option value="パーマ"
						<c:if test="${param.menu == 'パーマ'}">selected</c:if>>パーマ</option>
					<option value="カット＋カラー"
						<c:if test="${param.menu == 'カット＋カラー'}">selected</c:if>>カット＋カラー</option>
					<option value="カット＋パーマ"
						<c:if test="${param.menu == 'カット＋パーマ'}">selected</c:if>>カット＋パーマ</option>
					<option value="カット＋カラー＋パーマ"
						<c:if test="${param.menu == 'カット＋カラー＋パーマ'}">selected</c:if>>カット＋カラー＋パーマ</option>
					<option value="カット＋カラー＋トリートメント"
						<c:if test="${param.menu == 'カット＋カラー＋トリートメント'}">selected</c:if>>カット＋カラー＋トリートメント</option>
					<option value="カット＋パーマ＋トリートメント"
						<c:if test="${param.menu == 'カット＋パーマ＋トリートメント'}">selected</c:if>>カット＋パーマ＋トリートメント</option>
					<option value="カット＋カラー＋パーマ＋トリートメント"
						<c:if test="${param.menu == 'カット＋カラー＋パーマ＋トリートメント'}">selected</c:if>>カット＋カラー＋パーマ＋トリートメント</option>
				</select>
			</p>
			<p>
				<label for="reservation_time">希望日時:</label> <input
					type="datetime-local" id="reservation_time" name="reservation_time"
					value="<c:out value="${param.reservation_time}"/>" required>
				<span class="error-message"><c:out value="${errorMessage}" /></span>
			</p>
			<div class="button-group">
				<input type="submit" value="予約する">
			</div>
		</form>
		<hr>
		<h2>CSV インポート</h2>
		<form action="reservation" method="post" enctype="multipart/form-data">
			<input type="hidden" name="action" value="import_csv">
			<p>
				<label for="csvFile">CSV ファイルを選択:</label> <input type="file"
					id="csvFile" name="csvFile" accept=".csv" required>
			</p>
			<div class="button-group">
				<input type="submit" value="インポート">
			</div>
		</form>
		<p class="error-message">
			<c:out value="${errorMessage}" />
		</p>
		<p class="success-message">
			<c:out value="${successMessage}" />
		</p>
		<div class="button-group">
			<a href="${pageContext.request.contextPath}/reservation?action=list"
				class="button secondary">予約一覧を見る</a>
		</div>
	</div>
</body>
</html>
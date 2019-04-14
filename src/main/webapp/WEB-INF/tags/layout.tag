<%@tag description="Default Page Layout Tag" pageEncoding="UTF-8"%>
<%@attribute name="title" type="java.lang.String"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${title}</title>
</head>
<body>
    <jsp:doBody/>
</body>
</html>

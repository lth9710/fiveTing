<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.board.BoardDTO"%>
<%@page import="com.board.BoardDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
	String checkIp = request.getRemoteAddr();
	
	
	String pageNum = request.getParameter("pageNum");
	int num = Integer.parseInt(request.getParameter("num"));
	
	String searchKey = request.getParameter("searchKey");
	String searchValue = request.getParameter("searchValue");
	
	
	if(searchKey!=null){

		if(request.getMethod().equalsIgnoreCase("GET")){
			searchValue = URLDecoder.decode(searchValue,"UTF-8");
		}
		
		
	}else{
		searchKey="subject";
		searchValue="";
	}
	
	
	
	Connection conn = DBConn.getConnection();
	BoardDAO dao = new BoardDAO(conn);
	
	BoardDTO dto = dao.getReadData(num);
	
	String param = "";
	if(searchValue!=null||!searchValue.equals("")){
		
		param = "&searchKey=" + searchKey;
		param+= "&searchValue=" + searchValue;
			URLEncoder.encode(searchValue, "UTF-8");
			
		
	}
	
	
	
	
	DBConn.close();
	
	if(dto==null){
		response.sendRedirect("list.jsp");
	}
	
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게 시 판</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<link rel="stylesheet" href="<%=cp%>/board/css/style.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp%>/board/css/created.css" type="text/css"/>

<script type="text/javascript" src="<%=cp%>/board/js/util.js"></script>
<script type="text/javascript">

    function sendIt() {
       
		f = document.myForm;

		
		
		
		
    	str = f.subject.value;
    	str = str.trim();
        if(!str) {
            alert("\n제목을 입력하세요. ");
            f.subject.focus();
            return;
        }
    	f.subject.value = str;

	    str = f.name.value;
    	str = str.trim();
        if(!str) {
            alert("\n이름을 입력하세요. ");
            f.name.focus();
            return;
        }
		/*
        if(!isValidKorean(str))  {
            alert("\n이름을 정확히 입력하세요");
            f.name.focus();
            return;
        }
		*/
	    f.name.value = str;

        if(f.email.value) {
	    	if(!isValidEmail(f.email.value)) {
                alert("\n정상적인 E-Mail을 입력하세요. ");
                f.email.focus();
                return;
	    	}
        }

    	str = f.content.value;
	    str = str.trim();
        if(!str) {
            alert("내용을 입력하세요. ");
            f.content.focus();
            return;
        }
    	f.content.value = str;

    	str = f.pwd.value;
	    str = str.trim();
        if(!str) {
            alert("\n패스워드를 입력하세요. ");
            f.pwd.focus();
            return;
        }
    	
        f.pwd.value = str;
    	
    	
		if('<%=dto.getPwd()%>'==f.pwd.value){
    		
    		
    	}else{
    		
    		alert("비밀번호가 다릅니다");
    		f.pwd.focus();
    		return;
    	}
    	
    	
    	
    	
    	
        f.action = "<%=cp%>/board/updated_ok.jsp?";
        f.submit();
    }

    
  
    
    
    
    
    
</script>

</head>

<body>

<div id="bbs">
	<div id="bbs_title">
	게 시 판(JSP)
	</div>

	<form name="myForm" method="post" action="">
	<div id="bbsCreated">
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd>
				      <input type="text" name="subject" value="<%=dto.getSubject() %>"	size="74" maxlength="100"  class="boxTF" />
				</dd>
			</dl>
		</div>

		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>작성자</dt>
				<dd>
				      <input type="text" name="name" value="<%=dto.getName() %>"	size="35" maxlength="20" class="boxTF" />
				</dd>	
			</dl>
		</div>

		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>E-Mail</dt>
				<dd>
				      <input type="text" name="email" value="<%=dto.getEmail()==null?"":dto.getEmail() %>"	size="35" maxlength="50" class="boxTF" />
				</dd>
			</dl>
		</div>

		<div id="bbsCreated_content">
			<dl>
				<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
				      <textarea name="content" cols="63" rows="12" class="boxTA"><%=dto.getContent() %></textarea>
				</dd>
			</dl>
		</div>

		<div class="bbsCreated_noLine">
			<dl>
				<dt>패스워드</dt>
				<dd>
				      <input type="password" name="pwd"  size="35" maxlength="7" class="boxTF" />&nbsp;(게시물 수정 및 삭제시 필요 !!!)
				</dd>
			</dl>
		</div>
	</div>

	<div id="bbsCreated_footer">
	
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
		<input type="hidden" name="pageNum" value="<%=pageNum %>"/>
		<input type="hidden" name="searchKey" value="<%=searchKey%>"/>
		<input type="hidden" name="searchValue" value="<%=searchValue %>"/>




        <input type="button" value=" 수정하기 " class="btn2"
         onclick="sendIt();"/>
        <input type="button" value=" 수정취소 " class="btn2"
         onclick="javascript:location.href='<%=cp %>/board/list.jsp?pageNum=<%=pageNum%><%=param%>';"/>
	</div>

    </form>
</div>

</body>

</html>
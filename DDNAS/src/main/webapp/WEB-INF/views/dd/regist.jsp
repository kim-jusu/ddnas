<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:url value="/" var="url" />
<script type="text/javascript">
	var url='${url}';
</script>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DDNAS</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="${url}resources/jusu/adminLTE/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${url}resources/jusu/adminLTE/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${url}resources/jusu/adminLTE/dist/css/skins/_all-skins.min.css">
  <link href="${url}resources/jusu/css/sweetalert.css" rel="stylesheet" type="text/css" >
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <jsp:include page="/WEB-INF/views/commons/header.jsp" />
  <jsp:include page="/WEB-INF/views/commons/main-sidebar.jsp" />
    
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 660px">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        DD 등록
      </h1>
      <ol class="breadcrumb">
        <li><a href="${url}main/working"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">DD 관리</a></li>
        <li class="active">DD 등록</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">DD Register</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
 			<table width="100%">
 			<tr><td width="25%"></td>
 			<td width="50%">
 			<form method="post" role="form" id="regisForm" enctype="multipart/form-data" action="${url}dd/insert">
            
              <div class="box-body">
              <br>
                <div class="form-group">
                  <label >일련번호</label>
                  <input type="text" class="form-control" name="ddSerialNo" placeholder="Serial number">
                </div>
                <div class="form-group">
                  <label>등록인</label>
                  <input type="text" class="form-control" name="ddRegistrant" placeholder="Registrant">
                </div>
                
                <div class="form-group">
                  <label>비고</label>
                  <textarea class="form-control" name="ddNote" placeholder="Enter.." rows="5" cols="5"></textarea>
                </div>
                
                <div class="col-md-7" style="padding-left: 0px">
                  <label>이미지</label>
                  <input type="file" name="file" id="multipartFile">               
                </div>
                <div class="form-group" ><img
                     src="${url}resources/images/dd/default.jpg"
                     WIDTH="150" HEIGHT="150" id="imagePreview">
                     </div>
                
              <!-- /.box-body -->
			</div>
              <div class="box-footer">
                <button type="submit" class="btn btn-primary" id='ddSubmit'>Submit</button><br><br>          
              </div><br><br>
            
            </form> 
            </td><td width="25%"></td>
            </tr></table>      
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <jsp:include page="/WEB-INF/views/commons/footer.jsp" />
  

  <!-- Control Sidebar -->
  <jsp:include page="/WEB-INF/views/commons/control-sidebar.jsp" />
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="${url}resources/jusu/adminLTE/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${url}resources/jusu/adminLTE/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${url}resources/jusu/adminLTE/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${url}resources/jusu/adminLTE/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${url}resources/jusu/adminLTE/dist/js/demo.js"></script>
<script src="${url}resources/jusu/js/ddregist.js"></script>
<script src="${url}resources/jusu/js/sweetalert.min.js"></script>

</body>
</html>

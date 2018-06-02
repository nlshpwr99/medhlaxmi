<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MartNest | Dashboard</title>
  <%@include file="css.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  
  <%@include file="header.jsp" %>
  <!-- Left side column. contains the logo and sidebar -->
 <%@include file="rightmenubar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Category
        <!-- <small>Version 2.0</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Category</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

	<div class="row">
        <div class="col-xs-12">
     		 <div class="box">
            <div class="box-header">
              <h3 class="box-title">Category</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Category Name</th>
                  <th>Description</th>
                  <th>Action(s)</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>Abcd</td>
                  <td>Internet
                    Explorer 4.0
                  </td>
                  <td>
	                  <a href="#" title="Edit"><i class="fa fa-fw fa-edit"></i></a> | 
	                  <a href="#" title="Delete"><i class="fa fa-fw fa-times-circle"></i></a> | 
	                  <a href="sub_category.jsp" title="Sub-Category" ><i class="fa fa-fw fa-server"></i>Sub Category</a>
                  </td>
                  
                </tr>
                
                <tr>
                  <td>Zaha</td>
                  <td>Internet
                    Explorer 5.0
                  </td>
                  <td>
                  	<a href="#" title="Edit"><i class="fa fa-fw fa-edit"></i></a> | 
	                  <a href="#" title="Delete"><i class="fa fa-fw fa-times-circle"></i></a> |
	                   <a href="sub_category.jsp" title="Sub-Category"><i class="fa fa-fw fa-server"></i>Sub Category</a>
                  </td>
                </tr>
               </tbody>
               <!--  <tfoot>
                <tr>
                  <th>Category</th>
                  <th>Description</th>
                  <th>Action(s)</th>
                </tr>
                </tfoot> -->
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        
      </div>
     </div>
     </section>
    <!-- /.content -->
  
  </div>
  <!-- /.content-wrapper -->

  <%@include file="footer.jsp" %>
 
</div>
<!-- ./wrapper -->


<%@include file="javascripts.jsp" %>

</body>

</html>
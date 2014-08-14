<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp" %>
<body class="no-skin">
	<%@include file="/WEB-INF/jsp/common/navbar.jsp" %>
   	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>
		<%@include file="/WEB-INF/jsp/common/sidebar.jsp" %>
		<div class="main-content">
			<%@include file="/WEB-INF/jsp/common/breadcrumbs.jsp" %>
			<div class="page-content">
				<div class="page-header">
					<h1>
						jQuery UI
						<small>
							<i class="ace-icon fa fa-angle-double-right"></i>
							Restyling jQuery UI Widgets and Elements
						</small>
					</h1>
				</div><!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="row">
							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-calendar-o smaller-90"></i>
									Datepicker
								</h3>

								<div class="row">
									<div class="col-xs-6">
										<div class="input-group input-group-sm">
											<input type="text" id="datepicker" class="form-control" />
											<span class="input-group-addon">
												<i class="ace-icon fa fa-calendar"></i>
											</span>
										</div>
									</div>
								</div>
							</div><!-- ./span -->
						</div><!-- ./row -->

						<div class="space-12"></div>

						<div class="row">
							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-terminal smaller-90"></i>
									Autocomplete
								</h3>

								<div class="row">
									<div class="col-sm-8 col-md-7">
										<input id="tags" type="text" class="form-control" />
										<div class="space-4"></div>

										<input id="search" type="text" class="form-control" placeholder="Type 'a' or 'h'" />
									</div>
								</div>

							</div><!-- ./col -->
						</div>
						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.page-content -->
		</div><!-- /.main-content -->
		
		<%@include file="/WEB-INF/jsp/common/copyright.jsp" %>
		
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
</body>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
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
			<!-- #section:basics/content.breadcrumbs -->
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
				</script>

				<ul class="breadcrumb">
					<li>
						<i class="ace-icon fa fa-home home-icon"></i>
						<a href="#">Home</a>
					</li>

					<li>
						<a href="#">UI &amp; Elements</a>
					</li>
					<li class="active">jQuery UI</li>
				</ul><!-- /.breadcrumb -->

				<!-- #section:basics/content.searchbox -->
				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon">
							<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
							<i class="ace-icon fa fa-search nav-search-icon"></i>
						</span>
					</form>
				</div><!-- /.nav-search -->

				<!-- /section:basics/content.searchbox -->
			</div>

			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">
				<!-- #section:settings.box -->
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="ace-icon fa fa-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box clearfix" id="ace-settings-box">
						<div class="pull-left width-50">
							<!-- #section:settings.skins -->
							<div class="ace-settings-item">
								<div class="pull-left">
									<select id="skin-colorpicker" class="hide">
										<option data-skin="no-skin" value="#438EB9">#438EB9</option>
										<option data-skin="skin-1" value="#222A2D">#222A2D</option>
										<option data-skin="skin-2" value="#C6487E">#C6487E</option>
										<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
									</select>
								</div>
								<span>&nbsp; Choose Skin</span>
							</div>

							<!-- /section:settings.skins -->

							<!-- #section:settings.navbar -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
								<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
							</div>

							<!-- /section:settings.navbar -->

							<!-- #section:settings.sidebar -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
								<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
							</div>

							<!-- /section:settings.sidebar -->

							<!-- #section:settings.breadcrumbs -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
								<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
							</div>

							<!-- /section:settings.breadcrumbs -->

							<!-- #section:settings.rtl -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
								<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
							</div>

							<!-- /section:settings.rtl -->

							<!-- #section:settings.container -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
								<label class="lbl" for="ace-settings-add-container">
									Inside
									<b>.container</b>
								</label>
							</div>

							<!-- /section:settings.container -->
						</div><!-- /.pull-left -->

						<div class="pull-left width-50">
							<!-- #section:basics/sidebar.options -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
								<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
								<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
								<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
							</div>

							<!-- /section:basics/sidebar.options -->
						</div><!-- /.pull-left -->
					</div><!-- /.ace-settings-box -->
				</div><!-- /.ace-settings-container -->

				<!-- /section:settings.box -->
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

							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-list-alt smaller-90"></i>
									Dialogs
								</h3>
								<a href="#" id="id-btn-dialog2" class="btn btn-info btn-sm">Confirm Dialog</a>
								<a href="#" id="id-btn-dialog1" class="btn btn-purple btn-sm">Modal Dialog</a>

								<div id="dialog-message" class="hide">
									<p>
										This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.
									</p>

									<div class="hr hr-12 hr-double"></div>

									<p>
										Currently using
										<b>36% of your storage space</b>.
									</p>
								</div><!-- #dialog-message -->

								<div id="dialog-confirm" class="hide">
									<div class="alert alert-info bigger-110">
										These items will be permanently deleted and cannot be recovered.
									</div>

									<div class="space-6"></div>

									<p class="bigger-110 bolder center grey">
										<i class="ace-icon fa fa-hand-o-right blue bigger-120"></i>
										Are you sure?
									</p>
								</div><!-- #dialog-confirm -->
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

								<div class="row">
									<div class="col-xs-12">
										<h3 class="header blue lighter smaller">
											<i class="ace-icon fa fa-info smaller-90"></i>
											Tooltip
										</h3>

										<div class="bigger-110">
											<p>
												<a class="grey" id="show-option" href="#" title="slide down on show">
													<i class="ace-icon fa fa-hand-o-right"></i>
													slide down on show
												</a>
											</p>

											<p>
												<a class="blue" id="hide-option" href="#" title="explode on hide">
													<i class="ace-icon fa fa-hand-o-right"></i>
													explode on hide
												</a>
											</p>

											<p>
												<a class="pink" id="open-event" href="#" title="move down on show">
													<i class="ace-icon fa fa-hand-o-right"></i>
													move down on show
												</a>
											</p>
										</div>
									</div>
								</div><!-- ./row -->
							</div><!-- ./col -->

							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-bars smaller-90"></i>
									Menu
								</h3>

								<ul id="menu">
									<li class="ui-state-disabled">
										<a href="#">Aberdeen</a>
									</li>

									<li>
										<a href="#">Ada</a>
									</li>

									<li>
										<a href="#">Adamsville</a>
									</li>

									<li>
										<a href="#">Addyston</a>
									</li>

									<li>
										<a href="#">Delphi</a>

										<ul>
											<li class="ui-state-disabled">
												<a href="#">Ada</a>
											</li>

											<li>
												<a href="#">Saarland</a>
											</li>

											<li>
												<a href="#">Salzburg</a>
											</li>
										</ul>
									</li>

									<li>
										<a href="#">Saarland</a>
									</li>

									<li>
										<a href="#">Salzburg</a>

										<ul>
											<li>
												<a href="#">Delphi</a>

												<ul>
													<li>
														<a href="#">Ada</a>
													</li>

													<li>
														<a href="#">Saarland</a>
													</li>

													<li>
														<a href="#">Salzburg</a>
													</li>
												</ul>
											</li>

											<li>
												<a href="#">Delphi</a>

												<ul>
													<li>
														<a href="#">Ada</a>
													</li>

													<li>
														<a href="#">Saarland</a>
													</li>

													<li>
														<a href="#">Salzburg</a>
													</li>
												</ul>
											</li>

											<li>
												<a href="#">Perch</a>
											</li>
										</ul>
									</li>

									<li class="ui-state-disabled">
										<a href="#">Amesville</a>
									</li>
								</ul>
							</div><!-- ./col -->
						</div><!-- ./row -->

						<div class="space-12"></div>

						<div class="row">
							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-retweet smaller-90"></i>
									Spinner
								</h3>

								<input id="spinner" name="value" type="text" />
							</div><!-- ./span -->

							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-arrows-h smaller-90"></i>
									Slider
								</h3>

								<p>
									Please see
									<a href="form-elements.html">form elements page</a>
									for more slider examples.
								</p>

								<div class="space-4"></div>

								<div id="slider"></div>
							</div><!-- ./col -->
						</div><!-- ./row -->

						<div class="space-12"></div>

						<div class="row">
							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-list smaller-90"></i>
									Sortable Accordion
								</h3>

								<div id="accordion" class="accordion-style2">
									<div class="group">
										<h3 class="accordion-header">Section 1</h3>

										<div>
											<p>
												Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
		ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
		amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
		odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
											</p>
										</div>
									</div>

									<div class="group">
										<h3 class="accordion-header">Section 2</h3>

										<div>
											<p>
												Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
		purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
		velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
		suscipit faucibus urna.
											</p>
										</div>
									</div>

									<div class="group">
										<h3 class="accordion-header">Section 3</h3>

										<div>
											<p>
												Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
		Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
		ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
		lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
											</p>

											<ul>
												<li>List item one</li>
												<li>List item two</li>
												<li>List item three</li>
											</ul>
										</div>
									</div>
								</div><!-- #accordion -->
							</div><!-- ./span -->

							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-folder-o smaller-90"></i>
									Tabs
								</h3>

								<div id="tabs">
									<ul>
										<li>
											<a href="#tabs-1">Nunc tincidunt</a>
										</li>

										<li>
											<a href="#tabs-2">Proin dolor</a>
										</li>

										<li>
											<a href="#tabs-3">Aenean lacinia</a>
										</li>
									</ul>

									<div id="tabs-1">
										<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Duis orci. Aliquam sodales tortor vitae ipsum. Ut et mauris vel pede varius sollicitudin.</p>
									</div>

									<div id="tabs-2">
										<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla..</p>
									</div>

									<div id="tabs-3">
										<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Praesent eu risus hendrerit ligula tempus pretium.</p>
									</div>
								</div>
							</div><!-- ./col -->
						</div><!-- ./row -->

						<div class="space-12"></div>

						<div class="row">
							<div class="col-sm-6">
								<h3 class="header blue lighter smaller">
									<i class="ace-icon fa fa-spinner"></i>
									Progressbar
								</h3>

								<div id="progressbar"></div>
							</div><!-- ./col -->
						</div><!-- ./row -->

						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.page-content -->
		</div><!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-120">
						<span class="blue bolder">Ace</span>
						Application &copy; 2013-2014
					</span>

					&nbsp; &nbsp;
					<span class="action-buttons">
						<a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
						</a>

						<a href="#">
							<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
						</a>

						<a href="#">
							<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
						</a>
					</span>
				</div>
				<!-- /section:basics/footer -->
			</div>
		</div>

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
</body>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
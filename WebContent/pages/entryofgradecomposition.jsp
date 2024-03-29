<!DOCTYPE html>
<%@page import="org.apache.commons.lang3.ObjectUtils.Null"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.jci.model.StateList"%>
<%@page import="java.util.List"%>
<html lang="en">
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<title>JCI | CMS</title>
<!-- GLOBAL MAINLY STYLES-->
<link href="./assets/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="./assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="./assets/vendors/themify-icons/css/themify-icons.css"
	rel="stylesheet" />
<!-- PLUGINS STYLES-->
<!-- THEME STYLES-->
<link href="assets/css/main.min.css" rel="stylesheet" />
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link
	href="<%=request.getContextPath()%>/resources/css/styleUserReg.css"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src='./resources/js/responsivevoice.js'></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/custom.js'></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/jquery.mCustomScrollbar.concat.min.js'></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/jquery.validate.min.js'></script>
<script src="./assets/vendors/jquery/dist/jquery.min.js"
	type="text/javascript"></script>
<script src="./assets/vendors/popper.js/dist/umd/popper.min.js"
	type="text/javascript"></script>
<script src="./assets/vendors/bootstrap/dist/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="./assets/vendors/metisMenu/dist/metisMenu.min.js"
	type="text/javascript"></script>
<script
	src="./assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<!-- PAGE LEVEL PLUGINS-->
<!-- CORE SCRIPTS-->
<script src="assets/js/app.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL STYLES-->
<style>
.field-icon {
	float: right;
	margin-left: -25px;
	margin-top: -25px;
	position: relative;
	z-index: 2;
}

.container {
	padding-top: 50px;
	margin: auto;
}

.required:after {
	content: " *";
	color: red;
}

.clrSys {
	background-color: #a9d08e !important;
}

.clrPro {
	background-color: #e2efda !important;
}
</style>
</head>

<body class="fixed-navbar">

<%-- <%
  List<Object[]> allJuteVariety =  (List<Object[]>)request.getAttribute("allJuteVariety");
  for(Object[] list : allJuteVariety){
          out.println(list[0]);
  }
%> --%>

	<div class="page-wrapper">
		<!-- START HEADER-->
		<%@ include file="header.jsp"%>
		<!-- END HEADER-->
		<!-- START SIDEBAR--s>
		<%@ include file="sidebar.jsp"%>
		<!-- END SIDEBAR-->
		<div class="content-wrapper">
			<!-- START PAGE CONTENT-->
			<div class="page-heading">
				<h1 class="page-title">Entry Of Grade Composition</h1>
			</div>
			<div class="page-content fade-in-up">
				<div class="row">
					<div class="col-md-11">
						<div class="ibox">
							<div class="ibox-head">
								<!-- <div class="ibox-title">Basic form</div> -->
								<span>${msg}</span>
							</div>
							<div class="ibox-body">
								<form action="saveGradeComp.obj" method="POST">
									<div class="row">

										<div class="col-sm-4 form-group">

											<%
											LocalDate obj = LocalDate.now();
											//LocalDate obj = LocalDate.of(2020, 1, 8)

											int currentyear = obj.getYear();
											int nextyear = 0;
											int month = obj.getMonthValue();

											if (month >= 7) {
												nextyear = currentyear + 1;
											} else {
												nextyear = currentyear;
												currentyear -= 1;
											}
											%>

											<label>Crop Year </label> <select name="crop_year"
												id="crop_year" class="form-control" required>
												<option disabled selected value>-Select-</option>
												<option value="<%=currentyear%>-<%=nextyear%>"><%=currentyear%>-<%=nextyear%></option>
											</select>
										</div>

										<div class="col-sm-4 form-group">
											<label>Available Qty</label> <input name="available_qty"
												id="available_qty" type="text" class="form-control" required />


										</div>

										<div class="col-sm-4 form-group">
											<label>Label Name</label> <input name="labelname"
												id="labelname" type="text" class="form-control" required />
										</div>
									</div>

									<div class="row table-responsive-sm">

										<!-- 		<label>Jute Composition</label> -->
										<table>
											<thead>
												<tr>

													<!-- 												<th>GR1</th> -->
													<!-- 												<th>GR2</th> -->
													<!-- 												<th>GR3</th> -->
													<!-- 												<th>GR4</th> -->
													<!-- 												<th>GR5</th> -->
													<!-- 												<th>GR6</th> -->
													<th scope="col">Variety</th>
													<th scope="col">System Composition</th>
													<th scope="col">Proposed Composition</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>TDN - 1 / WN - 1 / M -1 / B-1</td>
													<td><input class="clrSys form-control" value="241"
														disabled /></td>
													<td><input type="number" name=grade1 id="grade1"
														step="any" class="clrPro form-control" data-decimal="2"
														min="0" oninput="enforceNumberValidation(this)" /></td>

												</tr>
												<tr class="mt-5">
													<td>TDN - 2 / WN - 2 / M -2 / B-2</td>
													<td><input class="clrSys form-control" value="241"
														disabled /></td>
													<td><input type="number" name="grade2" id="grade2"
														step="any" class="clrPro form-control" data-decimal="2"
														min="0" oninput="enforceNumberValidation(this)" /></td>
												</tr>
												<tr>
													<td>TDN -3 / WN - 3 / M -3 / B-3</td>
													<td><input class="clrSys form-control" value="241"
														disabled /></td>
													<td><input type="number" name="grade3" id="grade3"
														step="any" class="clrPro form-control" data-decimal="2"
														min="0" oninput="enforceNumberValidation(this)" /></td>
												</tr>
												<tr>
													<td>TDN - 4 / WN - 4/ M -4 / B-4</td>
													<td><input class="clrSys form-control" value="241"
														disabled /></td>
													<td><input type="number" name="grade4" id="grade4"
														step="any" class="clrPro form-control" data-decimal="2"
														min="0" oninput="enforceNumberValidation(this)" /></td>
												</tr>
											</tbody>
										</table>
									</div>

									<div>
										<button class="btn btn-success" type="submit">Submit</button>
									</div>
								</form>
							</div>


							<!-- END PAGE CONTENT-->
							<%@ include file="footer.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="sidenav-backdrop backdrop"></div>

	<!-- END PAGA BACKDROPS-->
	<!-- CORE PLUGINS-->
	<script src="assets/css/chosen.jquery.js" type="text/javascript"></script>
	<script src="assets/css/docsupport/prism.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="assets/css/docsupport/init.js" type="text/javascript"
		charset="utf-8"></script>

	<script>
		$(".chosen-select").chosen({
			no_results_text : "Oops, nothing found!"
		})
	</script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<%@page import="com.ceph.model.JbaModel"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<title>JCI | CMS</title>
<!-- GLOBAL MAINLY STYLES-->
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="build/css/intlTelInput.css">
<link rel="stylesheet" href="build/css/demo.css">
<link
	href="<%=request.getContextPath()%>/resources/css/styleUserReg.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/responsivevoice.js'></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/custom.js'></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/jquery.mCustomScrollbar.concat.min.js'></script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/resources/js/jquery.validate.min.js'></script>
<link href="./assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="./assets/vendors/themify-icons/css/themify-icons.css"
	rel="stylesheet" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- PLUGINS STYLES-->
<!-- THEME STYLES-->
<link href="assets/css/main.min.css" rel="stylesheet" />
<!-- PAGE LEVEL STYLES-->
</head>

<body class="fixed-navbar">
	<div class="page-wrapper">
		<!-- START HEADER-->
		<%@ include file="header.jsp"%>
		<!-- END HEADER-->
		<!-- START SIDEBAR-->
		<%@ include file="sidebar.jsp"%>
		<!-- END SIDEBAR-->
		<div class="content-wrapper">
			<!-- START PAGE CONTENT-->
			<div class="page-heading">
				<h1 class="page-title">Edit JBA</h1>
			</div>
			<div class="page-content fade-in-up">
				<div class="row">
					<div class="col-md-11">
						<div class="ibox">
							<div class="ibox-head">
								<!-- <div class="ibox-title">Basic form</div> -->
								<span>${msg}</span>
							</div>
							<% 
							JbaModel jbapri = (JbaModel) request.getAttribute("editJBAList");
							%>
							<div class="ibox-body">
					<form action="saveJBAList.obj" method="POST">
									<div class="row">
										<div class="col-sm-4 form-group">
											<label>Date	</label> 
											<input class=" form-control" type="hidden" name="id"
																value="<%=jbapri.getId()%>" readonly>
																<input class="form-control"
																	type="date" name="datejba"
																	value="<%=jbapri.getJbaDate()%>" id="datejba"
																	placeholder="JBA Date" readonly>
																	</div>		
																	
																	<div class="col-sm-4 form-group ">
																<label class="required">Jute Variety</label> 
																<input class="form-control" type="text" value = "<%=jbapri.getJutevariety()%>"
																		name="jutevariety"></textarea>
																</div>
																							
                                                         <div class="col-sm-4 form-group">
									<label class="required">Crop year</label> <input class="form-control"
										type="text" name="cropyr" placeholder="CROP YEAR" value="<%=jbapri.getCropyr()%>"  >
								</div>
								
								                <div class="col-sm-4 form-group">
									<label class="required">Area Code</label> <input class="form-control"
										type="text" name="areacode" placeholder="area  code" value="<%=jbapri.getAreaCode()%>"  >
								</div>
								
														
								<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 1	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp1()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>					
															
															
								<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 2	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp2()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
									<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 3	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp3()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
									<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 4	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp4()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
									<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 5	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp5()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
									<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 6	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp6()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
									
										<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 7	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp7()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
										<div class="col-sm-4 form-group ">
							<label class="required">Grade Wise Price 8	</label> <input class="form-control" type="text" value = "<%=jbapri.getGradewisepp8()%>"
								id="complete-address" name="gradewisepp"></textarea>
									</div>
									
									
									
																
																
						<div class="row">
										<div class="col-sm-4 form-group">
											<button class="btn btn-primary" type="submit">Submit</button>
											<button class="btn btn-primary" type="reset">Cancel</button>
											
										</div>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT-->
		<%@ include file="footer.jsp"%>
	</div>
	</div>

	<div class="sidenav-backdrop backdrop"></div>
	<script>
		$(document).ready(function() {
			$('#emailTosend').keyup(function(e) {
				if (e.keyCode == 8)
					//alert('backspace trapped')
			})
		});
	</script>
	<script src="build/js/intlTelInput.js"></script>
	<script>
		$('#emailTosend').keyup(function() {
			var str = this.value.replace(/(\w)[\s,]+(\w?)/g, '$1, $2');
			if (str != this.value)
				this.value = str;
		});

		$('#emailTosend').keyup(function() {
			var val = $("#emailTosend").val();
			let text = val;
			let result = text.indexOf(" ");
			if (result != -1) {
				alert(result);
			}
			/* var str = this.value.replace(/(\w)[\s,]+(\w?)/g, '$1, $2');
			 if (str!=this.value) this.value = str; */
		});
	</script>

	<script>
		function myFunction() {
			//alert("aaaa");
			let mobile = document.getElementById("F_MOBILE").value;
			let pattern = /[0-9]{10}$/g;
			let result = F_MOBILE.match(pattern);
			if (result == null)
				alert("Please enter valid number")
		}

		$("#mobile").keyup(function() {
			var mobileNo = ($(this).val());
			var mobLength = mobileNo.toString().length;
			if (mobLength == 10) {
				$.ajax({
					type : "GET",
					url : "validateMobile.obj",
					data : {
						"mobileNo" : mobileNo
					},
					success : function(result) {
						/* var data= jQuery.parseJSON(result);
						 var html = "<option disabled selected value>-Select-</option>";
						  for (var i = 0; i< data.length; i++){
						 html += "<option value=" +data[i].split("-")[0]+ ">"+data[i].split("-")[1]+"</option>" */
					}
				//$("#centerordpc").html(html);
				//}			
				});

			} else {

			}
		});
</script>



	<!-- END PAGA BACKDROPS-->
	<!-- CORE PLUGINS-->
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
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"
		rel="stylesheet" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<!-- PAGE LEVEL PLUGINS-->
	<!-- CORE SCRIPTS-->
	<script src="assets/js/app.min.js" type="text/javascript"></script>


</body>
</html>
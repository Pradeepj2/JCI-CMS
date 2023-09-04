<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jci.model.EntryDerivativePrice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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

input[type="radio"] {
	display: inline;
}
</style>
</head>

<body class="fixed-navbar">

	<%
	EntryDerivativePrice derivativePrice = (EntryDerivativePrice) request.getAttribute("derivativePrice");
	int defaultDerId = derivativePrice.getDer_id();
	String defaultCropYear = derivativePrice.getCrop_year();
	String defaultDeliveyType = derivativePrice.getDelivery_type();
	String defaultStateCode = derivativePrice.getState();
	String defaultStateName = derivativePrice.getState_name();
	String defaultStateId = derivativePrice.getState_id();
	String defaultDistrictCode = derivativePrice.getDistrict();
	String defaultDistrictId = derivativePrice.getDistrict_id();
	String defaultDistrictName = derivativePrice.getDistrict_name();
	String defaultJuteType = derivativePrice.getJute_variety();
 	int defaultCreatedBy = derivativePrice.getCreated_by();
	String defaultCreationDate = derivativePrice.getCreation_date();
	String grade1 = derivativePrice.getGrade1();
	String grade2 = derivativePrice.getGrade2();
	String grade3 = derivativePrice.getGrade3();
	String grade4 = derivativePrice.getGrade4();
	String grade5 = derivativePrice.getGrade5();
	String grade6 = derivativePrice.getGrade6();

	boolean disableInputT = true;
	boolean disableInputW = true;
	boolean disableInputM = true;
	boolean disableInputB = true;
	if (defaultJuteType.startsWith("T")) {
		disableInputT = false;
	} ;
	if (defaultJuteType.startsWith("W")) {
		disableInputW = false;
	} ;
	if (defaultJuteType.startsWith("M")) {
		disableInputM = false;
	} ;
	if (defaultJuteType.startsWith("B")) {
		disableInputB = false;
	} ;

	// 	System.out.print(defaultDeliveyType.equals("ex-godown") + " "
	// 			+ "/////////////////////////////////////////////////////////////////");

	// 	System.out.print(defaultDeliveyType.equals("mill") + " " + "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
	System.out.print(disableInputT + "+" + disableInputW + "+" + disableInputM + "+" + disableInputB + " "
			+ "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
	%>

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
				<h1 class="page-title">Edit Derivative Price</h1>
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
								<form action="updateEDPrice.obj" method="POST">
									<div class="row">

										<div class="col-sm-4 form-group">
											<label>Crop Year </label> <select name="crop_year" disabled
												id="crop_year" class="form-control">
												<option selected value="<%=defaultCropYear%>"><%=defaultCropYear%></option>
											</select>
										</div>

										<div class="col-sm-4 form-group">
											<label>Delivery Type</label> <select name="delivery_type"
												disabled id="delibry_type" class="form-control">
												<option value=<%=defaultDeliveyType%>><%=defaultDeliveyType%></option>
											</select>

										</div>


										<div class="col-sm-4 form-group">
											<label>State</label> <select class="form-control"
												name="state" type="text" disabled placeholder="State"
												id="ParentMenuID">
												<option value=<%=defaultStateId%>><%=defaultStateName%></option>
											</select>
										</div>
									</div>

									<div class="row mt-4">
										<div class="col-sm-4 form-group">
											<label>District</label> <select class="form-control"
												id="child" name="district" disabled>
												<option value=<%=defaultDistrictId%>><%=defaultDistrictName%></option>
											</select>

										</div>



										<div class="col-sm-8 form-group">

											<label>Jute Grade</label>
											<table>
												<tr>
													<th></th>
													<th>GR1</th>
													<th>GR2</th>
													<th>GR3</th>
													<th>GR4</th>
													<th>GR5</th>
													<th>GR6</th>
												</tr>
												<tr>
													<td>Tossa (New)</td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="tgr1" id="tgr1" <%if (disableInputT) {%> disabled
														<%}%>
														value=<%if (!disableInputT) {
	out.print(grade1);
}%>
														data-decimal="2" oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="tgr2" id="tgr2" <%if (disableInputT) {%> disabled
														<%}%>
														value=<%if (!disableInputT) {
	out.print(grade2);
}%>
														data-decimal="2" oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="tgr3" id="tgr3" <%if (disableInputT) {%> disabled
														<%}%>
														value=<%if (!disableInputT) {
	out.print(grade3);
}%>
														data-decimal="2" oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="tgr4" id="tgr4" <%if (disableInputT) {%> disabled
														<%}%>
														value=<%if (!disableInputT) {
	out.print(grade4);
}%>
														data-decimal="2" oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="tgr5" id="tgr5" <%if (disableInputT) {%> disabled
														<%}%>
														value=<%if (!disableInputT) {
	out.print(grade5);
}%>
														data-decimal="2" oninput="enforceNumberValidation(this)" /></td>
													<td class='w-4'><small id="errEmailtgr"
														name="errEmailtgr" class="text-danger"></small></td>

												</tr>
												<tr>
													<td>White (New)</td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="wgr1" id="wgr1" <%if (disableInputW) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputW) {
	out.print(grade1);
}%>
														oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="wgr2" id="wgr2" <%if (disableInputW) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputW) {
	out.print(grade2);
}%> /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="wgr3" id="wgr3" <%if (disableInputW) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputW) {
	out.print(grade3);
}%>
														oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="wgr4" id="wgr4" <%if (disableInputW) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputW) {
	out.print(grade4);
}%>
														oninput="enforceNumberValidation(this)" /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="wgr5" id="wgr5" <%if (disableInputW) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputW) {
	out.print(grade5);
}%> /></td>
													<td class='w-4'><small id="errEmailwgr"
														name="errEmailwgr" class="text-danger"></small></td>
												</tr>
												<tr>
													<td>Mesta</td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="mgr1" id="mgr1" data-decimal="2"
														oninput="enforceNumberValidation(this)"
														<%if (disableInputM) {%> disabled <%}%>
														value=<%if (!disableInputM) {
	out.print(grade1);
}%> />
													<td><input class="form-control" type="number" min="0" step="any"
														name="mgr2" id="mgr2" <%if (disableInputM) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputM) {
	out.print(grade2);
}%> /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="mgr3" id="mgr3" <%if (disableInputM) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputM) {
	out.print(grade3);
}%> /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="mgr4" id="mgr4" <%if (disableInputM) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputM) {
	out.print(grade4);
}%> /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="mgr5" id="mgr5" <%if (disableInputM) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputM) {
	out.print(grade5);
}%> /></td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="mgr6" id="mgr6" <%if (disableInputM) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputM) {
	out.print(grade6);
}%> /></td>

													<td class='w-4'><small id="errEmailmgr"
														name="errEmailmgr" class="text-danger"></small></td>
												</tr>
												<tr>
													<td>Bimli</td>
													<td><input class="form-control" type="number" min="0" step="any"
														name="bgr1" id="bgr1" <%if (disableInputB) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputB) {
	out.print(grade1);
}%>
														oninput="enforceNumberValidation(this)" /></td>

													<td><input class="form-control" type="number" min="0" step="any"
														name="bgr2" id="bgr2" <%if (disableInputB) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputB) {
	out.print(grade2);
}%> /></td>


													<td><input class="form-control" type="number" min="0" step="any"
														name="bgr3" id="bgr3" <%if (disableInputB) {%> disabled
														<%}%> data-decimal="2"
														oninput="enforceNumberValidation(this)"
														value=<%if (!disableInputB) {
	out.print(grade3);
}%> /></td>


													<td><input class="form-control" type="number" min="0" step="any"
														name="bgr4" id="bgr4" <%if (disableInputB) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputB) {
	out.print(grade4);
}%>
														oninput="enforceNumberValidation(this)" /></td>



													<td><input class="form-control" type="number" min="0" step="any"
														name="bgr5" id="bgr5" <%if (disableInputB) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputB) {
	out.print(grade5);
}%>
														oninput="enforceNumberValidation(this)" /></td>
													<td><input type="number" class="form-control" min="0" step="any"
														name="bgr6" id="bgr6" <%if (disableInputB) {%> disabled
														<%}%> data-decimal="2"
														value=<%if (!disableInputB) {
	out.print(grade6);
}%>
														oninput="enforceNumberValidation(this)" /></td>
													<td class='w-4'><small id="errEmailbgr"
														name="errEmailbgr" class="text-danger"></small></td>
												</tr>
											</table>
										</div>
									</div>

									<div class="row">

										<div class="form-group">
											<input name="creationDate" type="hidden"
												value=<%=defaultCreationDate%> /> <input name="createdBy"
												type="hidden" value=<%=defaultCreatedBy%> /> <input
												name="stateId" type="hidden" value=<%=defaultStateId%> /> <input
												name="stateCode" type="hidden" value=<%=defaultStateCode%> />
											<input name="districtId" type="hidden"
												value=<%=defaultDistrictId%> /> <input name="districtCode"
												type="hidden" value=<%=defaultDistrictCode%> /> <input
												name="der_id" type="hidden" value=<%=defaultDerId%> /> <input
												name="juteVarity" type="hidden" value=<%=defaultJuteType%> />

											<button class="btn btn-success" id="btn" type="submit"
												disabled="disabled">Update</button>
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

	</div>

	<!-- END PAGA BACKDROPS-->
	<!-- CORE PLUGINS-->
	<script src="assets/css/chosen.jquery.js" type="text/javascript">
</script>
	<script src="assets/css/docsupport/prism.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="assets/css/docsupport/init.js" type="text/javascript"
		charset="utf-8"></script>

	<script>
		$(".chosen-select").chosen({
			no_results_text : "Oops, nothing found!"
		})
	</script>
	<script>
		//grades validation
		 	let tgrIds = ['#tgr1','#tgr2','#tgr3','#tgr4','#tgr5'];
			let wgrIds = ['#wgr1','#wgr2','#wgr3','#wgr4','#wgr5'];
			let mgrIds = ['#mgr1','#mgr2','#mgr3','#mgr4','#mgr5','#mgr6'];
			let bgrIds = ['#bgr1','#bgr2','#bgr3','#bgr4','#bgr5','#bgr6'];

			tgrIds.map(id => {
			    $(id).on("input" , function(){ 
			    	selectPerticulerInputBox("tgr", 5)
			    })
			     $(id).on("keydown" ,function(){    
			    	if (event.key === "-" || event.key === "+") {
						event.preventDefault();
					}
			    
			})})
			
			wgrIds.map(id => {
			    $(id).on("input" ,function(){    
			    	selectPerticulerInputBox("wgr", 5)
			    })
			    
			    $(id).on("keydown" ,function(){    
			    	if (event.key === "-" || event.key === "+") {
						event.preventDefault();
					}
			    })
			    
			})
			mgrIds.map(id => {
			    $(id).on("input" , function(){  
			    	selectPerticulerInputBox("mgr", 6)
			    })
			     $(id).on("keydown" ,function(){    
			    	if (event.key === "-" || event.key === "+") {
						event.preventDefault();
					}
			    })
			})
			bgrIds.map(id => {
			    $(id).on("input" ,function(){  
			    	selectPerticulerInputBox("bgr", 6)
			    })
			     $(id).on("keydown" ,function(){    
			    	if (event.key === "-" || event.key === "+") {
						event.preventDefault();
					}
			    })
			})
			
		function selectPerticulerInputBox(key, no) {
			if (isValid(key, no)) {
				document.getElementById("errEmail" + key).innerHTML = "";
				$('#btn').removeAttr("disabled");
				//console.log("error gone")
			} else {
				document.getElementById("errEmail" + key).innerHTML = "sum should be 100";
      			$('#btn').attr("disabled" , "disabled");
				//console.log("Error arrived")
			}
			;
		}

		function isValid(key, n) {
			let totel = 0;
			for (var i = 1; i <= n; i++) {
				let temp = $('#' + key + i).val();
				if (temp == '') temp = 0;
				totel += parseFloat(temp);
			}
			return (+totel == 100);
		};
// 		*************************************************************
		
		function enforceNumberValidation(ele) {
		    if ($(ele).data('decimal') != null) {
		        // found valid rule for decimal
		        var decimal = parseInt($(ele).data('decimal')) || 0;
		        var val = $(ele).val();
		        if (decimal > 0) {
		            var splitVal = val.split('.');
		            if (splitVal.length == 2 && splitVal[1].length > decimal) {
		                // user entered invalid input
		                $(ele).val(splitVal[0] + '.' + splitVal[1].substr(0, decimal));
		            }
		        } else if (decimal == 0) {
		            // do not allow decimal place
		            var splitVal = val.split('.');
		            if (splitVal.length > 1) {
		                // user entered invalid input
		                $(ele).val(splitVal[0]); // always trim everything after '.'
		            }
		        }
		    }
		}
		
		
// 		******************************************************************
		
	</script>

	<script>
		
	</script>


</body>
</html>
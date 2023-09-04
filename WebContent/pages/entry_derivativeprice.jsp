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

input[type="radio"] {
	display: inline;
}
</style>
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
				<h1 class="page-title">Add Entry Derivative Price</h1>
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
								<form action="saveEDPrice.obj" method="POST">
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
											<label>Delivery Type</label> <select name="delivery_type"
												id="delibry_type" class="form-control" required>
												<option value="">-Select-</option>
												<option value="mill">Mill Delivery</option>
												<option value="ex-godown">Ex-Godown</option>
											</select>

										</div>


										<div class="col-sm-4 form-group">
											<label>State</label>

											<%
											List<StateList> Liststate = (List<StateList>) request.getAttribute("Liststate");
											%>
											<select class="form-control" name="state" id="ParentMenuID"
												required>
												<option disabled selected value>-Select-</option>
												<%
												for (StateList stateLists : Liststate) {
												%>
												<option value="<%=stateLists.getId()%>"><%=stateLists.getState_name()%></option>
												<%
												}
												%>
											</select>


										</div>




									</div>

									<div class="row mt-4">
										<div class="col-sm-4 form-group">
											<label>District</label> <select id="child" name="district"
												multiple class="form-control" required>
												<option disabled value>-Select District-</option>
											</select>

										</div>
										<!-- <div class="col-sm-4 form-group">
											<label>Jute Variety</label> <select name="jute_variety"
												id="jute_variety" class="form-control" required>

											</select>

										</div> -->


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
													<td><input type="number" name="tgr1" id="tgr1" step="any"
														class="form-control" data-decimal="2" min="0"
														oninput="enforceNumberValidation(this)" /></td>
													<td><input type="number" name="tgr2" id="tgr2" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="tgr3" id="tgr3" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="tgr4" id="tgr4" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="tgr5" id="tgr5" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><small id="errEmailtgr" 
														name="errEmailtgr" class="text-danger"></small></td>

												</tr>
												<tr>
													<td>White (New)</td>
													<td><input type="number" name="wgr1" id="wgr1" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="wgr2" id="wgr2" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="wgr3" id="wgr3" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="wgr4" id="wgr4" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="wgr5" id="wgr5" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td ><small id="errEmailwgr"
														name="errEmailwgr" class="text-danger"></small></td>
												</tr>
												<tr>
													<td>Mesta</td>
													<td><input type="number" name="mgr1" id="mgr1" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" />
													<td><input type="number" name="mgr2" id="mgr2" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="mgr3" id="mgr3" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="mgr4" id="mgr4" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="mgr5" id="mgr5" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="mgr6" id="mgr6" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><small id="errEmailmgr"
														name="errEmailmgr" class="text-danger"></small></td>
												</tr>
												<tr>
													<td>Bimli</td>
													<td><input type="number" name="bgr1" id="bgr1" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="bgr2" id="bgr2" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="bgr3" id="bgr3" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="bgr4" id="bgr4" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="bgr5" id="bgr5" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><input type="number" name="bgr6" id="bgr6" step="any"
														data-decimal="2" oninput="enforceNumberValidation(this)"
														min="0" class="form-control" /></td>
													<td><small id="errEmailbgr"
														name="errEmailbgr" class="text-danger"></small></td>
												</tr>
											</table>
										</div>
									</div>

									<div class="row">

										<div class="form-group">

											<button class="btn btn-success" id="btn" type="submit"
												disabled="disabled">Submit</button>
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
	<script>

// 		$("#delibry_type")
// 				.on(
// 						"change",
// 						function() {
// 							$('#child').html("<option disabled>-Select-</option>");
// 							var msp_no;
// 							var variety = (this.value);
// 							if (variety == "msp") {
// 								msp_no = 2;
// 							} else if (variety == "commercial") {
// 								msp_no = 1;
// 							}
// 							$
// 									.ajax({
// 										type : "GET",
// 										url : "findJuteOnBasis.obj",
// 										data : {
// 											"msp_no" : msp_no
// 										},
// 										success : function(result) {
// 											var data = jQuery.parseJSON(result);
// 											var html = "<option disabled >-Select-</option>";
// 											for (var i = 0; i < data.length; i++) {
// 												var sar = data[i]
// 												html += "<option value="+sar+">"
// 														+ data[i] + "</option>"
// 											}
// 											$("#jute_variety").html(html);
// 										}
// 									});
// 						});
	</script>
	<script>
// 		$("#jute_variety")
// 				.on(
// 						"change",
// 						function() {
// 							var basis_no;
// 							var grade;
// 							var count = 0;
// 							var data;
// 							var basis = document.getElementById("delibry_type").value;
// 							if (basis == "commercial")
// 								basis_no = 2;
// 							else if (basis == "msp")
// 								basis_no = 1;
// 							var variety = (this.value);
// 							$
// 									.ajax({
// 										type : "GET",
// 										url : "findGradeOnJuteVariety.obj",
// 										data : jQuery.param({
// 											"variety" : variety,
// 											"basis_no" : basis_no
// 										}),
// 										success : function(result) {
// 											data = jQuery.parseJSON(result);
// 											var data = jQuery.parseJSON(result);

// 											var html = "<option disabled >-Select-</option>";
// 											for (var i = 0; i < data.length; i++) {
// 												var sar = data[i]
// 												html += "<option value="+sar+">"
// 														+ data[i] + "</option>"
// 											}
// 											$("#jute_grade").html(html);

// 										}
// 									});
// 						});
	</script>
	<script>
	
	function validOptions(){
		var val = $('#ParentMenuID').val();
		var cropYear = $("#crop_year").val();
		var delivery_type = $("#delibry_type").val();
		$('#child').html("<option disabled>-Select-</option>");
		//alert(val);
	     console.log(val , cropYear , delivery_type);
		if (val != null && val !='' && cropYear != null && cropYear != "" && delivery_type != '' && delivery_type != null) {
		    // console.log("i am in boy")
			$
					.ajax({
						type : "GET",
						url : "pIconForSelected.obj",
						//url : "pIcon.obj",
						data : {
							"F_District" : val,
							"cropYear" : cropYear,
							"delivery_type" : delivery_type
						},
						success : function(result) {
							if (result.length > 0) {
								var result = JSON
										.parse(result);
								
								var s = "<option disabled >-Select-</option>";
								for (var i = 0; i < result.length; i++) {
									s += ('<option value="'
											+ result[i].split("-")[0]
											+'-'+result[i]
											.split("-")[1] + '-' +  result[i]
											.split("-")[2] +'"'+'>'
											+ result[i]
													.split("-")[1]
											+ '</option>');
								}
								$('#child').html(s);
			

							} else {
								document
										.getElementById("child").style.display = "none";
								document
										.getElementById("selectedArea").value = "";
								//document.getElementById("selectedAreaDiv").style.display="none";
								//alert("No Record Found!");
							}
						}
					});
		}
	}

   	$("#ParentMenuID").on("change" , validOptions);
	$("#delibry_type").on("change" ,validOptions);
	$("#crop_year").on("change" ,validOptions);
	</script>

	<script>
		//grades validation
		 	let tgrIds = ['#tgr1','#tgr2','#tgr3','#tgr4','#tgr5'];
			let wgrIds = ['#wgr1','#wgr2','#wgr3','#wgr4','#wgr5'];
			let mgrIds = ['#mgr1','#mgr2','#mgr3','#mgr4','#mgr5','#mgr6'];
			let bgrIds = ['#bgr1','#bgr2','#bgr3','#bgr4','#bgr5','#bgr6'];
			
			 flagtgr = false;
			 flagwgr = false;
			 flagmgr = false;
			 flagbgr = false;

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
				if(key === 'tgr') flagtgr = true;
				if(key === 'wgr') flagwgr = true;
				if(key === 'mgr') flagmgr = true;
				if(key === 'bgr') flagbgr = true;
				//console.log("error gone")
			} else {
				document.getElementById("errEmail" + key).innerHTML = "sum should be 100";
// 				$('#btn').attr("disabled" , "disabled");
				//console.log("Error arrived")
				if(key === 'tgr') flagtgr = false;
				if(key === 'wgr') flagwgr = false;
				if(key === 'mgr') flagmgr = false;
				if(key === 'bgr') flagbgr = false;
			};
			
			//console.log(flagtgr,flagwgr ,flagmgr , flagbgr)
			if(flagtgr === true && flagwgr  === true && flagmgr  === true && flagbgr === true){
				$('#btn').removeAttr("disabled");
			}else{
				$('#btn').attr("disabled","disabled");
			}
		}
			
			

		function isValid(key, n) {
			let totel = 0;
			for (var i = 1; i <= n; i++) {
				let temp = $('#' + key + i).val();
				if (temp == '') temp = 0;
				console.log(parseFloat(temp))
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
	
$(  document ).ready(function() {
	
	// GET REQUEST
	$("#form-group").load(function(){
		event.preventDefault();
		ajaxGet();
	});
	
	// DO GET
	function ajaxGet(){
		$.ajax({
			type : "GET",
			url : window.location + "api/vehicle/all",
			success: function(result){
				if(result.status == "Done"){
					$('#getResultDiv ul').empty();
					var modelList = "";
					$.each(result.data, function(i, model){
						var model =  model.name;
						$('#form-control .loaded').append(model)
			        });
					console.log("Success: ", result);
				}else{
					$("#form-control").html("<strong>Error</strong>");
					console.log("Fail: ", result);
				}
			},
			error : function(e) {
				$("#getResultDiv").html("<strong>Error</strong>");
				console.log("ERROR: ", e);
			}
		});	
	}
})
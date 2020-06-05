function get_project_from_type(type) {
	$.ajax({
		url:"projectController.php",
		method:"get",
		data:{"action":"get_project_from_type" , "type":type},
		success:function(data) {
			data = JSON.parse(data)
			console.log(data);
			data.forEach(function(item, index, arr) {
				$("#project-container").append($(arr[index]))
				});
			
		}

	})
}

get_project_from_type()

$(document).ready(function() {
	
	$("#project-type input").click(function(e){
		type = $(e.target).attr("id");
		$("#project-container .project-card").remove();
		get_project_from_type(type);

	})

})

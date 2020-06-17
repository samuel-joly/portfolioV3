function get_project_from_type(type) {
	$.ajax({
		url:"../projectController.php",
		method:"get",
		data:{"action":"get_project_from_type" , "type":type},
		success:function(data) {
			data = JSON.parse(data)
			count = 0
			data.forEach(function(item, index, arr) {
				if(count == 6) {return false}
				$("#project-container").append($(arr[index]))
				count ++
				});
			
		}

	})
}

function show_project_toast(target) {
		toast = $("#toast"+$(target).attr("id"));
		toast.modal("show");
}

get_project_from_type()


$(document).ready(function() {

	$("#project-type input").click(function(e){
		type = $(e.target).attr("id");
		$("#project-container .project-card").remove();
		$("#project-container .modal").remove();
		get_project_from_type(type);
	})

	
	$(document).click(function(e) {
		if($(e.target).hasClass('project-card') || $(e.target).hasClass('project-body') || $(e.target).hasClass('projectTopImg')) {
			show_project_toast(e.target);
		}
	})



})

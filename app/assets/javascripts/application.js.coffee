//= require jquery
//= require jquery_ujs
//= require_tree .

showOn = ->
	$("[data-show-on]").hide()
	$("[data-show-on="+$("#post_post_type").val()+"]").show()

$(document).ready ->
	$(".modal.bg").click ->
		$(".modal").fadeOut()

	showOn()
	
	$("#post_post_type").change -> showOn()
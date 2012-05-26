var json;
var hystory = [];
var filters = "";
var limit = 10;
var startAt = 0;

var buttonClick = function() { 
	$("ul.buttons button").live('click', function() {
  	$("article svg").remove();
		var url = $(this).data("url");
		filters = url;
	  var index = parseInt($(this).data("id"));
	  hystory.push(index);
		loadAlluvial(url);
	});
};

function loadAlluvial(url) {
	if (!url)
		url = "";
	$.ajax({
		url: "/filtros" + url + "?limit=" + limit + "&startAt=" + startAt,  
    method: "GET",
    success: function(data) {
      json = data;
			var child = json;
				for (var i = 1; i < hystory.length; i++) 
			  	child = child.childs[hystory[i] - 1];
      drawAlluvial(child);
    }
  });
};

var qtipShow = function() {
	console.log($("rect").length);
	$("rect").qtip({
		content: { 
			text: function() { 
				var myData = {
					name: $(this).data("description"),
					percentage_parent: $(this).data("pp"),
					percentage_total: $(this).data("tp"),
					buttons: []
				};
				console.log("=======> " + myData.id);
				var buttons = [
					{ name: "Natureza", url: "/natureza", "color": "primary" },
					{ name: "Destino", url: "/destino", "color": "inverse" },
					{ name: "SubFun&ccedil;&atilde;o", url: "/subfuncao", "color": "info" }
				];
				
				for (var index in buttons) {
					var btn = buttons[index];
					if (filters.indexOf(btn.url) == -1) {
						btn.url = filters + btn.url;
						btn.id = $(this).data("id");
						myData.buttons.push(btn);
					}
				}
				
				return $.render.qtipTemplate(myData);
			},
		},
		position: { at: 'bottom center', my: 'top center' },
    show: { event: 'click' },
		hide: { event: 'click' },
    style: {
			classes: 'ui-tooltip-light ui-tooltip-shadow'
		}
  });
};


var registerTemplates = function() {
	$.templates({
		qtipTemplate: $("#tipTemplate").html()
	});
};

$(document).ready(function() {
	loadAlluvial(); 
	//setTimeout(bindEvents, 3000);
	registerTemplates();
	buttonClick();
  
  $('li.item a').click(function(){
	  $('li.item').removeClass('active');
	  $(this).parent().addClass('active');
	  limit = $(this).text();
	  $("article svg").remove();
	  loadAlluvial();
  });
  
  $('#slider').slider({
  		min: 0,
  		change: function(event, ui) {
  			startAt = $('#slider').slider('value');
  			$("article svg").remove();
  			loadAlluvial();
  		}
  });

});
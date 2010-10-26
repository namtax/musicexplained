// JavaScript Document

$(document).ready(function(){
    // Hide resolutions
   //$('dd').hide();
    
    // Make All Links Open In Another Window
    $("#problems dd.resolution a[href^='http']").attr('target', '_blank');
    
    
    // Logo Animation
    $("#logo").hover(function(){
        $("#logo a").stop().animate({
            color: "#DADADA"
        }, 'slow', 'easeInQuart');
    }, function(){
        $("#logo a").stop().animate({
            color: "#000"
        }, 'slow');
    });
	
	// Search Autosuggest
	var data = "Core Selectors Attributes Traversing Manipulation CSS Events Effects Ajax Utilities".split(" ");
	$("#search").autocomplete('http://localhost:8501/solvent/model/country.cfm',
		{
		minChars: 2,
		delay:500,
		max: 12,
		autoFill: false,
		matchSubset:false,
		matchContains: 1,
		selectOnly:1,
		scrollHeight: 620,
		width:310	
	}).result(function(event, data, formatted) {
		var problem = $(this).val();
		var problem = problem.replace(/ /g,'+');
		var location = 'http://localhost:8501/solvent/index.cfm/problem/' + problem;
      	window.location= location;

		
		//$('p').html($(this).val());
  }); ;
	

/*
$("#search").result(function(event, data, formatted) {
		if (data)
			$(this).parent().next().find("input").val(data[1]);
	});
*/
    
    // TOGGLE RESOLUTIONS
	/*
    $('dt a').live('click', function(){
        $(this).parent().parent().find('> dd').toggle();
        return false

    });*/
    
    /*
     // Add New Resolution
     $('#addSolution a').click(function(){
     $.get('http://localhost:8501/solvent/views/viewlets/forms/addSolution.cfm',function(data){
     $(data).modal({
     
     });
     });
     return false
     });
     */
	
	$(function(){
    
        var obj = $('#addSolvent');
        var openText = "Add solution..";
        var closeText = "close";
        var top = obj.css('top');
        var speed = 500;
        
        $('#addSolution a, span.close').live('click',function(){
			
			  if ($('span.close').length > 0){
			  	 $('span.close').remove();  	 
            obj.animate({
                'top': top
            }, speed)
            $('#overlay').fadeOut(1000);
			  }
			  else{
					
            $('<span class="close">' + closeText + '</span>').appendTo(obj); 
		            obj.animate({
		                'top': '0px'
		            }, speed)
		            
		            $('<div></div>').attr({
		                'id': 'overlay'
		            }).css({
		                'opacity': '0.8'
		            }).hide().prependTo('body').fadeIn();
		            submitForm();
				
			  }
			 return false;
		});
		});
	
	
	
/*
    $(function(){
    
        var obj = $('#addSolvent');
        var openText = "Add solution..";
        var closeText = "close";
        var top = obj.css('top');
        var speed = 500;
        
        $('<span class="open">' + openText + '</span>').appendTo(obj).toggle(function(){
            $(this).removeClass('open').addClass('close').text(closeText);
            obj.animate({
                'top': '0px'
            }, speed)
            
            $('<div></div>').attr({
                'id': 'overlay'
            }).css({
                'opacity': '0.8'
            }).hide().prependTo('body').fadeIn();
            submitForm();
            
        }, function(){
            $(this).removeClass('close').addClass('open').text(openText);
            obj.animate({
                'top': top
            }, speed)
            $('#overlay').fadeOut(1000);
            
        })
    });
*/
    
/*
    // Display add resolution form
    $('#addSolution a, a#closePanel').live('click', function(){
        var slidePanel = $('#slidePanel');
        
        if (slidePanel.is(":visible")) {
            slidePanel.slideUp('slow');
            $('#overlay').fadeOut(1000);
            
        }
        else {
            $.get('http://localhost:8501/solvent/views/viewlets/forms/addSolution.cfm', function(data){
            
                $('<div></div>').attr({
                    'id': 'overlay'
                }).css({
                    'opacity': '0.9'
                }).hide().prependTo('body').fadeIn();
              
                
                $('<div></div>').attr({
                    'id': 'slidePanel'
                }).css({
                    'opacity': '0.8'
                }).prependTo('body').hide();
                
                $('#slidePanel').html(data).slideDown('slow');
                
                submitForm();
            });
        }
        return false
    });
*/
    
    // Form Validation 
    function validateForm(){
        $("#addProblem").validate();
        var valid = $("#addProblem").valid();
        return valid;
    }
    
    
    // Add new resolved problem
    function submitForm(){
        $('#addProblem').ajaxForm({
            beforeSubmit: validateForm,
            error: function(){
                alert("problem occurred");
            },
            success: ajaxSuccess
        });
    }
    
    function getCalendarDate(){
        var months = new Array(13);
        months[0] = "January";
        months[1] = "February";
        months[2] = "March";
        months[3] = "April";
        months[4] = "May";
        months[5] = "June";
        months[6] = "July";
        months[7] = "August";
        months[8] = "September";
        months[9] = "October";
        months[10] = "November";
        months[11] = "December";
        var now = new Date();
        var monthnumber = now.getMonth();
        var monthname = months[monthnumber];
        monthname = monthname;
        var monthday = now.getDate();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var year = now.getYear();
        if (year < 2000) {
            year = year + 1900;
        }
        var dateString = monthname +
        ' ' +
        monthday +
        ', ' +
        year +
        ' at ' +
        hours +
        ":" +
        minutes;
		
		monthnumber = monthnumber + 1;
		monthnumber = '0' + monthnumber;
		
		var dateString = monthday +	'/' + monthnumber + '/' + year;
		
		
        return dateString;
    }
    
    // Ajax success callback
    function ajaxSuccess(){
        var obj = $('#addSolvent');
        var top = obj.css('top');
        var speed = 500;
        var slidePanel = $('#slidePanel');
		var iProblemId = $('#iProblemId').fieldValue()[0];
        var sTitle = $('#sTitle').fieldValue()[0];
        var sSolution = $('#sSolution').fieldValue()[0];
		var sCategory = $('#sCategory').fieldValue()[0];
        var dtCreated = getCalendarDate()
        
        // $(this).removeClass('close').addClass('open').text(openText);
        obj.animate({
            'top': -600
        }, speed);
        $('#overlay').fadeOut(1000);
        
		if (iProblemId) {
			var thisProblem = $("#" + iProblemId);
			thisProblem.addClass('updating');
			thisProblem.children().hide();
			$('<dt>Updating....<dt>').appendTo(thisProblem);
			
			
			$("#" + iProblemId).find('.sTitle' + iProblemId).html(sTitle).animate({
				opacity: 1.0
			}, 3000).slideDown('slow');
			$("#" + iProblemId).find('dd.resolution').html(sSolution).animate({
				opacity: 1.0
			}, 3000).slideDown('slow');
			
			
		//$("dl.#' & iProblemId '").fadeOut('200');
		
		}
		else {
	
		 // Created new problem in definition list
		 var newProblem = '<dl>'
			 newProblem += '<dt><a href="" title="Click to toggle">' + sTitle + '</a></dt>'
			 newProblem += '<dd class="options" style="float:right;">'
			 newProblem += '<ul>'
			 newProblem += '<li class="edit"><a href="">Edit</a></li>'
			 newProblem += '<li class="delete"><a href="">Delete</a></li>'
			 newProblem += '</ul>'
			 newProblem += '</dd>'
			 newProblem += '<dd class="resolution">' + sSolution + '</dd>'
			 newProblem += '<dd class="dtResolved">' + dtCreated + '</dd>'
			 newProblem += '<dd class="caterories"><a href="">Jquery</a></dd>'
			 newProblem += '</dl>'
		 
		 // Add definition list to page
		 //$(newProblem).find('dd').hide().end().hide().prependTo('#problems').slideDown('slow');
		 $(newProblem).hide().prependTo('#problems').slideDown('slow');

		}
    }
	
		// EDIT SOLUTION

	$('#problems dl dd ul li.edit').click(function(){
	 	
		//Remove hidden form field
		$('#iProblemId').hide();
		
		var obj = $('#addSolvent');
        var openText = "Add solution..";
        var closeText = "close";
        var top = obj.css('top');
        var speed = 500;
				
		// Grab Post Details
		var iProblemId = $(this).parents('dl').attr('id'); 
		var sTitle = $(this).parents('dl').find('dt a').text();
		var sSolution = $(this).parents('dl').find('span.resolutionMarkDown').html();
		var sCategory = $(this).parents('dl').find('dd.categories dl dd.category').map(function() {
		  return $(this).text();
		}).get().join(' ');
		
		// Populate Form With Post Details
		$('#sTitle').val(sTitle);
		$('#sSolution').val(sSolution);
		$('#sCategory').val(sCategory);
		
		// Add hidden form field with post Id
		var hiddenField = ''
		hiddenField += '<input type="hidden" name="iProblemId" id="iProblemId" value="' + iProblemId + '">'
		$(hiddenField).appendTo('#addProblem')
		
		// Add close button
		$('<span class="close">' + closeText + '</span>').appendTo(obj); 
	
		// Show Form           
        obj.animate({
            'top': '0px'
        }, speed)
       		
		// Show Overlay
        $('<div></div>').attr({
            'id': 'overlay'
        }).css({
            'opacity': '0.8'
        }).hide().prependTo('body').fadeIn();
            
		submitForm();
   
  
		return false
	});

	// EDIT SOLUTION
/*
	$('#problems dl dd ul li.edit').click(function(){
		$('textarea').hide();
		var sTitle = $(this).parents('dl').find('dt').text();
		var sSolution = $(this).parents('dl').find('dd.resolution').html();
		var sCategory = $(this).parents('dl').find('dd.categories dl dd.category').map(function() {
		  return $(this).text();
		}).get().join(' ');

			
		var form = ''
		form += '<dt><input name="sTitle" id="sTitle" type="text" class="txt required" value="' + sTitle + '" autocomplete="off"/></dt>'
		form += '<dl><textarea name="sSolution" id="wmd-preview">' + sSolution + '</textarea></dl>'
		form += '<dl><input name="sCategory" id="sCategory" type="text" value="' + sCategory + '" class="txt " /></dl>'
		form += '<dl><input type="submit" value="submit" /></dl>'
		form += '<dl><input type="button" value="submit" /></dl>'
		
		$(this).parent().parent().parent().html(form);
		
		return false;
	});
*/
	    
    // DELETE SOLUTION
    $('#problems dl dd ul li.delete').click(function(){
		var $this = $(this);
		var deleteSolution = confirm("Do you really want to go to delete this item?");
			if (deleteSolution == true) {
				var thisParent = $this.parent().parent().parent();
				var iProblemId = thisParent.attr('id');
				
				var data = {
					iProblemId :iProblemId
				};
				
			
		$.post('http://localhost:8501/solvent/index.cfm/problem/remove', data, function(){
				
					thisParent.slideUp('slow');
				// $this.parent().parent().parent().slideUp('slow');
				
				});

			}
		return false;
				
	});
	
	
	
    
    
    
});

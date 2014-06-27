$ ->
	class en_textMTH
		###
		English
		###
		constructor: (className) ->
			@className = className
			@_decorateFunc()
			@_setAddClass()

		_decorateFunc:() ->
			$(@className).children().addBack().contents().each ->
				if @.nodeType is 3
					$(@).replaceWith $(this).text().replace(/(\w)/g, "<span>$&</span>") #文字列を取得しspanで囲む
					return
			return

		_setAddClass:() ->
			num = 0
			$(@className).each ->
				  $("span", this).each (i) ->
    				num = num + 1
   					$(this).addClass "type-0" + num
   					if 4 is num
    					num = 1
   					return
   			return


	class jp_textMTH
		###
		Japanese
		###
		constructor: (className) ->
			@className = className
			@_decorateFunc()
			@_setAddClass()
		_decorateFunc:() ->
			$(@className).after('<p class="js-inner"></p>')
			$(@className).hide()
			$mthString = $(@className).text()
			$counter = 0
			while $counter < $mthString.length
				$(".js-inner").append('<span class="type-01">'+$mthString.charAt($counter)+'</span>') #文字列を取得しspanで囲む
				$counter++
		_setAddClass:() ->
			num = 0
			$(".js-inner").each ->
				$("span", this).each (i) ->
		    		num = num + 1
		   			$(this).addClass "type-0" + num
		   			if 4 is num
		    			num = 1
		   			return
		   		return

	jp_textmth = new jp_textMTH(".jp-mth-text")
	en_textmth = new en_textMTH(".en-mth-text")
###
* Copyright (c) 2013 https://github.com/takumaro-web/js-mth / muraki-takuma
*
* Permission is hereby granted, free of charge, to any person obtaining a
* copy of this software and associated documentation files (the "Software"),
* to deal in the Software without restriction, including without limitation
* the rights to use, copy, modify, merge, publish, distribute, sublicense,
* and/or sell copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
* DEALINGS IN THE SOFTWARE.
###

$ ->
	class textMTH
		defaults:
			targetClass: '.mth-text'

		constructor:  (options) ->
			@options = $.extend {}, @defaults, options
			@className = $(@options.targetClass)
			@_decorateFunc()
			@_setAddClass()

		###要素に囲まれたテキストを1文字ずつspanで囲む###
		_decorateFunc:() ->
			str = []
			$(@className).each (i) ->
			    str[i] = $(this).text()
			    $(this).text ""
			    self = this
			    j = 0
			    while j < str[i].length
			          $(self).append "<span>" + str[i].substr(j, 1) + "</span>"
			          j++
			      return
			    return

		###spanにclass付与（装飾）###
		_setAddClass:() ->
			num = 0
			roopNum = 4
			$(@className).each ->
				  $("span", this).each (i) ->
    				num = num + 1
   					$(this).addClass "type-0" + num
   					if roopNum is num
    					num = 0
   					return
   			return


	textMTH = new textMTH()

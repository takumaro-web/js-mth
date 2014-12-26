
/*
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
 */

(function() {
  $(function() {
    var textMTH;
    textMTH = (function() {
      textMTH.prototype.defaults = {
        targetClass: '.mth-text',
        showAnime: true,
        animationType: 'roll'
      };

      function textMTH(options) {
        this.options = $.extend({}, this.defaults, options);
        this.className = $(this.options.targetClass);
        this.showAnime = this.options.showAnime;
        this.animationType = this.options.animationType;
        this._decorateFunc();
        this._setAddClass(this.showAnime, this.animationType);
      }


      /*要素に囲まれたテキストを1文字ずつspanで囲む */

      textMTH.prototype._decorateFunc = function() {
        var str;
        str = [];
        $(this.className).each(function(i) {
          var j, self;
          str[i] = $(this).text();
          $(this).text("");
          self = this;
          j = 0;
          while (j < str[i].length) {
            $(self).append("<span>" + str[i].substr(j, 1) + "</span>");
            j++;
          }
        });
      };


      /*spanにclass付与（装飾） */

      textMTH.prototype._setAddClass = function(flag, animationClass) {
        var num, roopNum;
        num = 0;
        roopNum = 4;
        return $(this.className).each(function() {
          $("span", this).each(function(i) {
            num = num + 1;
            if (flag === true) {
              $(this).addClass("type-0" + num);
              $(this).addClass(animationClass);
            } else {
              $(this).addClass("type-0" + num);
            }
            if (roopNum === num) {
              num = 0;
            }
          });
        });
      };

      return textMTH;

    })();
    return textMTH = new textMTH();
  });


  /*
  使用例
  【optionsを指定しない場合】
  	textMTH = new textMTH()
  	
  	・ターゲットクラス：　.mth-text
  	・アニメーション：　有
  	・アニメーションクラス：　.roll
  
  【optionsを指定する場合】
  	textMTHOptions =
  		targetClass: '.mth-text'
  		showAnime: true
  		animationType: 'roll'
  	textMTH = new textMTH(textMTHOptions)
   */

}).call(this);

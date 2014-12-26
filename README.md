js-mth
======

<img src="https://raw.githubusercontent.com/takumaro-web/js-mth/d3e1ba2cce30f78e35fb7d6c45b4487010cd18db/__sample-image/image.png" alt="">

###テキストをマキシマム ザ ホルモン風にできる.js  
→Maximum The Hormone : mth.js

###仕様
・.mth-textを指定すると一文字ずつspanでくくってくれます。 
・jquery依存です。

###使い方

####デフォルト
1:ファイルを落とす.  
2:mth.jsを読み込ませる.   
3:適応させたい要素に.mth-textを指定する。
  ＜例＞``` <p class="mth-text">ほげほげ</p> ```  
4:以下のstyleを自分のcssに追加する。  
  ※ 他のスタイルとバッティングしないように気を付けてください.。  

```css
span.type-01 {
  color: #ffffff;
  font-size: 34px;
  background: #C60019;
  -webkit-transform: rotate(10deg);
  -ms-transform: rotate(10deg);
  transform: rotate(10deg);
  display: inline-block;
  font-size: 34px;
  line-height: 1.1;
  padding: 2px 3px;
  -webkit-box-shadow: 4px 4px #000;
  box-shadow: 4px 4px #000;
  margin-right: 5px;
}

span.type-02 {
  color: #fff;
  background: #000;
  -webkit-transform: rotate(-5deg);
  -ms-transform: rotate(-5deg);
  transform: rotate(-5deg);
  display: inline-block;
  font-size: 24px;
  line-height: 1.1;
  padding: 2px 3px;
  -webkit-box-shadow: 4px 4px #C60019;
  box-shadow: 4px 4px #C60019;
  margin-right: 5px;
}

span.type-03 {
  color: #ffffff;
  background: #C60019;
  -webkit-transform: rotate(2deg);
  -ms-transform: rotate(2deg);
  transform: rotate(2deg);
  display: inline-block;
  font-size: 32px;
  line-height: 1.1;
  padding: 2px 3px;
  -webkit-box-shadow: 4px 4px #000;
  box-shadow: 4px 4px #000;
  margin-right: 5px;
}

span.type-04 {
  color: #000;
  background: #fff;
  -webkit-transform: rotate(8deg);
  -ms-transform: rotate(8deg);
  transform: rotate(8deg);
  display: inline-block;
  font-size: 36px;
  line-height: 1.1;
  padding: 2px 3px;
  -webkit-box-shadow: 4px 4px #C60019;
  box-shadow: 4px 4px #C60019;
  margin-right: 5px;
}

.roll {
  -webkit-animation-iteration-count: infinite;
  animation-iteration-count: infinite;
}

@-webkit-keyframes outer {
  to {
    -webkit-transform: rotateX(360deg) rotateY(360deg) rotateZ(360deg);
  }
}
@keyframes outer {
  to {
    -webkit-transform: rotateX(360deg) rotateY(360deg) rotateZ(360deg);
    transform: rotateX(360deg) rotateY(360deg) rotateZ(360deg);
  }
}
.roll.type-01 {
  -webkit-animation: outer 3s 0s infinite;
  animation: outer 3s 0s infinite;
}

.roll.type-02 {
  -webkit-animation: outer 3s 4s infinite;
  animation: outer 3s 4s infinite;
}

.roll.type-03 {
  -webkit-animation: outer 3s 2s infinite;
  animation: outer 3s 2s infinite;
}

.roll.type-04 {
  -webkit-animation: outer 3s 6s infinite;
  animation: outer 3s 6s infinite;
}
```

###オプション
【optionsを指定する場合 mth.coffee】
```coffee
	textMTHOptions =
		targetClass: '.mth-text' 
		showAnime: true
		animationType: 'roll'
	textMTH = new textMTH(textMTHOptions)
```
※ jsを直接弄る場合は、上記をコンパイルしてご利用ください。

###ライセンス。
Mit


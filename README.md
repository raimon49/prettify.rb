prettify.rb
===========

[tDiary](http://www.tdiary.org/)のプラグインです。日記本文中のpre要素を全て[google-code-prettify](http://code.google.com/p/google-code-prettify/)でハイライトします。

使い方
------

[prettify.rb](https://raw.github.com/raimon49/prettify.rb/master/prettify.rb)ファイルをpluginディレクトリに入れてtDiaryの設定画面から有効にして下さい。

仕様
----

[elpeoさんのオリジナル実装](http://elpeo.jp/diary/20070329p03.html)から私が自分の好みに改変したものです。次のような差分があります。

* rettify.cssファイルとprettify.jsファイルのアップロード不要
* [Sunburstテーマ](http://google-code-prettify.googlecode.com/svn/trunk/styles/index.html)を利用
* グローバル名前空間を使わないように変更
* Gistが埋め込まれた本文内で構文ハイライト用のスタイルがぶつからないよう変更
* AutoPagerizeとAutoPatchWorkで次のページが書き足された時のイベントを補足して構文ハイライト

[tdiary-contribにもprettify.rbが存在します](https://raw.github.com/tdiary/tdiary-contrib/master/plugin/prettify.rb)が別物です。後から知りました。

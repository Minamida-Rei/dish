# アプリケーション名：  dish

## 概要
  今日の献立の提案をするアプリです。ボタンを押すことでデータベースに保存された主食・主菜・副菜・汁物をそれぞれ出力します。さらに、料理をユーザーが追加することもできます。しかしこれでは料理以外の変なもの(車や電子レンジなど明らか食品でないもの)がユーザーによって追加された場合本来の目的が果たせなくなるため、これはあくまでジョーク機能です。チェックボックスのチェックの有無でユーザー追加のワードを出力するか切り替えられます。

## URL
  https://dish-35705.herokuapp.com/

## 利用方法
  ボタンを押すと献立が出力されます。

## 目指した課題解決
  実家暮らしで、よく母が今晩何食べたいかと聞いてくれました。主婦側からは献立を立てるのも負担になるのだと思って、その負担を軽減する助けになればと思いこのアプリケーションを考えました。

## 洗い出した要件
  献立出力機能
  料理投稿機能
  ユーザー管理機能については検討中

## 実装予定の機能
  つながりのある人に使ってもらって、必要そうならユーザー管理機能を実装する
  twitterと連携させて、今日の献立をtwitterに投稿できるようにしたい
  あらかじめアプリに登録されている料理が出力されればその料理のレシピを確認できるサイトのURLも出力されるようにする

## データベース設計

### staples
| Column    | Type   | Option |
| --------- | ------ | ------ |
| staple    | string |        |
| st_url    | string |        |

### main_dishes
| Column    | Type   | Option |
| --------- | ------ | ------ |
| m_dish    | string |        |
| md_url    | string |        |

### sub_dishes
| Column    | Type   | Option |
| --------- | ------ | ------ |
| s_dish    | string |        |
| sd_url    | string |        |

### soups
| Column    | Type   | Option |
| --------- | ------ | ------ |
| soup      | string |        |
| s_url     | string |        |

### user_staples
| Column    | Type   | Option |
| --------- | ------ | ------ |
| content   | string |        |

### user_main_dishes
| Column    | Type   | Option |
| --------- | ------ | ------ |
| content   | string |        |

### user_sub_dishes
| Column    | Type   | Option |
| --------- | ------ | ------ |
| content   | string |        |

### user_soups
| Column    | Type   | Option |
| --------- | ------ | ------ |
| content   | string |        |
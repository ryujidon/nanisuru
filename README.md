# README
## アプリケーション名
nanisuru

## アプリケーション概要
今日何するか決めてくれるアプリケーション

## URL
https://nanisuru.onrender.com/

## 利用方法
・項目を選択して検索

・項目を入力して投稿

## アプリケーションを作成した背景
何かしたいけど考えるのは面倒という悩みを解消したい

## 洗い出した要件
条件を選択してランダムで検索結果が表示されること

## 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/825c26b5f867002285699cb0bcce72f8.gif)](https://gyazo.com/825c26b5f867002285699cb0bcce72f8)

## 実装予定の機能
・時間ごとに分けてスケジュールの項目を追加できること
・検索結果をランダムで一つ表示すること
・お気に入り機能やカテゴリー別ランキングの表示（投稿者を増やす）
・フォームを充実させてより具体的なプランを立てれるようにすること
・ビューの全体的な改善

## データベース設計
## schedules テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| title              | string | null: false  |
| detail              | text   | null: false |
| category_id            | integer | null: false |
| people_id               | integer | null: false |
| budget_id              | integer | null: false |

## 画面遷移図


         検索ページ - 投稿ページ
                   - 検索結果表示
                   - 詳細ページ - 編集ページ

## 開発環境
・フロントエンド
・バックエンド
・インフラ

## ローカルでの動作方法
準備中

## 工夫したポイント
まだ実施できてないが、自分でプランを選ぶではなく強制的に決まるようにしたい
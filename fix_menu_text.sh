#!/bin/bash

# 翻訳辞書を入れるフォルダを確実に作成
mkdir -p i18n

# 日本語の翻訳辞書を作成
cat << 'INNER_EOF' > i18n/ja.yaml
- id: home
  translation: "ホーム"
- id: post
  translation: "News"
- id: posts
  translation: "News"
INNER_EOF

# 英語の翻訳辞書（上書き用）を作成
cat << 'INNER_EOF' > i18n/en.yaml
- id: home
  translation: "Home"
- id: post
  translation: "News"
- id: posts
  translation: "News"
INNER_EOF

echo "✅ 翻訳辞書の作成が完了しました！"

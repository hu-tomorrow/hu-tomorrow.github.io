#!/bin/bash

# 1. 諸悪の根源（もし存在していれば）を完全に削除
rm -f data/ja/sections.yaml data/en/sections.yaml

# 2. 現在のセクションファイルを一旦すべて削除してリセット（ゴミを残さない）
rm -f data/ja/sections/*.yaml data/en/sections/*.yaml

# 3. 必要な3つのファイルだけを、完璧なフォーマットで再作成
# --- 日本語版 ---
cat << 'INNER_EOF' > data/ja/sections/about.yaml
section:
  name: "HU-Tomorrowについて"
  id: "about"
  enable: true
  weight: 1
  showOnNavbar: true
INNER_EOF

cat << 'INNER_EOF' > data/ja/sections/experiences.yaml
section:
  name: "メンバー紹介"
  id: "experiences"
  enable: true
  weight: 2
  showOnNavbar: true
INNER_EOF

cat << 'INNER_EOF' > data/ja/sections/recent-posts.yaml
section:
  name: "最新の活動・News"
  id: "recent-posts"
  enable: true
  weight: 3
  showOnNavbar: true
INNER_EOF

# --- 英語版 ---
cat << 'INNER_EOF' > data/en/sections/about.yaml
section:
  name: "About HU-Tomorrow"
  id: "about"
  enable: true
  weight: 1
  showOnNavbar: true
INNER_EOF

cat << 'INNER_EOF' > data/en/sections/experiences.yaml
section:
  name: "Members"
  id: "experiences"
  enable: true
  weight: 2
  showOnNavbar: true
INNER_EOF

cat << 'INNER_EOF' > data/en/sections/recent-posts.yaml
section:
  name: "Latest News"
  id: "recent-posts"
  enable: true
  weight: 3
  showOnNavbar: true
INNER_EOF

# 4. hugo.yaml の警告（WARN）を新しい書き方に自動修正して消す
sed -i '' 's/languageCode:/locale:/g' hugo.yaml
sed -i '' 's/languageName:/label:/g' hugo.yaml

echo "✅ クリーンアップと完璧な枠組みの再構築が完了しました！"

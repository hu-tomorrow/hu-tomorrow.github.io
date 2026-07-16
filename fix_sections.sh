#!/bin/bash

# 日本語セクションの修正
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

# 英語セクションの修正
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

echo "✅ セクションの修正が完了しました！"

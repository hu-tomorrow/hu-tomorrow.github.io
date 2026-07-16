#!/bin/bash

# 日本語の experiences.yaml を修正
cat << 'INNER_EOF' > data/ja/experiences.yaml
experiences:
  - company:
      name: "ファシリテーター (教授陣)"
      url: "#"
      location: "広島大学"
      overview: "分野横断プロジェクトを支援・指導する教員メンバーです。"
    positions:
      - designation: "○○学部 教授 / 氏名"
        start: "2024"
        end: "現在"
        responsibilities:
          - "分野横断研究のアドバイス"
          - "学内外とのネットワーキング"

  - company:
      name: "学生オーガナイザー"
      url: "#"
      location: "広島大学"
      overview: "HU-Tomorrowの企画・運営を担う学生メンバーです。"
    positions:
      - designation: "代表 / ○○研究科 修士2年 氏名"
        start: "2024"
        end: "現在"
        responsibilities:
          - "イベントの企画・進行"
          - "ウェブサイトの構築・広報"
INNER_EOF

# 英語の experiences.yaml を修正
cat << 'INNER_EOF' > data/en/experiences.yaml
experiences:
  - company:
      name: "Facilitators (Professors)"
      url: "#"
      location: "Hiroshima University"
      overview: "Faculty members who support and guide the cross-disciplinary projects."
    positions:
      - designation: "Professor, Faculty of XXX / Name"
        start: "2024"
        end: "Present"
        responsibilities:
          - "Advising on research"
          - "Networking within and outside the university"

  - company:
      name: "Student Organizers"
      url: "#"
      location: "Hiroshima University"
      overview: "Student members responsible for planning and operations."
    positions:
      - designation: "Representative / M2, Graduate School of XXX / Name"
        start: "2024"
        end: "Present"
        responsibilities:
          - "Event planning and facilitation"
          - "Website development and PR"
INNER_EOF

echo "✅ メンバー紹介のデータ構造を修正しました！"

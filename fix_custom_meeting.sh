#!/bin/bash

# 1. 前回の projects.yaml を削除
rm -f data/ja/sections/projects.yaml data/en/sections/projects.yaml

# 2. カスタムレイアウト（HTML）を保存するフォルダを作成
mkdir -p layouts/partials/sections

# 3. 次回ミーティング専用のHTMLレイアウトを作成（これが画面中央にフライヤーを配置する魔法です）
cat << 'INNER_EOF' > layouts/partials/sections/next-meeting.html
{{ $lang := site.Language.Lang }}
{{ $section := index site.Data $lang "sections" "next-meeting" }}

<div class="container-fluid align-items-center text-center" style="padding: 1rem 0 3rem 0;">
  <div class="row justify-content-center">
    <div class="col-12 col-md-10 col-lg-8">
      
      <!-- フライヤー画像（縦長A4がそのまま表示される設定） -->
      {{ if $section.flyer_image }}
      <img src="{{ $section.flyer_image | relURL }}" alt="Event Flyer" style="max-width: 100%; height: auto; max-height: 85vh; object-fit: contain; box-shadow: 0 5px 20px rgba(0,0,0,0.15); margin-bottom: 2.5rem;">
      {{ end }}
      
      <!-- テキスト情報（全体は中央配置、文字自体は読みやすいように左揃え） -->
      <div style="display: inline-block; width: 100%; max-width: 600px; text-align: left; line-height: 1.8; font-size: 1.1em; color: var(--primary-text-color);">
        {{ $section.summary | markdownify }}
      </div>
      
      <!-- 参加ボタン -->
      {{ if $section.form_url }}
      <div style="margin-top: 2.5rem;">
        <a href="{{ $section.form_url }}" target="_blank" style="display: inline-block; background-color: #0056b3; color: white; padding: 16px 40px; border-radius: 30px; text-decoration: none; font-weight: bold; font-size: 1.1em; box-shadow: 0 4px 10px rgba(0,0,0,0.15); transition: all 0.3s ease;">
          {{ if eq $lang "ja" }}📝 参加申し込みフォーム{{ else }}📝 Registration Form{{ end }}
        </a>
      </div>
      {{ end }}
      
    </div>
  </div>
</div>
INNER_EOF

# 4. データファイル（日本語）を作成
cat << 'INNER_EOF' > data/ja/sections/next-meeting.yaml
section:
  name: "次回ミーティング"
  id: "next-meeting"
  enable: true
  weight: 2
  showOnNavbar: true
  
flyer_image: "images/site/flyer.png"
form_url: "https://forms.gle/dummy-url"

summary: |
  **開催日時：** 2026年X月X日（Y） 18:00 - 20:00<br>
  **場所：** オンライン (zoom)<br>
  **対象：** 広島大学の学生・教職員（どなたでも！）
  
  <br>
  
  **【申し込み方法】**<br>
  下のボタンからご登録ください。（※フライヤー内のQRコードもご利用いただけます）
INNER_EOF

# 5. データファイル（英語）を作成
cat << 'INNER_EOF' > data/en/sections/next-meeting.yaml
section:
  name: "Next Meeting"
  id: "next-meeting"
  enable: true
  weight: 2
  showOnNavbar: true
  
flyer_image: "images/site/flyer.png"
form_url: "https://forms.gle/dummy-url"

summary: |
  **Date & Time:** TBA, 2026 18:00 - 20:00<br>
  **Location:** Online (Zoom)<br>
  **Target:** All HU students and faculty members
  
  <br>
  
  **【How to Register】**<br>
  Please register via the button below. (You can also use the QR code on the flyer.)
INNER_EOF

echo "✅ カスタムレイアウトでの『次回ミーティング』作成が完了しました！"

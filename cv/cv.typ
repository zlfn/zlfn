#set page(margin:(x:30pt, y:40pt))
#set text(font:"Wavve PADO TTF", size:16pt)

= 박찬웅 | PARK CHANUNG | Kiroo(zlfn)
#show par: set block(spacing: 0.65em)
#set par(first-line-indent:1em, justify:true)

#set text(font:"JejuMyeongjo", size:13pt)
#box[
  뭐라고 자기소개를 할 지 모르겠어서 일단 아무말이나 쓰는데요 \
  Typst 생각보다 어렵네요 어떤 내용을 채워넣어야 할까요? \
  이 내용은 나중에 3줄 짜리 자기소개로 대체할 예정
]


#set text(font:"Wavve PADO TTF", size:15pt)
#set box(height:13pt)
#let linkedin_icon = box(image("assets/icons/linkedin.svg"))
#let github_icon = box(image("assets/icons/square-github.svg"))
#let email_icon = box(image("assets/icons/square-envelope-solid.svg"))
#let phone_icon = box(image("assets/icons/square-phone-solid.svg"))

#line(length:100%)

== 인적사항
#set text(font: "Noto Sans CJK KR", size:13pt)
#block(spacing:0pt, height:4pt)
#block(spacing:0pt, height:3pt)[#align(horizon)[
#box[#email_icon *Email* : ung\@zlfn.space]
#box(width:20pt)
#box[#github_icon *GitHub* : https://github.com/zlfn]
]]
#block(height:4pt)[#align(horizon)[
#box[#phone_icon *Phone* : +82 10-3242-7559]
#box(width:5pt)
#box[#linkedin_icon *LinkedIn* : https://www.linkedin.com/in/pcung]
]] \
*포항공과대학교* 무은재학부 1학년 재학 중\
2024.02 \~ \
*경기북과학고등학교* 졸업\
2021.03 \~ 2024.02
#block(spacing:0pt, height:0pt)

#line(length:100%)

#set text(font:"Wavve PADO TTF", size:15pt)
== 경력
#grid(columns:(20%, 80%),

stroke: (x,y) => if x == 0{
  (right: (
        paint: luma(180),
        thickness: 2pt,
        dash: "dotted"
      ))
    },
    [
#set text(font:"Wavve PADO TTF", size:13pt)
강두영 수학 연구소\
#set text(font: "Noto Sans CJK KR", size:12pt)
프론트엔드 개발\
#set text(font: "Noto Sans CJK KR", size:11pt)
2024.04 \~ / 프리랜서\
강남구 대치동, 원격
],[#box(inset:(x:7pt, y:0pt))[#set text(font: "Noto Sans CJK HK", size:12pt)
  *Typescript / Next.js / Apollo GraphQL*]
  #set text(font:"JejuMyeongjo", size:13pt)
#box(height:40pt, inset:(x:7pt, y:2pt))[
  수학 학원의 문제 데이터베이스 관리, pdf로 문제집 배포, 온라인 문제 은행 등을 제공하는 LMS 서비스 웹 프론트엔드를 개발하고 있습니다.\
]
])

#line(length:100%)

== 기술
#block(inset:0pt)[
  #set text(font:"Wavve PADO TTF", size:12pt)
  Language: 
  #set text(font: "Noto Sans CJK KR", size:11pt)
  Rust, C++, Typescript, Kotlin, Scala, Python\
  #set text(font:"Wavve PADO TTF", size:12pt)
  Web:
  #set text(font: "Noto Sans CJK KR", size:11pt)
  Next.js, Typescript, WebSocket\
  #set text(font:"Wavve PADO TTF", size:12pt)
  Infrastructure:
  #set text(font: "Noto Sans CJK KR", size:11pt)
  SELinux, NGINX, Docker, GCP\
  #set text(font:"Wavve PADO TTF", size:12pt)
  기타:
  #set text(font: "Noto Sans CJK KR", size:11pt)
  Git, Neovim, Minecraft, LLVM
]
#block(height:0pt, inset:0pt, above:1pt)
#line(length:100%)

== 프로젝트
#block(inset:(x:0pt, y:3pt))[=== Rust-GB #box[
  #set text(font: "Noto Sans CJK KR", size:10pt)
  Rust, Embedded, C, Assembly, LLVM\
]
#block(inset:0pt, spacing:0pt)[
  #set text(font: "Noto Sans CJK KR", size:11pt)
  #box[#github_icon #box(inset:(y:2pt))[https://github.com/zlfn/rust-gb : *★* 133]]\
  #set text(font: "Noto Sans CJK KR", size:11pt)
  *Rust Weekly*: https://discu.eu/weekly/rust/2024/38/\
]
#block(height:90pt, inset:(x:8pt, y:-9pt))[
  #set text(font:"JejuMyeongjo", size:13pt)
  Rust 코드를 닌텐도 게임보이에 컴파일하고, Rust로 게임보이 롬을 개발할 수 있는 API를 제공하는 프로젝트입니다. 게임보이의 CPU인 Z80(SM83)은 LLVM의 정식 타겟이 아니기 때문에, llvm-cbe와 GBDK를 이용하여 Rust->C->ASM의 과정을 거쳐 코드를 컴파일했습니다. \
  게임보이는 현대의 CPU와 다른 특성을 다수 가지고 있기 때문에 게임보이 소프트웨어를 Rust로 안전하게 모델링하는 것이 주요 과제가 되었습니다. \
]
]


=== Tritone #box[
  #set text(font: "Noto Sans CJK KR", size:10pt)
  Kotlin, Rust, Discord\
]
#block(inset:0pt, spacing:0pt)[
  #set text(font: "Noto Sans CJK KR", size:11pt)
  #box[#github_icon #box(inset:(y:2pt))[https://github.com/iroom-gbs/tritone : *★* 9]]\
]
#block(height:35pt, inset:(x:7pt, y:-12pt))[
  #set text(font:"JejuMyeongjo", size:13pt)
  Rust + Kotlin (Java Native Interface)을 이용한 마인크래프트 음성 채팅모드입니다. 현재는 Discord SDK가 Deprecated 되어 프로젝트가 중단되었지만, 만들었던 오픈소스 프로젝트 중에서 처음으로 외부 기여를 받았다는 의의가 있습니다.
]

=== GBS.WIKI #box[
  #set text(font: "Noto Sans CJK KR", size:10pt)
  CSS, FastAPI, Nginx, SEO, OAuth2\
]
#block(inset:0pt, spacing:0pt)[
  #set text(font: "Noto Sans CJK KR", size:11pt)
  #box[#github_icon #box(inset:(y:2pt))[https://github.com/Iroom-gbs/GBSWiki : *★* 2]]\
  #set text(font: "Noto Sans CJK KR", size:11pt)
  *Website*: https://gbs.wiki\
]
#block(inset:(x:7pt, y:-9pt))[
  #set text(font:"JejuMyeongjo", size:13pt)
  경기북과학고 교내 위키입니다. 프론트엔드 일부 개발과 운영, 유지 보수를 맡았습니다. SEO와 외부 서비스 연동, OAuth 등을 경험할 수 있었습니다. 고등학교를 졸업할 때 후배들에게 인수인계하며 서비스를 인수인계 하는 체계를 만드는 경험도 할 수 있었습니다.
]

#block()
#line(length:100%)

== 리서치
#block(inset:(x:0pt, y:5pt))[
  #set text(weight:"bold", font:"PT Serif", size:14pt)
  Optimization of 3D convex hull computation using OpenGL compute shaders
  #block(inset:(x:7pt, y:0pt), spacing:0pt)[
    #set text(font:"JejuMyeongjo", size:13pt)
    고등학교 졸업 연구입니다. OpenGL의 ComputeShader를 활용하여 3차원 Point Cloud에서의 Convex Hull을 계산하는 Quick Hull 알고리즘을 GPU 병렬 컴퓨팅으로 연산하여 CPU와의 속도를 비교하였습니다.
  ]
]
#line(length:100%)

== 오픈소스 기여
=== rust-lang/rust
#block(inset:0pt, spacing:0pt)[
  #set text(font: "Noto Sans CJK KR", size:12pt)
  *Pull Request*: https://github.com/rust-lang/rust/pull/131730\
]
#block(inset:(x:7pt, y:0pt), above:10pt,)[
  #set text(font:"JejuMyeongjo", size:13pt)
  러스트 언어 `core` 라이브러리의 중복 매크로를 제거하고 코드를 리팩토링하였습니다.
]

=== JuliaHubOSS/llvm-cbe
#block(inset:0pt, spacing:0pt)[
  #set text(font: "Noto Sans CJK KR", size:12pt)
  *Issue*: https://github.com/JuliaHubOSS/llvm-cbe/issues/207 외 다수\
  *Pull Request*: https://github.com/JuliaHubOSS/llvm-cbe/pull/210 외 다수\
]
#block(inset:(x:7pt, y:0pt), above:10pt,)[
  #set text(font:"JejuMyeongjo", size:13pt)
  llvm-cbe는 LLVM-IR을 C로 변환하는 백엔드입니다. 현재는 JuliaHub에서 관리하고 있습니다. Rust-GB 프로젝트를 진행하는 과정에서 최신 LLVM-19 지원, 빠진 Intrinsic 구현 등 프로젝트에 필요한 다양한 기여를 하였습니다.
]


=== trilbymedia/grav-plugin-custom-http-headers
#block(inset:0pt, spacing:0pt)[
  #set text(font: "Noto Sans CJK KR", size:12pt)
  *Issue*: https://github.com/trilbymedia/grav-plugin-custom-http-headers/issues/1\
  *Pull Request*: https://github.com/trilbymedia/grav-plugin-custom-http-headers/pull/4\
]
#block(inset:(x:7pt, y:0pt), above:10pt,)[
  #set text(font:"JejuMyeongjo", size:13pt)
  콘텐츠 관리 시스템(블로그 엔진)인 Grav의 준 공식 플러그인입니다. 플러그인 기본 설정에서 X-Frame-Options 헤더를 deny로 설정하여 플러그인이 Grav의 기본 기능과 충돌을 일으키는 문제가 있어, 해당 헤더를 config 파일에서 제외하는 기여를 하였습니다.
]

=== 현지화 기여
#block(inset:(x:7pt, y:0pt))[
  #set text(font:"Wavve PADO TTF", size:13pt)
  Minecraft: 
  #set text(font:"JejuMyeongjo", size:13pt)
  마인크래프트 번역은 유저 참여로 진행되는데, 2022년부터 한국어 번역 Proofreader (오픈소스 프로젝트의 Maintainer와 유사) 중 하나로 활동하고 있습니다.\
  #set text(font:"Wavve PADO TTF", size:11pt)
  이외에도 Grav, Optimus Manager QT 등 다양한 오픈소스/상용 소프트웨어에 번역 기여를 하였습니다.
]

#line(length:100%)

== 자격 / 시험
#block(inset:(x:7pt, y:0pt))[
  #set text(font:"Wavve PADO TTF", size:13pt)
  JLPT N2\
  운전면허 1종보통 (운전 경력 없음)\
]

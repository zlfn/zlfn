#set page(margin:(x:30pt, y:25pt))

#let text-style = (font: "Noto Sans KR", size: 11pt)
#set par(leading: 0.8em)

#set text(font:"Wavve PADO TTF", size:18pt)
= 박찬웅 | PARK CHANUNG | Kiroo(zlfn)

#set block(spacing: 1.1em)
#set par(first-line-indent:1em, justify:true)
#show link:underline

#set text(font:"Wavve PADO TTF", size:15pt)
#set box(height:11pt)
#let linkedin_icon = box(image("assets/icons/linkedin.svg"))
#let github_icon = box(image("assets/icons/square-github.svg"))
#let email_icon = box(image("assets/icons/square-envelope-solid.svg"))
#let phone_icon = box(image("assets/icons/square-phone-solid.svg"))

#set text(font: "Noto Sans KR", size:11pt)
#block(spacing:12pt, height:3pt)[#align(horizon)[
#box[#email_icon *Email* : #link("mailto:ung@zlfn.space")[ung\@zlfn.space]]
#box(width:5pt)
#box[#phone_icon *Phone* : +82 10 3242 7559]
#box(width:5pt)
#box[#github_icon *GitHub* : https://github.com/zlfn]
]]
#set text(font: "Noto Sans KR", size:11pt)
*포항공과대학교* 컴퓨터공학과 2학년 재학: 2024.02 \~ (GPA 3.92/4.3)

#align(center)[
  #line(length: 100%, stroke: (thickness: 0.4pt, paint: gray))
]

#let career-entry(
  role: none,
  company: none,
  period: none,
  location: none,
  stack: none,
  body: none,
) = (
  [
    #set par(leading: 0.6em)
    #set text(font: "Wavve PADO TTF", size: 12pt)
    #role
    #linebreak()
    #set text(font: "Noto Sans KR", size: 10pt)
    #company
    #linebreak()
    #set text(font: "Noto Sans KR", size: 9pt)
    #period
    #linebreak()
    #location
  ],
  [
    #pad(x: 13pt)[
      #set text(font: "Noto Sans KR", size: 11pt)
      #set par(first-line-indent: 0pt)
      *#stack*

      #body
    ]
  ],
)

#let career-section(..entries) = block[
  #grid(
    columns: (25%, 75%),
    inset: (x, y) => if y > 0 { (top: 20pt) } else { 0pt },
    stroke: (x, y) => if x == 0 {
      (right: (
        paint: luma(180),
        thickness: 2pt,
        dash: "dotted",
      ))
    },
    ..entries.pos().flatten(),
  )
]

#set text(font:"Wavve PADO TTF", size:14pt)
== 경력

#career-section(
  career-entry(
    role: [프론트엔드 개발자],
    company: [강두영 수학 연구소],
    period: [2024.04 \~ / 프리랜서],
    location: [서울특별시 강남구 대치동],
    stack: [Typescript / Next.js / Apollo GraphQL],
    body: [
      AI를 통한 수학 학원의 문제 데이터베이스 관리, 수업 문제집 배포, 온라인 문제 은행 등을 제공하는 LMS 서비스 웹 프론트엔드를 개발하고 있습니다.
    ],
  ),
  career-entry(
    role: [
      시스템 프로그래머\ 보안 엔지니어
    ],
    company: [하이퍼리즘 유한책임회사],
    period: [2024.12 \~ 2026.2 / 인턴],
    location: [서울특별시 관악구 봉천동],
    stack: [Rust / Typescript / Python / Web3 / Solidity / Solana / Go],
    body: [
      \$400M 이상의 디지털 자산을 관리하는 온체인 트랜잭션 보안 정책 레이어 설계 및 구현, 사내 HFT 시스템 유지보수, Solana 트랜잭션 파이프라인 개발, 사내 보안 인프라 취약점 점검 및 보안 태세 강화 등을 수행하였습니다.

      풀타임 인턴으로 입사하여 9개월 근무하였고, 학기 중에는 파트타임으로 근무하며 블록체인 시스템/인프라 업무를 지속하였습니다. 이후 프리랜서 보안 엔지니어로 전환하여 사내 도메인 지식을 바탕으로 보안 점검 업무를 수행하였습니다.
    ],
  ),
)

#align(center)[
  #line(length: 100%, stroke: (thickness: 0.4pt, paint: gray))
]


== 개인 프로젝트
#block(inset:(x:0pt, y:3pt))[
  #grid(
    columns: (1fr, auto),
    align: (left + top, right + top),
    [
      === Rust-GB #box[
        #set text(font: "Noto Sans KR", size:10pt)
        Rust, Embedded, C
      ]
      #block(inset:(x: 0pt, y: -6pt), spacing:11pt)[
        #set text(font: "Noto Sans KR", size:8pt)
        2024.09 - 진행 중
      ]
    ],
    [
      #set text(font: "Noto Sans KR", size:11pt)
      #box[#github_icon #box(inset:(y:2pt))[https://github.com/zlfn/rust-gb : *★* 256]]\
      *Rust Weekly*: https://discu.eu/weekly/rust/2024/38/
    ]
  )
]
#block(inset:(x:5pt, y:-3pt))[
  #set text(..text-style)
  Rust 코드를 닌텐도 게임보이에 컴파일할 수 있는 컴파일러 툴체인과, API를 제공하는 프로젝트입니다. 게임보이의 CPU 아키텍처인 SM83은 LLVM의 정식 타겟이 아니기 때문에, llvm-cbe와 GBDK를 이용하여 Rust->C->ASM의 과정을 거쳐 코드를 컴파일했고, 복잡한 빌드 체인을 구현하며 각 도구간 버전 호환 등 많은 기술적 난관을 극복하였습니다. \
  게임보이는 현대의 컴퓨터와 다른 특성을 다수 가지고 있기 때문에 게임보이 API를 Rust로 안전하게 디자인하는 것이 주요 과제가 되었고, 이 디자인을 GitHub Discussion을 통해 토론하며 좋은 API 디자인에 대해 고민할 수 있었습니다.
]

#v(0.3em)

#block(inset:(x:0pt, y:3pt))[
  #grid(
    columns: (1fr, auto),
    align: (left + top, right + top),
    [
      === LLVM-Z80 #box[
        #set text(font: "Noto Sans KR", size:10pt)
        LLVM, Compiler, Embedded, C++
      ]
      #block(inset:(x: 0pt, y: -6pt), spacing:11pt)[
        #set text(font: "Noto Sans KR", size:8pt)
        2026.03 - 진행 중
      ]
    ],
    [
      #set text(font: "Noto Sans KR", size:11pt)
      #box[#github_icon #box(inset:(y:2pt))[https://github.com/llvm-z80/llvm-z80 : *★* 35]]
    ]
  )
  #block(inset:(x:5pt, y:3pt))[
    #set text(..text-style)
    Rust-GB 프로젝트에서 LLVM-CBE를 통해 Rust 코드를 SM83 어셈블리로 우회 컴파일했던 경험을 바탕으로, Z80/SM83을 LLVM의 백엔드 타겟으로 구현하는 프로젝트입니다. GlobalISel 기반 명령어 선택, SDCC 툴체인 상호 운용 등 생태계 및 파생 프로젝트에 필요한 다양한 기능을 제공합니다.\
    프로젝트를 진행하며 거대한 현대 컴파일러 인프라가 작동하는 방식을 알 수 있었고, 몇 만 줄이 넘는 백엔드 코드를 작성하는 과정에 많은 부분에서 LLM과 코딩 에이전트를 이용하며 대규모 코드베이스를 AI의 도움으로 관리하는 경험과 AI 보조 코딩에 대한 노하우를 쌓을 수 있었습니다.
  ]
]

#v(0.3em)

#block(inset:(x:0pt, y:3pt))[
  #grid(
    columns: (1fr, auto),
    align: (left + top, right + top),
    [
      === GBS.WIKI #box[
        #set text(font: "Noto Sans KR", size:10pt)
        CSS, FastAPI, Nginx, SEO, OAuth2
      ]
      #block(inset:(x: 0pt, y: -6pt), spacing:11pt)[
        #set text(font: "Noto Sans KR", size:8pt)
        2022.03 - 2024.02
      ]
    ],
    [
      #set text(font: "Noto Sans KR", size:11pt)
      #box[#github_icon #box(inset:(y:2pt))[https://github.com/Iroom-gbs/GBSWiki : *★* 2]]\
      *Website*: https://gbs.wiki
    ]
  )
  #block(inset:(x:5pt, y:-3pt))[
    #set text(..text-style)
    경기북과학고등학교 교내 위키입니다. 오픈소스 스택을 이용하여 위키를 구성하였으며, OAuth API를 연동/제공하여 교내 인증 인프라를 구축하였습니다. Google Adsence 등 외부 서비스를 가져오는 방법을 배우고, 실제로 유저가 있는 라이브 서비스를 운영하는 경험을 쌓을 수 있었습니다. 또, 고등학교를 졸업할 때 후배들에게 인수인계하며 서비스를 인수인계 하는 체계를 만드는 경험도 할 수 있었습니다.
  ]
]

#pagebreak()

#block(inset:(x:0pt, y:3pt))[
  #grid(
    columns: (1fr, auto),
    align: (left + top, right + top),
    [
      === Tritone #box[
        #set text(font: "Noto Sans KR", size:10pt)
        Kotlin, Rust, Discord API
      ]
      #block(inset:(x: 0pt, y: -6pt), spacing:11pt)[
        #set text(font: "Noto Sans KR", size:8pt)
        2022.02 - 2022.09
      ]
    ],
    [
      #set text(font: "Noto Sans KR", size:11pt)
      #box[#github_icon #box(inset:(y:2pt))[https://github.com/iroom-gbs/tritone : *★* 9]]
    ]
  )
  #block(inset:(x:5pt, y:2pt))[
    #set text(..text-style)
    Rust 코드를 Kotlin / Java Native Interface를 통해 마인크래프트에 주입하여 게임에 특정 서버 플러그인에 의존하지 않는 음성 대화 기능을 추가하는 클라이언트 모딩 프로젝트입니다.
  ]
]


=== 미니 프로젝트
#block()[
  #block(inset: (x: 5pt, y: -4pt))[
    #set text(size: 11pt)
    #grid(
      columns: (1fr, auto),
      align: (left + top, right + top),
      column-gutter: 8pt,
      row-gutter: 8pt,
      
      [
        #box()[
          #set text(font: "Wavve PADO TTF")
          zlfn.space:
          #set text(..text-style)
          Zola를 이용한 개인 블로그입니다. (2026.04)
        ]
      ],
      [
        #set text(font: "Noto Sans KR", size: 11pt)
        #github_icon #box(inset:(y:2pt))[https://github.com/zlfn/zlfn-space]
      ],
      
      [
        #box()[
          #set text(font: "Wavve PADO TTF")
          Xylitol:
          #set text(..text-style)
          Amber로 작성한 Bash CLI 유틸리티입니다. (2025.11)
        ]
      ],

            [
        #set text(font: "Noto Sans KR", size: 11pt)
        #github_icon #box(inset:(y:2pt))[https://github.com/zlfn/torpedo]
      ],
  

      [
        #box()[
          #set text(font: "Wavve PADO TTF")
          ConvexGL:
          #set text(..text-style)
          GPGPU로 3차원 볼록껍질을 구하는 연구입니다. (2023.12)
        ]
      ],
      
      [
        #set text(font: "Noto Sans KR", size: 11pt)
        #github_icon #box(inset:(y:2pt))[https://github.com/zlfn/ConvexGL]
      ],
      [
        #box()[
          #set text(font: "Wavve PADO TTF")
          Torpedo:
          #set text(..text-style)
          HTML5로 제작한 탄막 슈팅 웹 게임입니다. (2023.07)
        ]
      ],
      [
        #set text(font: "Noto Sans KR", size: 11pt)
        #github_icon #box(inset:(y:2pt))[https://github.com/zlfn/torpedo]
      ],
  

      [
        #box()[
          #set text(font: "Wavve PADO TTF")
          CIRCUIT:
          #set text(..text-style)
          Windows API로 제작한 멀티플레이어 게임입니다. (2022.3)
        ]
      ],
      [
        #set text(font: "Noto Sans KR", size: 11pt)
        #github_icon #box(inset:(y:2pt))[https://github.com/zlfn/circuit]
      ],

      [
        #box()[
          #set text(font: "Wavve PADO TTF")
          EscapeGBS:
          #set text(..text-style)
          텍스트 어드벤처 장르의 웹 게임입니다. (2021.10)
        ]
      ],
      [
        #set text(font: "Noto Sans KR", size: 11pt)
        #github_icon #box(inset:(y:2pt))[https://github.com/zlfn/escapegbs]
      ],
    )
  ]
]

#align(center)[
  #line(length: 100%, stroke: (thickness: 0.4pt, paint: gray))
]

== 과제 프로젝트
#block(inset:(x:5pt, y:0pt))[
  #set text(font:"Wavve PADO TTF", size:13pt)
  CSED451 (컴퓨터 그래픽스) #box[
        #set text(font: "Noto Sans KR", size:10pt)
        *2025 가을학기*
      ]\
  #block(inset:0pt, spacing:5pt)[
  #set text(font: "Noto Sans KR", size:11pt)
  #box[#github_icon #box(inset:(y:2pt))[https://github.com/zlfn/cs451-assign]]\
  ]
  #block(inset:3pt, spacing:0pt)[
  #set text(..text-style)
  (2인 과제) OpenGL을 이용한 바다 렌더링 데모입니다. OpenGL 컴퓨트 셰이더를 이용한 GPGPU IFFT와 다양한 렌더링 기법을 활용하여 물리 법칙에 기반한 파도 시뮬레이션과 현실적인 해양 표면 렌더링을 구현하였습니다. GPU 셰이더 프로그래밍이 일반적인 프로그래밍과 어떻게 다른지 배울 수 있었고, 그래픽스에서 현실의 물리 법칙을 근사하기 위해 어떤 방법들을 사용하는지 알 수 있었습니다.
  ]
]
#block(inset:(x:7pt, y:0pt))[
  #set text(font:"Wavve PADO TTF", size:13pt)
  CSED702D (특론: 컴퓨터 시스템 설계) #box[
        #set text(font: "Noto Sans KR", size:10pt)
        *2025 가을학기*
      ]\
  #block(inset:0pt, spacing:5pt)[
  #set text(font: "Noto Sans KR", size:11pt)
  #box[#github_icon #box(inset:(y:2pt))[https://github.com/zlfn/cs702d-assign]]\
  ]
  #block(inset:3pt, spacing:0pt)[
  #set text(..text-style)
  (1인 과제) Term Project로 분산 레이트 리밋 프로토콜을 설계 및 구현하였습니다. global strict cap, low latency 등의 목표를 달성하기 위해 링 형태로 레이트 리밋을 전파하는 프로토콜을 구상하였고, 어떠한 기술적 목표를 얻기 위해 시스템 설계의 trade-off를 적절히 설정하는 방법을 배울 수 있었습니다.
  ]
]
#block(inset:(x:7pt, y:0pt))[
  #set text(font:"Wavve PADO TTF", size:13pt)
  CSED331 (소프트웨어 설계 방법) #box[
        #set text(font: "Noto Sans KR", size:10pt)
        *2024 가을학기*
      ]\
  #block(inset:0pt, spacing:5pt)[
  #set text(font: "Noto Sans KR", size:11pt)
  #box[#github_icon #box(inset:(y:2pt))[https://github.com/zlfn/cs332-project]]\
  ]
  #block(inset:3pt, spacing:0pt)[
  #set text(..text-style)
  (3인 과제) 분산 환경에서의 멀티 코어 정렬 알고리즘을 구현하였습니다. gRPC, protobuf를 노드간 통신에 이용하였고, zio를 통해 type-safe 비동기 함수형 프로그래밍을 하였습니다. stateful 구조에서 각 프로토콜의 장단점에 대해 알 수 있었고, 많은 팀원이 참가하는 팀 프로젝트에서 마이너한 테크 스택을 도입하였을 때 생기는 문제점들을 경험할 수 있었습니다.
  ]
]
#block()[
  #set text(font:"Wavve PADO TTF", size:10pt)
이외 수강 전공 과목 : 데이터 구조, 이산수학, 확률및통계, 알고리즘, 오토마타 및 형식 언어, 디지털시스템설계,
#text(fill: gray)[소프트웨어 작성 원리, 컴퓨터구조, 통신 및 네트워크 개론, 병렬 및 분산 컴퓨팅 (수강 중)]
]

#align(center)[
  #line(length: 100%, stroke: (thickness: 0.4pt, paint: gray))
]

=== 오픈소스 / 현지화 기여
#block(inset:(x:5pt, y:-4pt))[
  #set text(font:"Wavve PADO TTF", size:12pt)
  오픈소스 기여: 
  #set text(..text-style)
  Rust, ccxt, LLVM, llvm-cbe, Zola, Amber, wasmtime 등 다양한 오픈소스 레포지토리에 기능 추가 / 버그 수정 / 문서화 / 이슈 제기 등 기여를 하였습니다.
]
#block(inset:(x:5pt, y:0pt))[
  #set text(font:"Wavve PADO TTF", size:12pt)
  현지화 기여: 
  #set text(..text-style)
  마인크래프트 번역은 유저 참여로 진행되는데, 2022년부터 한국어 번역 Proofreader (오픈소스 프로젝트의 Maintainer와 유사) 중 하나로 활동하고 있습니다.\
  #set text(font:"Wavve PADO TTF", size:10pt)
  이외에도 Grav, Optimus Manager QT 등 다양한 오픈소스/상용 소프트웨어에 번역 기여를 하였습니다.
]

#align(center)[
  #line(length: 100%, stroke: (thickness: 0.4pt, paint: gray))
]

#set text(font:"Wavve PADO TTF", size:11pt)
기타 : JLPT N2, 운전 면허 1종 보통

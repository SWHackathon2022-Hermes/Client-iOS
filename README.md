# <img width=25px src=https://user-images.githubusercontent.com/76610340/175431446-8e3923d3-9418-4cda-af2b-44e26a69bbc1.png> Hermes-iOS

> **SW중심대학 공동해커톤 2022**  
> **프로젝트 기간 : 2022.06.24~ 2022.06.24**  
> 
> **휠체어 사용자를 위한 외출 보조 앱**  
>
> **사용언어: SwiftUI**  

<br><img width=1280 src="https://user-images.githubusercontent.com/76610340/175432388-99bbf4b4-3586-4faa-b0f0-07d0dd2f1c88.png">

## 🧑🏻‍💻 Hermes Team

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/seunggyun-jeong"><img src="https://user-images.githubusercontent.com/76610340/175435864-1f73aef9-ec25-4e9b-bf0e-61d3a8a26d3e.png" width="200px;" alt=""/><br />대구가톨릭대학교<br />정승균</td>
    <td align="center"><a href="https://github.com/jumining"><img src="https://user-images.githubusercontent.com/76610340/175436187-bc4d8810-87ac-4638-b13d-ecdde80ad404.png" width="200px;" alt=""/><br />인하대학교<br />임주민</td>
       <td align="center"><a href="https://github.com/NayounK1m"><img src="https://user-images.githubusercontent.com/76610340/175436205-453aeefb-2fa5-4e01-825a-b5201cff2f71.png" width="200px;" alt=""/><br />우송대학교<br />김나연</td>
          <td align="center"><a href="https://github.com/yujin37"><img src="https://user-images.githubusercontent.com/76610340/175436235-f5331a3f-88d4-4905-bbdc-4b445ec483ea.png" width="200px;" alt=""/><br />상명대학교<br />최유진</td>
             <td align="center"><img src="https://user-images.githubusercontent.com/76610340/175435986-1ea866a3-7ac7-474a-81ed-ff12d78d8759.png" width="200px;" alt=""/><br />숭실대학교<br />유나경 </td>
  </tr>
</table>

<br>

## 핵심 기능 구현 설명
|기능|스크린샷|
|:--:|:--:|
|전동휠체어 급속충전기 위치 안내|<img src="https://user-images.githubusercontent.com/76610340/175435097-21b44c7a-196f-412f-b632-67025a512a29.gif" width="200">|
|지하철 휠체어 리프트 위치 안내|<img src="https://user-images.githubusercontent.com/76610340/175435086-1884ae8d-dd26-4b53-a4ce-3c713f68306e.gif" width="200">|
|장애인 화장실 위치 안내|<img src="https://user-images.githubusercontent.com/76610340/175435124-a524ab4c-3c95-4484-a983-cc587ba2843f.gif" width="200">|
|휠체어가 가기 힘든 길 민원 등록|<img src="https://user-images.githubusercontent.com/76610340/175434379-fff3bba1-74e8-49ce-80c1-57cc4116e8e0.gif" width="200">|
|검색을 대신 해주는 챗봇 |<img src="https://user-images.githubusercontent.com/76610340/175434560-cde9162b-931b-41cb-a4ac-ae968dfa797e.gif" width="200">|
<br>

## <img width=25px src=https://user-images.githubusercontent.com/76610340/175431446-8e3923d3-9418-4cda-af2b-44e26a69bbc1.png> Hermes Notion

### 👉 [Hermes Notion 바로가기](https://www.notion.so/Hermes-55dde0987fad40d0a0648eedcf63b14e)

<br>

## Task분배

| 기능 | 개발 여부 | 담당자 |
|:----------|:----------:|:----:|
| LiftMap | ✅ | 승균 |
| ToiletMap | ✅ | 승균 |
| ChargerMap | ✅ | 승균 |
| ChatBot | ✅ | 주민 |
| Report | ✅ | 주민 |


<br>


## Foldering Convention
<details>
<summary>폴더링 컨벤션 보기</summary>
<div markdown="1">
```
📦 Hermes
|
+ 🗂 Configuration
|
+---—--🗂 Assets
│
+--—---🗂 Extensions
│
+-—----🗂 Fonts
│
|
+ 🗂 Sources
│         `
+-------🗂 Network
|
+-------🗂 View
│         └── 🗂 Map
│         └── 🗂 Toilet
│         └── 🗂 Charger
│         └── 🗂 Lift
│         └── 🗂 Report
│         └── 🗂 ChatBot
│
```
</div>
</details>
<br>


## Commit Convention
<details>
<summary>폴더링 컨벤션 보기</summary>
<div markdown="1">
[CHORE] 코드 수정, 내부 파일 수정, 주석
[FEAT] 새로운 기능 구현
[ADD] Feat 이외의 부수적인 코드 추가, 라이브러리 추가, 새로운 파일 생성 시, 에셋 추가
[FIX] 버그, 오류 해결
[DEL] 쓸모없는 코드 삭제
[DOCS] README나 WIKI 등의 문서 개정
[MOVE] 프로젝트 내 파일이나 코드의 이동
[RENAME] 파일 이름 변경이 있을 때 사용합니다
[REFACTOR] 전면 수정이 있을 때 사용합니다
[INIT] 프로젝트 생성
  </div>
</details>
<br>

## 깃 사용 전략
> Issue -> 브랜치 생성 -> Pull받고 작업 -> Commit -> Pull -> Push -> PR -> Merge

0. 새로운 작업이 진행 전, Pull을 반드시 진행합니다.
1. Issue는 기능 단위로 생성합니다.
2. Issue에 관한 Commit과 Push는 본인 브랜치로 진행합니다.
3. PR은 모든 작업이 완료된 후 진행합니다.

> 커밋 컨벤션
```
[CHORE] 코드 수정, 내부 파일 수정, 주석
[FEAT] 새로운 기능 구현
[ADD] Feat 이외의 부수적인 코드 추가, 라이브러리 추가, 새로운 파일 생성 시, 에셋 추가
[FIX] 버그, 오류 해결
[DEL] 쓸모없는 코드 삭제
[DOCS] README나 WIKI 등의 문서 개정
[MOVE] 프로젝트 내 파일이나 코드의 이동
[RENAME] 파일 이름 변경이 있을 때 사용합니다
[REFACTOR] 전면 수정이 있을 때 사용합니다
[INIT] 프로젝트 생성
```
> 브랜치 전략

- 브랜치는 각 `feat/이슈번호-큰기능명/세부기능명`으로 생성합니다.
- ex. feat/#21-MapView/UI



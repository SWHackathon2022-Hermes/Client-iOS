# <img width=25px src=https://user-images.githubusercontent.com/76610340/175431446-8e3923d3-9418-4cda-af2b-44e26a69bbc1.png> Hermes-iOS

> **SW중심대학 공동해커톤 2022(디지털전환을 이끄는 힘, 소프트웨어)**  
> **프로젝트 기간 : 2022.06.22(수)~ 2022.06.24(금)**  
> 
> **휠체어 사용자를 위한 외출 보조 앱**  
>
> **(SwiftUI 사용)**  

<br><img width=1230 src="https://user-images.githubusercontent.com/76610340/175432388-99bbf4b4-3586-4faa-b0f0-07d0dd2f1c88.png">

<br>

## 🧑🏻‍💻 Hermes Team

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/seunggyun-jeong"><img src="https://user-images.githubusercontent.com/76610340/175435864-1f73aef9-ec25-4e9b-bf0e-61d3a8a26d3e.png" width="200px;" alt=""/><br />정승균<br />(iOS Developer)</td>
    <td align="center"><a href="https://github.com/jumining"><img src="https://user-images.githubusercontent.com/76610340/175436187-bc4d8810-87ac-4638-b13d-ecdde80ad404.png" width="200px;" alt=""/><br />임주민<br />(iOS Developer)</td>
  <td align="center"><a href="https://github.com/NayounK1m"><img src="https://user-images.githubusercontent.com/76610340/175436205-453aeefb-2fa5-4e01-825a-b5201cff2f71.png" width="200px;" alt=""/><br />김나연<br />(BackEnd Developer)</td>
          <td align="center"><a href="https://github.com/yujin37"><img src="https://user-images.githubusercontent.com/76610340/175436235-f5331a3f-88d4-4905-bbdc-4b445ec483ea.png" width="200px;" alt=""/><br />최유진<br />(AI Developer)</td>
             <td align="center"><img src="https://user-images.githubusercontent.com/76610340/175435986-1ea866a3-7ac7-474a-81ed-ff12d78d8759.png" width="200px;" alt=""/><br />숭실대학교<br />유나경<br />(UX/UI Designer)</td>
        </tr>
</table>

<br>

<br>

## 🌱 프로젝트 배경/목표
- 전동휠체어 배터리가 없어져서 멈추면 혼자 있을때 아예 움직일 수가 없기 때문에 119나 경찰을 부르는 경우가 있어, 미리 가까운 급속충전기 위치를 안내해주는 것이 목표입니다. 
- 지하철을 이용하러 갈 때, 휠체어로 이동할 수 있는 길이 한정적이여서 지하철 내에 있는 휠체어 리프트의 위치를 안내해서 이용에 도움을 주는 것이 목표입니다.
- 지하철 내에 휠체어 사용자들이 이용할 수 있는 화장실의 위치를 안내해 이용에 도움을 주는 것이 목표입니다.
- 휠체어를 이용하다보면 고르지 않은 길과 타일에 바퀴가 잘 빠져서 혼자서 빠져나가기 힘들거나, 휠체어가 걸려 뒤로 넘어가서 위험한 일이 생기고는 합니다. 보도는 모든 사람이 이용하는 공공재로서 누구나 차별 받지 않고 이용할 수 있어야 한다는 점을 감안할 때, 해당 부분에서 도로의 타일이 튀어나와있거나 바퀴가 빠질 정도의 홈이 있는 등의 유형(type)을 선택 및 자세한 내용 작성과 사진 촬영 그리고 어디인지 위치 등록을 해서 불편을 해소해 주는 것이 목표입니다.

<br>


## ⚙️ 동작 방식(프로세스)

<details>
<summary>플로우 차트(IA) 보기</summary>
<div markdown="1">
<img width="996" alt="image" src="https://user-images.githubusercontent.com/76610340/175439212-a460c1ba-bcd0-4001-b772-99e026b172b2.png">
 </div>
</details>

<details>
<summary>기능 명세서 보기</summary>
<div markdown="1">
<img width="996" alt="image" src="https://user-images.githubusercontent.com/76610340/175439244-333a71c2-7456-48ad-8d43-a88a620afe2c.png">
</div>
</details>

<br>



## 💻 개발/배포 환경
XCode Version 13.4.1
iOS 13이상

``` 
클라이언트 개발 플랫폼 : iOS
클라이언트 개발 환경 : XCode
클라이언트 개발 언어 : Swift
클라이언트 개발 프레임워크 : SwiftUI
사용한 swift 디자인패턴 : MVVM
```

<br>

## 🧑🏻‍💻 핵심 기능 구현 설명

|기능|전동휠체어 급속충전기 위치 안내|지하철 휠체어 리프트 위치 안내|장애인 화장실 위치 안내|휠체어가 가기 힘든 길 민원 등록|검색을 대신 해주는 챗봇|
|:--:|:--:|:--:|:--:|:--:|:--:|
|스크린샷|<img src="https://user-images.githubusercontent.com/76610340/175446345-246b08c5-06b5-4ac7-b00e-4f206c33d1cf.gif" width="190">|<img src="https://user-images.githubusercontent.com/76610340/175435086-1884ae8d-dd26-4b53-a4ce-3c713f68306e.gif" width="190">|<img src="https://user-images.githubusercontent.com/76610340/175437023-821258fb-b8e4-4057-a548-fc2fe719c9a2.gif" width="190">|<img src="https://user-images.githubusercontent.com/76610340/175434379-fff3bba1-74e8-49ce-80c1-57cc4116e8e0.gif" width="190">|<img src="https://user-images.githubusercontent.com/76610340/175434560-cde9162b-931b-41cb-a4ac-ae968dfa797e.gif" width="190">|
|설명|MapKit 프레임워크 사용, 공공데이터 API를 URLSession을 활용하여 REST API 통신하여, JSON 형식의 데이터를 JSONDecoder로 파싱하여 Codable 프로토콜을 준수하는 구조체에 저장하여 활용하였습니다.|MapKit 프레임워크 사용, 공공데이터 API를 URLSession을 활용하여 REST API 통신하여, JSON 형식의 데이터를 JSONDecoder로 파싱하여 Codable 프로토콜을 준수하는 구조체에 저장하여 활용하였습니다.|MapKit 프레임워크 사용, 공공데이터 API를 URLSession을 활용하여 REST API 통신하여, JSON 형식의 데이터를 JSONDecoder로 파싱하여 Codable 프로토콜을 준수하는 구조체에 저장하여 활용하였습니다.|현재 위치 정보, 민원 카테고리, 상세 주소, 민원 내용을 입력한 뒤, 첨부파일에 핸드폰의 사진을 올려서 등록합니다. 필수 입력 항목이 입력되지 않았을 때 등록이 거부됩니다.|파이썬으로 구현된 챗봇은 사용자의 메세지에 맞는 대답을 합니다.|

<br>


## 📱 테스트 환경

```
Simulator Version 13.4.1 (977.2)
SimulatorKit 618
CoreSimulator 802.6.1
```

<br>

## 🧑🏻‍💻 Task분배

| 기능 | 개발 여부 | 담당자 |
|:----------|:----------:|:----:|
| LiftMap | ✅ | 승균 |
| ToiletMap | ✅ | 승균 |
| ChargerMap | ✅ | 승균 |
| ChatBot | ✅ | 주민 |
| Report | ✅ | 주민 |


<br>

## 📌 Foldering Convention

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
│        
+-------🗂 Network
|
+-------🗂 View
│         └── 🗂 Map
│         └── 🗂 Toilet
│         └── 🗂 Charger
│         └── 🗂 Lift
│         └── 🗂 Report
│         └── 🗂 ChatBot
│
```

<br>
</div>
</details>
<br>


## 📌 Commit Convention

<details>
<summary> 컨벤션 보기</summary>
<div markdown="1">
  
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
  
  </div>
</details>
<br>

## 📌 깃 사용 전략
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



<br>

## 📑 활용/참고정보
<details>
<summary> 참고자료 보기</summary>
<div markdown="1">
  > swift 참고자료
  URLSession : https://developer.apple.com/documentation/foundation/urlsession/
  JSONDecoder : https://developer.apple.com/documentation/foundation/jsondecoder/
  MapKit : https://developer.apple.com/documentation/mapkit/
  SwiftUI : https://developer.apple.com/xcode/swiftui/
  
  > 공공데이터 정보
  전동휠체어 급속충전기 운영 정보(서울교통공사): https://www.data.go.kr/data/15085994/fileData.do#/tab-layer-openapi
  서울 지하철 리프트 위치(서울열린데이터광장): https://data.seoul.go.kr/dataList/OA-21211/S/1/datasetView.
  수인선 장애인 화장실 위치(한국철도시설공단): https://www.data.go.kr/data/15041692/openapi.do
  </div>
</details>
<br>


## 👩‍👩‍👧‍👦 참가자 코멘트
- 정승균 :
- 임주민 : 
- 김나연 :
- 유나경 :
- 최유진 : 
- 
<br>

### <img width=25px src=https://user-images.githubusercontent.com/76610340/175431446-8e3923d3-9418-4cda-af2b-44e26a69bbc1.png> [Hermes 영상 Youtube 바로가기](https://www.)


### <img width=25px src=https://user-images.githubusercontent.com/76610340/175431446-8e3923d3-9418-4cda-af2b-44e26a69bbc1.png> [Hermes 문서 Notion 바로가기](https://www.notion.so/Hermes-55dde0987fad40d0a0648eedcf63b14e)



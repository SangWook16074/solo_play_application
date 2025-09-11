# 📱 Solo Play 프로젝트 (진행중)

서울에서 혼자서도 즐기는 데이트 코스 추천 앱

혼자 여행하며 혼자 식사하거나 조용히 시간을 보내는 사람들은 서울에서 자신에게 맞는 코스나 장소를 찾는 데 어려움을 겪습니다. 기존 여행 앱들은 주로 인기 관광지나 단체 중심의 정보만 제공하여, 혼자 여행하는 이용자의 경험을 충분히 지원하지 못합니다.
이에 따라, 혼자 여행하는 사람들에게 맞춤형 서울 여행 코스를 추천하는 앱을 기획했습니다. 사용자의 관심사와 이동 편의성을 반영해 개인화된 코스를 제공함으로써, 혼자서도 풍부하고 즐거운 여행 경험을 만들 수 있도록 하는 것을 목표로 합니다.

참여인원 전원 학업, 아르바이트, 인턴 등 작업에 사용할 수 있는 시간이 적어 천천히 프로젝트를 진행하고 있습니다.
주 1회 대면 회의, Slack 등 틈틈히 기능을 제작하며 완성해나가는 중입니다.

## 프로젝트 진행 이력

- 2024.09 - 2024.10 : 주제 및 아이디어 회의
- 2024.10 - 2024.11 : ERD, PRD, 프로젝트 생성 
- 2024.11 - 2024.05 : 프로젝트 개발 진행
- 2024.06 - 현재     : 디자인 요구사항 변경으로 인한 전체 UI 변경 및 개발 진행

## 참여 인원 소개

- PL : 한상욱
- Front - End : 한상욱, 김동욱
- Back - End : 허동현
- UI/UX Design : 백진아

## 🛠 기술 스택
- 프레임워크 : Flutter
- 상태관리 : BLoC
- 아키텍처 : MVVM + Clean Architecture
- 백엔드 : Spring Boot + MongoDB + JWT
- 기타 : Freezed / Equatable / Go_Router / Figma

## 💡 담당 역할

- 팀 프로젝트 및 Flutter 개발 리딩
- 회원가입 기능 및 자동 로그인 구축 및 로그인 기능 제작

## 📱 담당 제작 UI

<table>
  <tr>
    <td>
      <img src = https://github.com/user-attachments/assets/14de4ff9-c378-4240-a2f6-919d730dadca>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/84f61b52-0cc4-49c7-9cbc-d07871944b14>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/91ca1d63-8ac8-4adb-acfa-d375aab0221f>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/88c242db-8f28-4a3f-b75a-c7ed0f3f2a46>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/9e09dbdf-7583-4a54-ab7b-30490833c414>
    </td>
  </tr>
    <tr>
    <td>
      <img src = https://github.com/user-attachments/assets/9ccb0406-01ac-440b-b8f4-4d69f0f28946>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/125cd50e-8c34-4080-99f7-c5411fd6a10a>
    </td>
  </tr>
</table>

## 🤝 팀 리딩

### BLoC + Clean Architecture 구조 도입

초기에는 MVVM 패턴으로 프로젝트를 진행했지만, 기능이 늘어나면서 코드량이 급격히 증가하고 유지보수가 어려워졌습니다. 
이에 클린 아키텍처를 단계적으로 도입해 도메인, 데이터, 프레젠테이션 계층을 명확히 분리하고 코드 구조를 체계화했습니다.

```
lib
 ┣ src
 ┃ ┣ core // 앱 전역에서 사용되는 
 ┃ ┃ ┣ router
 ┃ ┃ ┣ style
 ┃ ┃ ┣ usecases // 앱 전역에서 사용되는 유스케이스
 ┃ ┃ ┣ utils // String, Network Utils 등
 ┃ ┃ ┗ widgets // 앱 전역에서 사용되는 위젯
 ┃ ┗ features // 기능별 모음
 ┃ ┃ ┣ feature 1
 ┃ ┃ ┃ ┣ data // 데이터 계층
 ┃ ┃ ┃ ┃ ┣ datasources // 원격, 로컬 API
 ┃ ┃ ┃ ┃ ┣ models // API 전용 모델
 ┃ ┃ ┃ ┃ ┣ repositories // repository 구현체
 ┃ ┃ ┃ ┣ domain // 도메인 계층
 ┃ ┃ ┃ ┃ ┣ entities // 내부 모델
 ┃ ┃ ┃ ┃ ┣ repositories
 ┃ ┃ ┃ ┃ ┗ usecases // 기능별 유스케이스
 ┃ ┃ ┃ ┗ presentation
 ┃ ┃ ┃ ┃ ┣ bloc // bloc 모음
 ┃ ┃ ┃ ┃ ┣ cubit // cubit 모음
 ┃ ┃ ┃ ┃ ┣ page // UI 의존성 주입 page
 ┃ ┃ ┃ ┃ ┣ sections // UI를 구성하는 각 영역
 ┃ ┃ ┃ ┃ ┣ views // UI 모음
 ┃ ┃ ┃ ┃ ┗ widgets // 위젯
 ┗ main.dart
```


또한, Bloc 패턴을 활용해 아키텍처를 팀 컨벤션화함으로써 팀원 모두가 동일한 구조로 코드를 작성할 수 있도록 했습니다. 
덕분에 프로젝트의 확장성과 유지보수성을 높이는 동시에, 팀 단위 개발에서도 일관성을 확보할 수 있었습니다.

### TDD 도입

초기에는 팀원과 함께 UI와 비즈니스 로직을 구현하는 데 집중했지만, 기능이 늘어나면서 코드 안정성이 문제가 되었고, 특히 UI에서는 중복 코드가 지속적으로 발생하여 재사용성이 떨어지는 문제가 있었습니다.

이를 해결하기 위해 TDD(Test-Driven Development)를 도입하여 단위 테스트를 필수적으로 작성하도록 했습니다. 
덕분에 코드 변경 시 안정성을 검증할 수 있었고, UI 위젯을 작은 단위로 구현하여 재사용 가능한 컴포넌트를 생산할 수 있었습니다.
그 결과, 프로젝트 전체 테스트 커버리지 90% 달성이라는 성과를 얻어 안정적이고 유지보수 가능한 코드베이스를 확보할 수 있었습니다.

<img width="599" height="80" alt="스크린샷 2025-09-11 오후 2 35 39" src="https://github.com/user-attachments/assets/9bfc5532-adfc-4817-97fd-e34b23af50cd" />


### Golden Test 도입

초기에는 팀원과 함께 UI를 시뮬레이터에서 확인하며 개발했지만, 앱 진입점 코드나 라우터 로직이 변경될 때 병합 충돌과 코드 손실이 자주 발생하는 문제가 있었습니다.

이를 해결하기 위해 골든 테스트(Golden Test)를 도입하여 테스트 환경에서 UI를 검증하도록 구성했습니다. 
덕분에 UI 변경으로 인한 의도치 않은 오류를 사전에 확인할 수 있었고, 병합 충돌과 코드 손실을 최소화하면서 안정적인 UI 개발 환경을 구축할 수 있었습니다.


## 🔥 주요 기여 및 성과

### 담당 기능 평균 커버리지 90% 이상 달성

TDD를 도입하여 기존 코드에는 테스트를 추가하고 이를 기반으로 리팩토링을 수행했습니다. 새로 제작되는 UI와 비즈니스 로직도 TDD로 개발함으로써, 
170개 이상의 테스트를 작성하여 프로젝트 전체 테스트 커버리지 90% 이상을 달성하고 안정적인 코드베이스를 확보할 수 있었습니다.

<img width="1183" height="519" alt="스크린샷 2025-09-11 오후 1 35 01" src="https://github.com/user-attachments/assets/1f93ccf7-3aa9-44a3-9435-550487919bba" />

### 복잡한 요구사항의 UI 제작

<img width="316" height="427" alt="육각형 그리드" src="https://github.com/user-attachments/assets/a5d01144-3222-4e89-9c29-c482769c1982" />

초기 UI 요구사항에서는 육각형 스타일의 그리드 기반 지도가 필요하여, CustomPainter를 활용해 HexagonGridTile을 제작함으로써 요구사항을 충족시켰습니다. 
이후 디자인 개편으로 해당 UI는 삭제되었지만, 제작 과정과 구현 방법은 블로그를 통해 공유하며 복잡한 위젯 제작 경험으로 정리했습니다.

[디자이너가 부탁한 육각형을 만들어보았다.](https://velog.io/@qazws78941/Flutter%EB%94%94%EC%9E%90%EC%9D%B4%EB%84%88%EA%B0%80-%EB%B6%80%ED%83%81%ED%95%9C-%EC%9C%A1%EA%B0%81%ED%98%95%EC%9D%84-%EB%A7%8C%EB%93%A4%EC%96%B4%EB%B3%B4%EC%95%98%EB%8B%A4)


## 🤔 트러블 슈팅

### CI 환경에서 Golden Test 에러 이슈

작업된 코드를 병합하는 과정에서 에러를 조기에 발견하기 위해 Github Actions 기반 CI를 구축하여 적용했습니다. 그러나 일부 Golden Test 케이스에서 CI가 지속적으로 실패하는 문제가 발생했습니다.

원인은 CI 환경 OS마다 Golden Test의 픽셀 미세 차이 때문이었으며, 이를 해결하기 위해 CI 환경을 기존 Ubuntu에서 MacOS로 변경하여 문제를 해결했습니다. 
다만, 향후 작업 환경이 Mac이 아닐 경우를 대비해, 디렉토리를 OS별로 구분하는 등의 추가 조치를 계획하고 있습니다.

이번 트러블슈팅 과정과 해결 방법은 블로그를 통해 공유하며, CI 환경에서 발생하는 UI 테스트 오류 대응 경험으로 정리했습니다.

[Github Actions CI/CD 워크플로우 중 Golden Test가 실패하는 에러 이슈 해결기록](https://velog.io/@qazws78941/Flutter-Github-Actions-CICD-%EC%9B%8C%ED%81%AC%ED%94%8C%EB%A1%9C%EC%9A%B0-%EC%A4%91-Golden-Test%EA%B0%80-%EC%8B%A4%ED%8C%A8%ED%95%98%EB%8A%94-%EC%97%90%EB%9F%AC-%EC%9D%B4%EC%8A%88-%ED%95%B4%EA%B2%B0%EA%B8%B0%EB%A1%9D)





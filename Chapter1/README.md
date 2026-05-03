# Chapter 1 - Windows in visionOS

## 📌 Summary (요약)
- visionOS에서 기본 UI인 **Window 기반 앱 구조**를 이해
- 2D View에 **깊이(Depth)**를 추가하여 공간감 있는 UI 구성 방법 학습
- SwiftUI의 상태 관리(`@State`, Binding)를 활용하여 UI를 실시간으로 업데이트
- Grid와 Slider를 활용해 **사용자가 직접 깊이를 조절하는 인터랙션 UI**를 구현


## 🧠 What I Learned (배운 점)
- `@State` + Binding 구조를 통해  
    → UI와 데이터가 실시간으로 연결되는 방식 이해 
   
- `ColorPicker(selection: $value)`에서  
    → `$`는 단순 값 전달이 아니라 **양방향 데이터 연결 (Binding)** 역할 
  
- Grid / GridRow를 통해  
    →  기존 VStack보다 더 **정렬된 테이블 형태 UI 구성 가능**  
  
- visionOS에서는  
    →  단순한 2D UI가 아니라 **Depth(깊이)가 중요한 UI 요소**로 작동  

- `.padding3D`를 통해  
    →  Z축까지 포함된 **공간 기반 레이아웃 개념**이 추가됨  
  
- `.windowResizability(.contentSize)`  
    →  Window 크기가 컨텐츠 크기에 맞춰 자동 조절됨  
    →  Window를 줄여도 UI가 잘리지 않음  
    →  콘텐츠 중심 레이아웃 설계 필요   

## 🔍 Key Concepts (핵심 개념)

### ▪ visionOS Window
- 2D UI지만 공간 안에 배치됨  
- Depth를 통해 3D 느낌 표현 가능  



### ▪ Depth
- Z축 방향 이동 개념  
- 정면에서는 차이 적음  
- 카메라 각도 변경 시 명확  



### ▪ Binding (`$`)
- 상태값을 직접 수정 가능하게 연결  
- 사용자 입력 → 상태 변경 → UI 반영  



### ▪ `.labelHidden()`
- label UI에서 숨김  
- 코드/접근성에서는 유지  



### ▪ Grid
- 행/열 기반 레이아웃  
- 표 형태 정렬 가능  



### ▪ GridRow
- Grid 안의 한 줄  
- 내부 요소는 열 기준 정렬  



### ▪ Circle 크기 계산 (minDiameter / diameterChange)
- minDiameter → 기본 크기  
- diameterChange → 증가량  
- index → 반복 순서 값  

- 계산 방식  
  → 기본 크기 + (증가량 × index)  .frame(height: minDiameter + diameterChange * Double(index))

- 결과  
  → 원이 뒤로 갈수록 점점 커짐  
  → Depth와 결합되어 원근감 형성  



### ▪ `.padding()` vs `.padding3D()`
- `.padding()` → 2D 여백  
- `.padding3D()` → 3D 공간 여백  



### ▪ Slider Label
- Slider 기능 설명  
- 접근성/구조용 텍스트  



## 💡 What Was Interesting (흥미로웠던 점)
- 정면에서는 Depth 차이가 거의 느껴지지 않음  
- 카메라 각도 변경 시 공간에서 움직이는 느낌 명확  

- `.padding3D`는 단순 레이어가 아니라  
  → 실제 공간에서 UI가 배치되는 느낌  

- Grid 정렬은 이해했지만  
  → VStack/HStack과 차이는 아직 명확하지 않음  



## ❗ Difficulties (어려웠던 점)
- Binding  
  → 개념은 이해했지만 실전 적용 기준이 모호  

- Grid / GridRow  
  → 장점 체감 부족  

- Depth 값  
  → 어느 정도가 적절한지 감 잡기 어려움  

- Frame 설정  
  → 적절한 크기 기준이 아직 없음  



## ❓ Questions (궁금한 점)
### Q1. 왜 Binding을 사용하는가?

- 사용자 입력값을 상태에 반영해야 함  
- 값 전달이 아니라 값 수정 가능해야 함  
- UI와 상태를 연결하기 위해 필요  



### Q2. `.labelHidden()`은 무엇인가?

- label을 화면에서만 숨김  
- UI는 깔끔하게 유지  
- 의미는 코드에 유지  



### Q3. Grid / GridRow는 왜 사용하는가?

- 여러 줄 UI를 열 기준으로 정렬  
- label + control 구조에 적합  



### Q4. Circle 크기 계산 방식은 어떻게 적용되는가?

- 기본 크기 + (증가량 × index) 구조  
- index 증가 → Circle 크기 증가  
- 일정 간격으로 크기 변화  
- Depth와 함께 원근감 형성  



### Q5. `.padding3D`는 왜 필요한가?

- visionOS는 3D 공간 UI  
- Z축까지 고려한 여백 필요  



### Q6. GridRow 여러 개 배치 구조

- Row 단위로 위 → 아래 배치  
- 각 Row는 동일 열 기준 정렬  



### Q7. Slider 안 Text의 역할

- Slider 기능 설명  
- 접근성/구조용 label  



## 🚀 Next Step (다음 단계)
### ▪ Continue practicing

- Circle 개수 늘리기  
- Circle 크기 계산 방식 변경해보기  
- 세 번째 색상 추가  
- ColorPicker 추가하여 색상 변경 기능 구현  
- Circle 대신 다른 Shape로 변경  
- 여러 Shape를 쌓아서 구성해보기  



### ▪ Challenge yourself

- Grid 기반 단어 UI 만들기  
- 자신을 표현하는 단어 배치  
- 각 단어에 뒤쪽 padding 적용  
- 추가 도전  
  → 랜덤으로 하나의 단어만 더 앞으로 나오게 하기  
  → 가장 앞에 있는 단어 맞추기  



### ▪ What’s next?

- 다음 튜토리얼에서는 Window 개념 확장  
- Ornament 기능 학습  
- Window 주변에 UI 요소 추가 방법 이해  
- visionOS 특화 UI 구조 학습 확장  

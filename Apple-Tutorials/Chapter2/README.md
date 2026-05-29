# 🧠 visionOS Playground Tutorials

![Platform](https://img.shields.io/badge/platform-visionOS-blue)
![Language](https://img.shields.io/badge/language-Swift-orange)
![Framework](https://img.shields.io/badge/framework-SwiftUI-green)

---

# Chapter 1 - Windows in visionOS

## 📌 Summary (요약)
- visionOS의 고유 UI 요소인 **Ornament** 개념 이해
- Window와 분리되지 않으면서 항상 접근 가능한 UI 구성 방법 학습
- `openWindow`를 활용한 다중 Window 생성 방식 이해
- `@Environment`를 활용한 visionOS 환경 값 접근 방식 학습
- Codable 데이터를 활용하여 Window에 데이터를 전달하는 방식 학습
- Slider, TextField, Color Picker 등을 Ornament 안에 배치하여 인터랙션 UI 구현


## 🧠 What I Learned (배운 점)
- Ornament  
  Window 앞쪽에 떠 있는 visionOS 전용 UI 요소  

- Ornament UI  
  Window 내용과 겹치지 않으면서 항상 접근 가능  

- `@Environment(\.openWindow)`  
  Environment를 통해 Window 제어 기능 접근 가능  

- `WindowGroup(for:)`  
  특정 데이터 타입 기반으로 Window 생성 가능  

- `Codable`  
  데이터를 Window 간 전달 가능하게 만듦  

- `Binding`
  여러 View가 같은 데이터를 공유하고 수정 가능  

- `.windowStyle(.plain)`  
  기본 visionOS Window 스타일 제거 가능  

- `.glassBackgroundEffect()`  
  visionOS 스타일의 반투명 유리 재질 효과 제공  
  
---

## 🔍 Key Concepts (핵심 개념)

### ▪ Ornament
- visionOS 전용 Window UI 요소  
- Window 앞쪽에 떠 있는 형태  
- Window와 함께 이동  
- 스크롤과 관계없이 항상 접근 가능  

---

### ▪ `openWindow`
- 새로운 Window 생성 기능  
- 특정 WindowGroup을 열 때 사용  

---

### ▪ `@Environment`
- 시스템 환경 값 접근 방식  
- Window 열기, dismiss 등 시스템 기능 접근 가능  

---

### ▪ `WindowGroup(for:)`
- 특정 데이터 타입 기반 Window 생성  
- Window마다 다른 데이터 전달 가능  

---

### ▪ `Binding`
- 여러 View가 같은 상태값 공유 가능  
- 값 수정 시 UI 자동 업데이트  

---

### ▪ `Codable`
- 데이터를 저장/전달 가능한 형태로 변환 가능  
- Window 간 데이터 전달에 사용  

---

### ▪ `Hashable`
- 데이터를 고유하게 식별 가능하게 함  
- List, Dictionary, Window 식별 등에 사용  

---

### ▪ `.glassBackgroundEffect()`
- visionOS 스타일 유리 배경 효과  
- 반투명 공간 UI 느낌 제공  

---

### ▪ `.windowStyle(.plain)`
- 기본 visionOS Window 프레임 제거  
- 기본 시스템 스타일 최소화 가능  

---

### ▪ `.multilineTextAlignment()`
- 여러 줄 Text 정렬 방식 설정  
- `.center` 사용 시 가운데 정렬 가능  

---

### ▪ TextField Axis
- TextField 스크롤 방향 설정  
- `.vertical` 사용 시 줄바꿈 가능  
- 긴 텍스트 입력 시 세로 확장 가능  

---

### ▪ `attachAnchor`
- Ornament가 Window 어디에 붙는지 결정  

---

### ▪ `.scene(.bottom)`
- Scene 기준 아래쪽 위치 의미  
- Ornament 위치 기준점 설정  


---

## 💡 What Was Interesting (흥미로웠던 점)
- Ornament가 Window와 함께 움직이지만  
  스크롤에는 영향을 받지 않는 점이 인상적이었음  

- `.glassBackgroundEffect()`를 적용했을 때  
  visionOS 특유의 공간 UI 느낌이 강하게 느껴졌음  

- Window마다 서로 다른 데이터를 가질 수 있다는 점이  
  기존 iOS 앱 구조와 다르게 느껴졌음  

- `.windowStyle(.plain)` 적용 시  
  기본 시스템 Window 스타일이 크게 줄어드는 점이 흥미로웠음  


---

## ❗ Difficulties (어려웠던 점)
- `@Environment(\.openWindow)` 구조가 처음에는 매우 낯설었음  

- `Binding`과 `@State` 그리고 `@Environment` 의 역할 차이를 완전히 이해하기 어려웠음  

- `WindowGroup(for:)`가 데이터를 어떻게 Window에 전달하는지 이해하기 어려웠음  

- Ornament 위치 기준(scene / attachAnchor)이 공간 기준이라 감 잡기 어려웠음  

- 기본 Window 프레임과 실제 컨텐츠 영역의 관계 이해가 어려웠음  

---

## ❓ Questions (궁금한 점) 여기서부터 수정

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

---

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

---

## 🔗 References (참고 자료)

- visionOS Overview  
  https://developer.apple.com/visionos/

- SwiftUI Documentation  
  https://developer.apple.com/documentation/swiftui

- Material
  https://developer.apple.com/documentation/swiftui/material

- State
  https://developer.apple.com/documentation/swiftui/state

- Binding  
  https://developer.apple.com/documentation/swiftui/binding

- Grid  
  https://developer.apple.com/documentation/swiftui/grid

- Interacting with your app in the visionOS simulator  
  https://developer.apple.com/documentation/xcode/interacting-with-your-app-in-the-visionos-simulator
  
---

# Chapter 1 - Windows in visionOS

## 📌 Summary
- Understand the **Window-based app structure**, the core UI in visionOS  
- Learn how to add **Depth** to 2D Views to create spatial UI  
- Use SwiftUI state management (`@State`, Binding) to update UI in real time  
- Implement an interactive UI where users can **directly control depth** using Grid and Slider  


## 🧠 What I Learned
- Through the `@State` + Binding structure  
    → Learned how UI and data are connected in real time  
   
- In `ColorPicker(selection: $value)`  
    → `$` is not just value passing but **two-way data binding (Binding)**  
  
- Using Grid / GridRow  
    → Able to create a more **structured table-like layout** compared to VStack  
  
- In visionOS  
    → UI is not just 2D, but **Depth is a key UI element**  

- With `.padding3D`  
    → Introduced a **spatial layout concept including the Z-axis**  
  
- `.windowResizability(.contentSize)`  
    → Window size automatically adjusts to content  
    → UI does not get clipped when the window shrinks  
    → Requires a content-driven layout approach  

---

## 🔍 Key Concepts

### ▪ visionOS Window
- A 2D UI placed in a spatial environment  
- Can express a 3D feel through Depth  


### ▪ Depth
- Concept of movement along the Z-axis  
- Minimal difference from the front view  
- Becomes clear when changing camera angle  


### ▪ Binding (`$`)
- Connects state so it can be directly modified  
- User input → state change → UI update  


### ▪ `.labelHidden()`
- Hides the label in UI  
- Keeps it in code/accessibility  


### ▪ Grid
- Row/column-based layout  
- Enables table-like alignment  


### ▪ GridRow
- A single row inside Grid  
- Elements are aligned based on columns  


### ▪ Circle size calculation (minDiameter / diameterChange)
- minDiameter → base size  
- diameterChange → increment value  
- index → iteration order  

- Calculation method  
  → base size + (increment × index)  
  → `.frame(height: minDiameter + diameterChange * Double(index))`

- Result  
  → Circles gradually increase in size toward the back  
  → Creates perspective when combined with Depth  


### ▪ `.padding()` vs `.padding3D()`
- `.padding()` → 2D spacing  
- `.padding3D()` → 3D spatial spacing  


### ▪ Slider Label
- Describes the function of the Slider  
- Text for accessibility/structure  

---

## 💡 What Was Interesting
- Depth difference is barely noticeable from the front view  
- Becomes clearly visible when changing the camera angle  

- `.padding3D` is not just a layer  
  → It feels like UI is placed in actual space  

- Grid alignment is understood  
  → But the difference from VStack/HStack is still unclear  

---

## ❗ Difficulties
- Binding  
  → Concept is understood, but real-world usage is still unclear  

- Grid / GridRow  
  → Hard to feel the practical advantage  

- Depth values  
  → Difficult to determine appropriate values  

- Frame settings  
  → No clear 기준 for sizing yet  

---

## ❓ Questions

### Q1. Why use Binding?
- User input needs to update state  
- Not just passing values, but modifying them  
- Required to connect UI and state  


### Q2. What is `.labelHidden()`?
- Hides label only in UI  
- Keeps UI clean  
- Preserves meaning in code  


### Q3. Why use Grid / GridRow?
- Aligns multi-row UI based on columns  
- Suitable for label + control structure  


### Q4. How is Circle size calculation applied?
- Structure: base size + (increment × index)  
- As index increases → Circle size increases  
- Size changes at consistent intervals  
- Creates perspective with Depth  


### Q5. Why is `.padding3D` needed?
- visionOS uses spatial UI  
- Requires spacing that considers the Z-axis  


### Q6. Multiple GridRow layout structure
- Rows are arranged top → bottom  
- Each row aligns based on the same column 기준  


### Q7. Role of Text inside Slider
- Describes the Slider’s function  
- Label for accessibility/structure  

---

## 🚀 Next Step

### ▪ Continue practicing
- Increase the number of Circles  
- Modify Circle size calculation  
- Add a third color  
- Add ColorPicker to change colors  
- Replace Circle with other Shapes  
- Stack multiple Shapes  


### ▪ Challenge yourself
- Create a Grid-based word UI  
- Arrange words that represent yourself  
- Apply padding behind each word  

- Additional challenge  
  → Randomly bring one word forward  
  → Make users guess the front word  


### ▪ What’s next?
- Next tutorial expands the Window concept  
- Learn Ornament features  
- Understand how to add UI elements around a Window  
- Expand visionOS-specific UI structure understanding  

---

## 🔗 References

- visionOS Overview  
  https://developer.apple.com/visionos/

- SwiftUI Documentation  
  https://developer.apple.com/documentation/swiftui

- Material
  https://developer.apple.com/documentation/swiftui/material

- State
  https://developer.apple.com/documentation/swiftui/state

- Binding  
  https://developer.apple.com/documentation/swiftui/binding

- Grid  
  https://developer.apple.com/documentation/swiftui/grid

- Interacting with your app in the visionOS simulator  
  https://developer.apple.com/documentation/xcode/interacting-with-your-app-in-the-visionos-simulator


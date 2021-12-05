# 첫 iOS 도전기
## Xcode
### 1. 새 프로젝트 만들기
#### 1) Xcode를 실행하고, Create a new Xcode project를 클릭한다.
<img width="80%" alt="스크린샷 2021-12-06 오전 1 42 56" src="https://user-images.githubusercontent.com/68676844/144755493-b2fc9635-35a6-417d-a42d-3d13ac6a90ec.png">

#### 2) App을 선택한다. 
<img width="80%" alt="스크린샷 2021-12-06 오전 1 43 12" src="https://user-images.githubusercontent.com/68676844/144755504-6224efe2-e3a1-4ed2-b041-3fef02e0bdf0.png">
- APP: View를 사용하여 개발할 때 사용하는 템플릿으로, 일반적으로 가장 많이 사용한다. 
- Document App: 데이터를 저장해야하는 문서 기반의 앱을 만들 때 사용한다. 
- Game: 그래픽 처리를 위한 OpenGL이 포함되어 있다.
- Augmented Reality App: 증강현실(AR)개발 시 사용한다. 
- Sticker Pack App : iMessage 용 스티커 팩 앱 개발시 사용한다. (문자메시지에서 쉽게 스티커를 보낼 수 있도록)
- iMessage App


#### 3) project option 선택
<img width="80%" alt="스크린샷 2021-12-06 오전 1 44 52" src="https://user-images.githubusercontent.com/68676844/144755507-0d736d98-219e-4aee-a099-20b1f99ac4c0.png">
- Product Name: Project 이름으로 앱의 이름이 된다. 
- Team: 앱스토어에 등록된 개발자명. 나는 당분간 학습용으로만 사용할 것이어서 따로 등록하지 않았다.
- Organization Identifier: 조직 식별자로 보통 도매인 주소를 역순으로 입력한다. 앱스토어에 등록하기 위해서라면 반드시 적어주어야 한다. 
- Interface: 사용하고자하는 인터페이스로 나는 스토리보드를 선택했다. 
- Language: 개발하고자하는 언어를 선택한다. 

#### 4) 프로젝트 생성 완료
<img width="80%" alt="스크린샷 2021-12-06 오전 1 45 12" src="https://user-images.githubusercontent.com/68676844/144755513-441314b1-6b14-4331-be96-60146814e857.png">
- AppDelegate: 앱의 Life Cycle 관련 내용
- SceneDelegate: UI의 Life Cycle 관련 내용
- ViewController: 뷰에서 처리하는 내용을 작성한다. 하나의 뷰에 하나의 클래스로 대응된다.
- Main: 실제로 어떻게 보이는지 볼 수 있는 뷰 파일 (storyboard)
- Assets: 앱의 아이콘 설정
- LaunchScreen: 스플래시 화면
- Info: 앱이 실행될 때 필요한 정보를 가지고 있는 파일

### 2. Hello World 출력하기
- Auto Layout을 활용하였다.
- command + shift + L (또는 우측 상단 + 버튼 클릭)
- Lable 추가 (가운데 정렬 후 Alignment constraints 추가)
<img width="520" alt="스크린샷 2021-12-06 오전 2 41 02" src="https://user-images.githubusercontent.com/68676844/144757353-ab92a4f0-f594-4198-8b12-9ca909148d06.png">

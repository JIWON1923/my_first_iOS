# 첫 iOS 도전기
## Xcode
### 1. 새 프로젝트 만들기
1) Xcode를 실행하고, Create a new Xcode project를 클릭한다.
<img width="80%" src="https://user-images.githubusercontent.com/68676844/144755493-b2fc9635-35a6-417d-a42d-3d13ac6a90ec.png">

2) App을 선택한다. 
<img width="80%"  src="https://user-images.githubusercontent.com/68676844/144755504-6224efe2-e3a1-4ed2-b041-3fef02e0bdf0.png">
- APP: View를 사용하여 개발할 때 사용하는 템플릿으로, 일반적으로 가장 많이 사용한다. 
- Document App: 데이터를 저장해야하는 문서 기반의 앱을 만들 때 사용한다. 
- Game: 그래픽 처리를 위한 OpenGL이 포함되어 있다.
- Augmented Reality App: 증강현실(AR)개발 시 사용한다. 
- Sticker Pack App : iMessage 용 스티커 팩 앱 개발시 사용한다. (문자메시지에서 쉽게 스티커를 보낼 수 있도록)
- iMessage App


3) project option 선택
<img width="80%"  src="https://user-images.githubusercontent.com/68676844/144755507-0d736d98-219e-4aee-a099-20b1f99ac4c0.png">


- Product Name: Project 이름으로 앱의 이름이 된다. 
- Team: 앱스토어에 등록된 개발자명. 나는 당분간 학습용으로만 사용할 것이어서 따로 등록하지 않았다.
- Organization Identifier: 조직 식별자로 보통 도매인 주소를 역순으로 입력한다. 앱스토어에 등록하기 위해서라면 반드시 적어주어야 한다. 
- Interface: 사용하고자하는 인터페이스로 나는 스토리보드를 선택했다. 
- Language: 개발하고자하는 언어를 선택한다. 

4) 프로젝트 생성 완료
<img width="80%" src="https://user-images.githubusercontent.com/68676844/144755513-441314b1-6b14-4331-be96-60146814e857.png">

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
<img width="520" src="https://user-images.githubusercontent.com/68676844/144757353-ab92a4f0-f594-4198-8b12-9ca909148d06.png">

### 3. Button 구현하기
- Lable과 같은 형태로 Button 추가
- Assistent를 이용하여 Button 함수 추가 (Assistent가 제대로 나오지 않는 경우 Xcode 재실행)
- Button을 클릭할 때 마다 console에 click 출력

결과화면
<img width="520" src="https://user-images.githubusercontent.com/68676844/144887294-f96214ac-cf54-4296-bad1-05c3ce07cf00.png">

<img width="80%"  src="https://user-images.githubusercontent.com/68676844/144887279-122fb334-a5c3-49f5-ad85-97e055bf473b.png">


4. Navigation Bar

0) Initial View Controller
<img width="80%" src="https://user-images.githubusercontent.com/68676844/145060266-371666c7-d4da-46b5-997e-05afed6c5fbb.png">

- initial view 는 시작점이다.
- is initial view controller에 체크표시가 있을 때 화살표가 활성화된다.
- 즉, 시작점을 설정하고자 할 때 위 체크박스를 표시한다.
- 또한, initial view를 찾고자 할 때 스토리보드에 화살표 표시가 되어 있는것이 initial view임을 알 수 있다.


1) Navigation Collector 만들기
<img width="793"  src="https://user-images.githubusercontent.com/68676844/145061681-4cae1093-a5a6-46d9-8878-0db28f09f568.png">

<img width="1440"  src="https://user-images.githubusercontent.com/68676844/145061689-453b0203-6438-4771-b95c-9472da92ff4b.png">
- 화살표는 Navigation controller가 root view를 관장함을 의미한다. 
- Navigation은 화면이 아님에 주의한다.

2) Navigation Collector를 initial view로 설정

<img width="1440" src="https://user-images.githubusercontent.com/68676844/145062139-6aef9bfb-edce-4dbc-8b68-eca3217cf372.png">

3) Root View와 View Controller class 연결

<img width="1440" src="https://user-images.githubusercontent.com/68676844/145063532-8339c223-5f19-4adc-a75f-a67579e1c61b.png">

4) 두 번째 view를 위한 class 생성 (DetailController.swift)


``` swift
import UIKit
class DetailController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
```


5) detail view에 위 클래스 연결 및 id 설정

<img width="1440" src="https://user-images.githubusercontent.com/68676844/145066611-834188da-f575-4ad0-8667-682358e44d4a.png">


6) detail view를 navigation에 추가
- move 버튼의 클릭 이벤트 생성 후 코드 작성


``` swift
    @IBAction func Click_MoveBtn(_ sender: Any) {
        
        // 1단계 : 스토리보드에서 이동 할 컨트롤러 찾기 : id 이용, 옵셔널 바인딩
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController"){
            
            // 2단계: 찾은 컨트롤러를 네비게이션에 넣기
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
    }
```


1단계 : 이동할 스토리보드 찾기
2단계 : 해당 스토리보드를 네비게이션에 넣기

7) 결과


<img height="500" src = "https://user-images.githubusercontent.com/68676844/145070254-f9670b84-6621-4846-aff4-577eed1ddaeb.gif">

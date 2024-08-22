import 'package:animonster/common/styles.dart';
import 'package:animonster/presentation/pages/home/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _firstTargetKey = GlobalKey(); // 사전예약
  final GlobalKey _secondTargetKey = GlobalKey(); // 소개
  final GlobalKey _thirdTargetKey = GlobalKey(); // 특징
  final GlobalKey _fourthTargetKey = GlobalKey(); // 이벤트(연결안됨)
  final GlobalKey buttonKey = GlobalKey(); // 사전예약버튼
  OverlayEntry? overlayEntry;

  // 소개 //
  List<String> intro = [
    '다양하게 준비 되어 있는 캐릭터와 리소스',
    '리소스에서 원하는 장면과 상황을 선택',
    '개성있는 대화를 통해 시나리오 만들기',
    '장면과 장면을 이어 붙혀 최종 작품 완성'
  ];

  // 특징 //
  List<String> point = [
    '다양한 설정의 롤플레이 시나리오 제공',
    '롤플레이를 즐기면서 내 캐릭터 능력치도 업! 업!',
    '원작 캐릭터 보다 더 매력적인 나만의 캐릭터 육성'
  ];

  void _showOrRemoveModal(BuildContext context, GlobalKey key) {
    _scrollToTarget(_firstTargetKey);
    if (overlayEntry != null) {
      overlayEntry?.remove();
      overlayEntry = null;
      return;
    }

    final renderBox = key.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: position.dy + size.height + 10,
        left: position.dx / 2.5,
        width: size.width * 2,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/images/image-5-150x150.png'),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    '이름',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(
                    width: double.maxFinite,
                    height: 45,
                    child: TextField(
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: '이름을 입력해 주세요.',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '전화번호',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: double.maxFinite,
                    height: 45,
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: const InputDecoration(
                        hintText: '전화번호를 입력해 주세요.',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      overlayEntry?.remove();
                      overlayEntry = null;
                      print('사전 예약 완료');
                    },
                    child: Center(
                      child: Container(
                        width: double.maxFinite,
                        height: 50,
                        decoration:
                            const BoxDecoration(color: Colors.deepPurpleAccent),
                        child: const Center(
                          child: Text(
                            '사전 예약 하기',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry!);
  }

  final List<String> _menu = ['사전 예약', '소개', '특징', '이벤트'];
  String? selectedMenu;

  @override
  void initState() {
    super.initState();
  }

  void _scrollToTop() {
    setState(() {
      _scrollController.jumpTo(0);
    });
  }

  void _scrollToTarget(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context);
    }
  }

  void _showMenu() {
    if (overlayEntry != null) {
      return;
    }

    final overlay = Overlay.of(context);

    overlayEntry = OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _removeOverlay,
        child: _buildMenuOverlay(),
      ),
    );

    overlay.insert(overlayEntry!);
  }

  void _removeOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  Widget _buildMenuOverlay() {
    return Stack(
      children: [
        Positioned(
          top: 140,
          left: 0,
          right: 0,
          child: Material(
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _buildMenuItems(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildMenuItems() {
    return _menu.asMap().entries.map((entry) {
      int idx = entry.key;
      String value = entry.value;

      GlobalKey targetKey = _getTargetKey(idx);

      return ListTile(
        title: Text(value),
        onTap: () {
          setState(() {
            selectedMenu = value;
            _scrollToTarget(targetKey);
          });
          _removeOverlay();
        },
      );
    }).toList();
  }

  GlobalKey _getTargetKey(int index) {
    switch (index) {
      case 0:
        return _firstTargetKey;
      case 1:
        return _secondTargetKey;
      case 2:
        return _thirdTargetKey;
      default:
        return _fourthTargetKey;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: Image.asset('assets/icons/Logo_EN.png',
                        fit: BoxFit.fill),
                  ),
                  GestureDetector(
                    onTap: _showMenu,
                    child: const Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 30,
                          child: Text(
                            '최애 캐릭터와 채팅만 해도,',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                          child: Text(
                            '멋진 라노베 완성!',
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                                '내가 좋아하는 캐릭터를 모으고, 캐릭터와 롤플레이/채팅을 하면, Ai가 알아서 작품을 만들어 줍니다. 시나리오 생성, 맥락 설정, 문장 다듬기가 자동으로 진행되어, 누구나 쉽게 고급 글쓰기가 가능합니다. 또한, 완성된 스토리에 맞는 웹툰 이미지를 Ai가 자동으로 생성하여 나만의 웹툰을 완성 할 수 있습니다. 누구나 웹 소설, 웹툰 작가가 되어 수익을 창출 할 수 있습니다.'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Image.asset(
                                'assets/images/Google-Play.png',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 50,
                              child: Image.asset('assets/images/App-Store.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          key: buttonKey,
                          onTap: () {
                            _showOrRemoveModal(context, buttonKey);
                          },
                          child: Container(
                            key: _firstTargetKey,
                            width: 150,
                            height: 60,
                            decoration: const BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '사전예약하기',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: Image.asset(
                              'assets/images/00012-4230116629-1.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              '캐릭터를 재해석 하고, 나만의 방식으로 성장 시켜, 더욱 멋진 모습으로 스토리에 등장 시켜보세요.'),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Light-Novel.png',
                                width: 150,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Image.asset(
                                'assets/images/Gen-Image.png',
                                width: 150,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/rolePlay.png',
                                width: 150,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Image.asset(
                                'assets/images/Creat-Character.png',
                                width: 150,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppColors.lightGrayColors[0],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              key: _secondTargetKey,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30),
                                const Text(
                                  '최애 캐릭터와 채팅을 시작하세요.',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 3,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                          color: Colors.blue),
                                    ),
                                    const SizedBox(width: 10),
                                    const Expanded(
                                      child: Text(
                                          '다양한 롤플레이 설정이 제공되어 상황을 선택하고 캐릭터와 채팅을 즐기면, Ai로직에 의해 시나리오가 자동으로 생성 됩니다. 서로 다른 캐릭터를 등장 시킬 수도 있고, 여러가지 시나리오를 요약하여 믹스 할 수도 있습니다.'),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                IconAndText(
                                  type: 'intro',
                                  text: intro,
                                  itemCount: intro.length,
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              key: _thirdTargetKey,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30),
                                const Text(
                                  '내가 찾던 그 스토리!! 아이디어 고민 끝!',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 3,
                                      height: 85,
                                      decoration: const BoxDecoration(
                                          color: Colors.blue),
                                    ),
                                    const SizedBox(width: 10),
                                    const Expanded(
                                      child: Text(
                                          '기발하고 재미 있는 설정의 상황극이 미리 준비되어 있어, 단편 글쓰기에 최적화 되어 있습니다. 또한, 장편을 위한 맥락 유지 및 다양한 극적 요소를 Ai가 알아서 정리해줍니다. 이제 창작자님은 아이디어를 정리하고 상상한 것을 작품으로 만들기만 하세요.'),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                IconAndText(
                                  type: 'point',
                                  text: point,
                                  itemCount: point.length,
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child:
                              Image.asset('assets/images/INFO_-655x1024.png'),
                        ),
                        Container(
                          color: AppColors.lightGrayColors[0],
                          child: Image.asset('assets/images/image-14.png'),
                        ),
                        Container(
                          color: AppColors.lightGrayColors[0],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30),
                                const Text(
                                  '애니몬스터가 곧 여러분 곁으로 찾아옵니다.',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  '애니몬스터는 창작자와 2차 창작물을 사랑하는 모든 매니아분들을 위해 최고의 앱으로 찾아뵐 것을 약속드립니다. 우리가 상상하고 우리가 좋아하는 모든 것들을 우리의 손 안에 움켜쥘 수 있기를 바랍니다.',
                                ),
                                const SizedBox(height: 20),
                                Image.asset('assets/images/Google-Play.png'),
                                const SizedBox(height: 20),
                                Image.asset('assets/images/App-Store.png'),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          color: Colors.black,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 40),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\u00A9 2024 ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: 'BmineAI',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight
                                            .bold, // BmineAI 부분에 bold 적용
                                      ),
                                    ),
                                    TextSpan(
                                      text: '. All rights reserved.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 0,
                    child: Column(
                      children: [
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlueAccent,
                          ),
                          child: Center(
                            child: Transform.rotate(
                              angle: -0.5 * 3.14159,
                              child: const Icon(
                                Icons.phone,
                                size: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _scrollToTop();
                          },
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration:
                                const BoxDecoration(color: Colors.blueAccent),
                            child: Center(
                              child: Transform.rotate(
                                angle: -0.5 * 3.14159,
                                child: const Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

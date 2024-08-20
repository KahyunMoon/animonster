import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    setState(() {
      _scrollController.jumpTo(0);
    });
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
                    onTap: () {
                      //! dropdown 만들기
                    },
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
                                color: Colors.blueAccent,
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
                        Container(
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
                          decoration: const BoxDecoration(color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
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
                                      height: 85,
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
                                //! 걍 컬럼으로 묶어 아님 Text만 바꾸던지
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.double_arrow,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text('다양하게 준비 되어 있는 캐릭터와 리소스'),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.double_arrow,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text('리소스에서 원하는 장면과 상황을 선택'),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.double_arrow,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text('개성있는 대화를 통해 시나리오 만들기'),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.double_arrow,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text('장면과 장면을 이어 붙혀 최종 작품 완성'),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
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
                                //! 걍 컬럼으로 묶어 아님 Text만 바꾸던지
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text('다양한 설정의 롤플레이 시나리오 제공'),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child:
                                          Text('롤플레이를 즐기면서 내 캐릭터 능력치도 업! 업!'),
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child:
                                          Text('원작 캐릭터 보다 더 매력적인 나만의 캐릭터 육성'),
                                    ),
                                  ],
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
                          color: Colors.grey,
                          child: Image.asset('assets/images/image-14.png'),
                        ),
                        Container(
                          color: Colors.grey,
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

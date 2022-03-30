<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homespital</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/resources/css/signUp.css"/>
</head>
<body class="is-preload">

<!-- Header -->
<section id="header">
    <header>
        <span class="image avatar"><img src="/resources/img/signUp/avatar.jpg" alt=""/></span>
        <h1 id="logo"><a href="#">Homespital</a></h1>
        <p>Hi</p>

    </header>
    <nav id="nav">
        <ul>
            <li><a href="#one" class="active">필수정보입력</a></li>
            <li><a href="#two">주소 입력</a></li>
            <li><a href="#three">결제 정보 입력</a></li>
            <li><a href="#four">약관동의</a></li>
        </ul>
    </nav>
    <footer>
        <ul class="icons">
            <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
            <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
        </ul>
    </footer>
</section>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <form id="form" action="#" method="post">
            <!-- One -->
            <section id="one">
                <div class="container">
                    <h5>로그인 정보에 사용됩니다(필수)</h5>
                    <hr>
                    <diu class="input-control">
                        <label for="email">이메일</label>
                        <input type="email" id="email" name="email" placeholder="이메일을 입력해주세요" required>
                        <div class="error"></div>
                    </diu>
                    <div class="input-control">
                        <label for="password">비밀번호</label>
                        <input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요" required>
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label for="password2">비밀번호 확인</label>
                        <input type="password" id="password2" name="password2" placeholder="비밀번호를 입력해주세요" required>
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label for="name">이름</label>
                        <input type="text" id="name" name="name" placeholder="이름을 입력해주세요" required>
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label for="SocialSecurityNumber">주민등록번호</label>
                        <div id="SocialSecurityNumber" name="SocialSecurityNumber" style="display:flex">
                            <input type="text" required>&nbsp__&nbsp<input type="text" required>
                        </div>

                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label for="phone">휴대폰 번호</label>
                        <div style="display:flex">
                            <input id="phone" type="text" name="phone" title="전화번호 입력" required/>
                            <input type="button" id="phoneChk" class="doubleChk" value="인증번호 받기">
                        </div>
                        <br/>
                        <input id="phone2" type="text" name="phone2" title="인증번호 입력" disabled required/>
                        <input type="hidden" id="phoneDoubleChk"/>
                    </div>
                </div>
            </section>

            <br><br><br><br>

            <!-- Two -->
            <section id="two">
                <div class="container">
                    <h5>배송 정보에 사용됩니다(선택)</h5>
                    <hr>
                    <div>
                        <table>
                            <colgroup>
                                <col style="width:20%">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>우편번호</th>
                                <td>
                                    <div style="display:flex">
                                        <input type="hidden" id="confmKey" name="confmKey" value="">
                                        <input type="text" id="zipNo" name="zipNo" readonly style="width:200px">
                                        <input type="button" value="주소검색" onclick="goPopup()"
                                               style=" margin-left:30px;">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>도로명주소</th>
                                <td><input type="text" id="roadFullAddr" style="width:85%"></td>
                            </tr>
                            <tr>
                                <th>상세주소</th>
                                <td>
                                    <input type="text" id="addrDetail" style="width:40%" value="">

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
            <br><br><br><br>

            <!-- Three -->
            <section id="three">
                <div class="container">
                    <h5>결제 정보에 사용됩니다(선택)</h5>
                    <hr>
                    <h5>카드 번호</h5>
                    <div class="creditCardNumber">
                        <input type="text" class="moveNumber" onKeyup="inputMoveNumber(this);" maxlength="4"
                               style="width:100px"/>&nbsp;-&nbsp;
                        <input type="text" class="moveNumber" onKeyup="inputMoveNumber(this);" maxlength="4"
                               style="width:100px"/>&nbsp;-&nbsp;
                        <input type="text" class="moveNumber" onKeyup="inputMoveNumber(this);" maxlength="4"
                               style="width:100px"/>&nbsp;-&nbsp;
                        <input type="text" class="moveNumber" maxlength="4" style="width:100px"/>
                    </div>
                    <div class="creditCardValidity">
                        <h5>카드 유효기간</h5>
                        <input type="text" class="validThru" onKeyup="inputValidThru(this);" placeholder="MM/YY"
                               maxlength="5"/>
                    </div>
                    <div class="creditCardBirth">
                        <h5>생년월일</h5>
                        <input type="text" class="" placeholder="생년월일" maxlength="6">
                    </div>
                    <div>
                        <h5>카드 비밀번호</h5>
                        <input type="text" class="" placeholder="앞에 두자리만 입력해주세요" maxlength="2">
                    </div>
                </div>
            </section>
            <br><br><br><br>


            <!-- Four -->
            <section id="four">
                <div class="container">
                    <div class="">
                        <div class="">
                            <h5>약관동의</h5>
                            <hr>
                            <input type="checkbox" id="check_all">
                            <label for="check_all">전체동의</label>
                        </div>
                        <ul class="terms">
                            <li>
                            <span class="input_check">
                                <input type="checkbox" id="aaa">
                                <label for="aaa">만 14세 이상입니다(필수)</label>
                            </span>
                            </li>
                            <li>
                            <span class="input_check">
                                <input type="checkbox" id="bbb">
                                <label for="bbb"><a href="">이용약관(필수)</a> </label>
                            </span>
                            </li>
                            <li>
                            <span class="input_check">
                                <input type="checkbox" id="ccc">
                                <label for="ccc"><a href="">개인정보수집 및 이용동의(필수)</a></label>
                            </span>
                            </li>
                            <li>
                            <span class="input_check">
                                <input type="checkbox" id="ddd">
                                <label for="ddd">이벤트,프로모션 알림 메일 및 SMS 수신(선택)</label>
                            </span>
                            </li>
                        </ul>
                    </div>
                    <br><br><br>
                    <input type="submit" value="회원가입" style="width: 100%;"></input>
                </div>
            </section>
        </form>


    </div>

    <!-- Footer -->
    <section id="footer">
        <div class="container">
            <ul class="copyright">
                <li>&copy; Untitled. All rights reserved.</li>
                <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>
        </div>
    </section>

</div>

<!-- Scripts -->
<script src="/resources/js/signUp/jquery.min.js"></script>
<script src="/resources/js/signUp/jquery.scrollex.min.js"></script>
<script src="/resources/js/signUp/jquery.scrolly.min.js"></script>
<script src="/resources/js/signUp/browser.min.js"></script>
<script src="/resources/js/signUp/breakpoints.min.js"></script>
<script src="/resources/js/signUp/util.js"></script>
<script src="/resources/js/signUp/signUp.js"></script>
<script src="/resources/js/signUp/signUp2.js"></script>

</body>

</html>

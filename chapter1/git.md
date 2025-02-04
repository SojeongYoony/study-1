* git desktop과 eclipse 연동이 어려워서 방법 찾음 <br>
[참고링크](https://sso-feeling.tistory.com/121)


## 서버(Server)란 무엇인가?
* 클라이언트에게 네트워크를 통해 서비스하는 시스템을 의미한다. : 제공자(serve하는 사람 -> server) <br>
	- 요청을 받으면 해당 요청에 대한 데이터를 보내줌

<table>
	<tr>
		<th>서버</th>
		<th>대표적인 서버 소프트웨어</th>
	</tr>
	<tr>
		<td align="center">웹 서버</td>
		<td>
			<li>Tomcat(오픈소스)</li>
			<li>WebLogic Server(오라클)</li>
			<li>WebSphere Application Server(IBM)</li>
			<li>IIS(마이크로소프트)</li>
		</td>
	</tr>
	<tr>
		<td align="center">SSL 서버</td>
		<td>
			<li>OpenSSL(오픈소스)</li>
			<li>IIS(마이크로소프트)</li>
		</td>
	</tr>
	<tr>
		<td align="center">DNS 서버</td>
		<td>
			<li>BIND(오픈소스)</li>
			<li>Windows Server(마이크로소프트)</li>
		</td>
	<tr>
	<tr>
		<td align="center">프록시서버</td>
		<td>
			<li>Squid(오픈소스)</li>			
		</td>
	</tr>
	<tr>
		<td align="center">메일(POP/SMTP) 서버</td>
		<td>
			<li>sendmail(오픈소스)</li>
			<li>gmail(오픈소스)</li>
			<li>postfix(오픈소스)</li>
			<li>Exchange Server(마이크로소프트)</li>
		</td>
	</tr>
	<tr>
		<td align="center">FTP 서버</td>
		<td>
			<li>vs-ftpd(오라클)</li>
			<li>IIS(마이크로소프트)</li>
		</td>
	</tr>
	<tr>
		<td align="center">데이터베이스 서버</td>
		<td>
			<li>Oracle Database(오라클)</li>
			<li>MySQL(오라클, 오픈소스)</li>
			<li>SQL Server(마이크로소프트)</li>
			<li>DB2(IBM)</li>
		</td>
	</tr>
	<tr>
		<td align="center">NTP 서버</td>
		<td>
			<li>ntpd(오픈소스)</li>
			<li>Windows Server(마이크로소프트)</li>
		</td>
	</tr>
	<tr>
		<td align="center">Syslog 서버</td>
		<td>
			<li>syslog-ng(오픈소스)</li>
			<li>rsyslog(오픈소스)</li>
			<li>Kiwi Syslog Server(SolarWinds)</li>
		</td>
	</tr>
	<tr>
		<td align="center">SNMP 서버</td>
		<td>
			<li>net-snmp(오픈소스)</li>
			<li>TWSNMP 매니저(오픈소스)</li>
			<li>OpenView NNM(휴렛팩커드)</li>
			<li><a href="http://www.tocsg.co.kr/OMNIBus/598#">Tivoli NetCool(IBM)</a></li>
		</td>
	</tr>
</table>

## Git & Git Hub

  ### 1. Git 이란?
  * 로컬에서 버전 관리 시스템을 운영하는 방식
  * 분산 버전관리 시스템 (Distribute Version Control Systems - DVCS)
 	* 어떤 부분이 수정됐는지 쉽게 볼 수 있고 수정된 부분을 이전 버전으로 롤백 하는 등 편리한 기능 보유
 	* 코드 수정에 따른 위험성을 줄일 수 있음
  * 컴퓨터 파일의 변경사항을 추적하고 여러명의 사용자들 간에 파일에 대한 작업을 조율하는데 사용
  * 즉, 여러명의 개발자가 하나의 소프트웨어 개발 프로젝트에 참여할 때, 소스 코드를 관리하는데 사용
  * [Git 공식 사이트 한글 메뉴얼](https://git-scm.com/book/ko/v2)

  ### 2. Git Hub 이란?
  * 저장소를 깃허브에서 제공해주는 클라우드 서버를 이용
  * 클라우드 방식으로 관리되는 버전 관리 시스템(VCS)
  	##### 버전 관리 시스템(VCS)
  	* 코드가 변경된 부분을 모두 기억해준다는 의미
 	* 코드가 수정될 때마다 파일로 일일이 따로 저장하거나 수동으로 백업하기 매우 번거로움 <br>
 	-> 이런 일을 대신 해줌.
  * 자체 구축이 아닌 빌려쓰는 클라우드 개념
  * 오픈소스는 일정 부분 무료로 저장 가능, 아닐 경우 유료로 사용

  ### 3. Git vs GitHub - 깃과 깃허브의 차이점
  ###### git은 본인의 코드와 수정내역을 기록하고 관리하도록 돕는 버전관리 프로그램. 로컬 저장소를 사용하기 때문에 다른 개발자와 실시간으로 작업을 공유할 수 없음.
  ###### github은 git 저장소를 관리하는 클라우드 기반 호스팅 서비스. 클라우드 기반으로 다른 사람과 소스코드 공유가 가능하며, git의 기본적인 기능을 확장하여 제공한다. 또한 클라우드 서버에 소스를 올리기 때문에 한 프로젝트에 여러 명의 사람이 참여하여 버전 제어 및 공동 작업이 가능하다.
  `Github`는 Git의 호스팅 플랫폼 이다.
  `Git`과 `Github`의 차이점은 `Git`은 오픈 소스 버전 관리 시스템이고, <br>
  `Github`은 `Git` 레파지토리를 위한 웹 기반 호스팅 서비스이다.

  ### 4. 형상 관리란?
  * 다른 말로 버전 관리라고도 한다.
  * 형상 관리 시스템 : 파일의 변화를 시간에 따라 기록해두었다가 특정 시점 버전을 나중에 다시 꺼내올 수 있는 시스템
  ##### 형상관리 장점
  * 파일 및 프로젝트를 이전 상태로 되돌릴 수 있다.
  * 시간에 따라 수정 내용을 비교해 볼 수 있다.
  * 누가, 언제 만들어낸 이슈인지 추적할 수 있다.
  * 파일을 잃어버리거나 잘못 수정했을 때, 쉽게 복구할 수 있다.
  * 형상 관리 시스템은 크게 `로컬 버전 관리 시스템`, `중앙집중식 버전 관리 시스템`, `분산 버전 관리 시스템`으로 구분할 수 있다. 

## `분산 버전 관리 시스템` VS `중앙집중식 버전 관리 시스템` [`DVCS` VS `CVCS`]
#### 분산 버전 관리(Distributed Version Control System)
* 서버가 뻗어도 작업 가능 함 - 로컬에 복제본이 있기때문
* 로컬에 있으니까 오프라인으로도 작업 가능 함
* 저장소와 히스토리를 모두 복제하므로 예전 버전으로 복원이 쉬움.




<p align="center">
	<img src="https://t1.daumcdn.net/cfile/tistory/2511743F514047D442">
	
<br>

* Git, Mecurial, Bazaar, Darcs  <br>
* 클라이언트가 마지막 Snapshot을 받아오지 않고 그냥 저장소를 전부 복제한다. <br>
* 서버에 문제가 생기면 아무 클라이언트의 복제물로 서버를 복원할 수 있다. <br>

#### 중앙집중식 버전 관리(Centralized Version Control System)

<p align="center">
	<img src="https://t1.daumcdn.net/cfile/tistory/184C803F514047D41D">
	
	<br>
	
* 오류 이력을 남길 수가 없음 
* Subversion, CVS, Perforce <br>
* 클라이언트가 중앙 서버로부터 파일을 받아서 사용(Checkout)한다. <br>
* 중앙 서버의 하드디스크에 문제가 생겨서 모든 자료를 날린다면 복구할 방법이 없다. <br>
	(만약 클라이언트들이 버전1부터 끝까지 각각 가지고 있다면 버전1부터 커밋하면 가능..) <br>
  // 서버가 곧 원본 - 중앙 서버에서 파일을 받아 사용함(Checkout) - 서버가 다운되면 큰일남(모든 히스토리를 잃게 됨 - 히스토리에 대한 복원 불가)<br>

<br>

  ### 5. Git 기본 용어
  * `Repository` 
  	* 저장소. 저장소는 히스토리, 태그, 소스의 가지치기 혹은 branch에 따라 버전을 저장. 
 
  * `Working Tree`
  	* 저장소를 어느 한 시점을 바라보는 작업자의 현재 시점. 
 
  * `Staging Area`
  	* 저장소에 커밋하기 전에 커밋을 준비하는 위치 -> commit할 파일 올림
 
  * `Commit`
  	* 현재 변경된 작업 상태의 점검을 마치면 확정하고 저장소에 저장하는 작업 -> push할 파일
 
  * `push`
 	* 로컬 저장소(local repository)에 코드 변경분을 업로드하기 위해 사용하는 명령어 
 
 		 ##### commit vs push
 		 `git commit` 명령어는 로컬 저장소(local repository)에 코드 변경 이력을 남기기 위해서 사용.<br>
 		 따라서, `git commit`을 통해 로컬 저장소에 아무리 많은 코드 변경 이력을 남기더라도 원격 저장소에서 알 수 없음.<br>
 		 그러므로 `git push`를 통해 로컬에 남겨놓은 코드 변경 이력을 원격으로 전송해줘야 함. <br>
 
  * `Head`
  	* 현재 작업중인 Branch를 가르킴  
 
  * `Branch`
  	* 가지 또는 분기점. 작업을 할때에 현재 상태를 복사하여 Branch에서 작업한 후, 완전 하다 싶을 때 `Merge`함.
 
  * `Merge`
  	* 다른 Branch의 내용을 현재 Branch로 가져와 합치는 작업을 의미한다. 
 
  * `pull` `clone`
 	* 원격 저장소에 있는 프로젝트 내용을 가져오는 작업을 의미한다. 
 
 		 ##### pull vs clone
 		 git clone 명령을 사용하면 로컬 저장소의 내용이 원격 저장소의 내용과 일치해진다. <br>
 		 기존에 작업중이었던 사람이 git명령을 사용해서 원격 저장소의 내용을 그대로 가져와 버리면 기존에 작업했던 내용들은 직접 복구해야한다. <br> 
 		 즉, git clone은 프로젝트에 처음 투일될 때 사용되어야 하는 명령! <br>
 		 반면, git pull 명령은 원격 저장소의 내용을 가져와서 현재 브랜치와 병합(merge)까지 해주기 때문에,  <br>
 		 기존에 작업했던 내용은 유지하면서 최신 코드로 업데이트 할 수 있다. <br>
 		 git pull 명령은 병합과정도 포함되어 있기 때문에, pull을 하기 전에 commit을 하지 않으면 덮어쓰기 에러가 발생할 수 있다. <br>
 		 그러므로 기존 작업에 대해 commit을 미리 해두고 pull을 수행하도록 하자. <br> 
 
  * `Pull Request` [참고]("https://velog.io/@zansol/Pull-Request-%EC%9D%B4%ED%95%B4%ED%95%98%EA%B8%B0")
 	* __내가 작업한 코드가 있으니 내 브랜치를 당겨 검토 후 병합해주세요 -  말그대로 pull 요청!__ 
 	* 자연스러온 코드 리뷰를 위해 함
 	* Push 권한이 없는 오픈 소스 프로젝트에 기여할 때 
 
  * `Fork`
 	* 다른 사람의 Github repository에서 어떤 부분을 수정하거나 추가 기능을 넣고 싶을 때, <br>
 	  해당 repository를 내 Github repository로 그대로 복제하는 기능
 	* fork한 저장소는 원본과 연결되어 있다. :: original repository에 어떤 변화가 생기면 forked 된 repository로 반영할 수 있도록 <br>
 	  -  이때 필요한 것이 `fetch`나 `rebase`임.
 
  * `Release`
 	###### 소프트웨어를 빌드한 결과물을 배포할 수 있는 기능
 	* 깃허브 페이지의 오른쪽 탭에 보면 `Release`항목을 찾아볼 수 있다.
 	* Create a new release 버튼을 눌러 새로운 릴리즈를 작성할 수 있다.
 		 #### Release의 특징
 		 * master 브랜치에 달려있는 태그와 함께 릴리즈 제목, 릴리즈 노트 그리고 소스코드를 빌드한 바이너리를 첨부할 수 있다.
 		 * 배포 웹 서버나 웹 페이지, FTP 서버를 운영하지 않아도 간단하게 바이너리를 배포할 수 있다. <br>
 		 
 		**FTP란?**<br>
 		* 파일 전송 프로토콜(File Transfer Protocol) <br> // 프로토콜 : 통신규약 - 규정 지어 놓은 것
 		* protocol : 전자기기가 서로 통신하는 데 필요한 절차나 규칙 <br>
 		* FTP는 TCP/IP 네티워크상의 장치가 파일을 전송할 때 사용하는 규칙 <br>
 		  ex) 인터넷을 둘러볼 때는 HTTP / 인스턴스 메시지를 주고받을 때는 XMPP <br>
 		       -> 파일을 이동할 때 사용하는 프로토콜 <br>
 		
 		**FTP 서버란?** <br>
 		* 파일을 하나의 장치에서 다른 장치로 전송하는 소프트웨어 애플리케이션 <br>
 		* 파일 업로드 시, 업로드 된 파일이 개인 장치 -> 서버로 전송 <br>
 		* 파일 다운로드 시, 다운로드 된 파일이 서버 -> 개인 장치로 전송 <br>
 		  수신자 <-> FTP서버 <-> 전송자 <br>
 		 		  
 		 * release.sh 스크립트를 만들어 젠킨스 같은 CI툴을 통해 자동으로 빌드&테스트, 릴리즈까지 해주는 시스템. <br> 
 			 CI : Continuous Integration 지속적 통합. <br>
 			 모든 개발이 끝난 이후에 코드 품질을 관리하는 고전적 방식의 단점을 해소하기 위해 나타난 개념. <br>
 			 말 그대로 개발을 하면서 <u>코드에 대한 통합</u>을 <u>지속적</u> 으로 진행함으로써 품질을 유지하자는 것. <br>
 
  * `.gitignore`
 	* 프로젝트 작업시 로컬 환경의 정보나 빌드 정보등 원격 저장소에 관리하지 않아도 되는 파일을 실수로 올리지 않도록 관리하는 파일.
 	* 정의한 정보들에 해당하는 파일들에 대하여 git track하지 않도록 설정하는 역할
 	* [gitignore sample]("https://github.com/github/gitignore")
 
  * `Issue`
 	* 프로젝트의 작업, 개선 사항 및 버그를 추적하는 방법으로 사용됨.
 	* 프로젝트 기획, 새롭게 추가될 기능, 버그와 수정사항 모든 것을 `Issue`라고 할 수 있다. <br>
 
  * `Tag`
 	* 특정 `commit`에 별명을 붙여주는 명령어.
 	* `commit`에 별명을 붙이게 되면 `checkout` 등의 명령어를 해당 `commit` 상태로 쉽게 변경 하거나 `reset`명령어를 통해 돌아갈 수 있다.
 	* __현업에서는 `release` 버전을 `tag`로 명시하고 이 버전을 배포하는 식으로 사용하기도 한다.__
 		 ###### tag의 종류
 		 * lightweight tag : tag이름 정보만을 가짐
 		 * annotated tag : 이름, 태그에 대한 설명, 서명 등의 정보를 포함.
 		 * 일반적으로 release branch에 사용하는 태그는 `annotated tag` 이고,
 		   feature(topic) branch에는 `lightweight tag`를 사용한다. <br>
 
  * `Projects`
 	* 프로젝트는 작업 현황과 진행도를 볼 수 있는 메뉴이다.
 	* 이슈, PR(Pull Request)들을 하나의 작업으로 구분해 그 작업이 현재 어느정도 진행되었는지 확인할 수 있다.
 		 ###### 기능
 		 * To Do : 해야 할 작업
 		 * In Progress : 진행 중인 작업
 		 * Done : 완료된 작업
 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/img/favi/favicon.ico">
<link rel="apple-touch-icon" sizes="57x57" href="${cpath }/img/fav/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="${cpath }/img/fav/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="${cpath }/img/fav/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="${cpath }/img/fav/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="${cpath }/img/fav/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="${cpath }/img/fav/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="${cpath }/img/fav/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="${cpath }/img/fav/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="${cpath }/img/fav/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="${cpath }/img/fav/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${cpath }/img/fav/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${cpath }/img/fav/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${cpath }/img/fav/favicon-16x16.png">
<link rel="manifest" href="${cpath }/img/fav/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${cpath }/img/fav//ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
</head>
<body>
<header class="navbar navbar-expand-md navbar-light d-print-none">
        <div class="container-xl">
          <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
            <a href=".">
              <img src="${cpath }/img/my/logo.png" alt="Logo"  width="90rem" height="auto" >
            </a>
          </h1>
          <div class="navbar-nav flex-row order-md-last">
           <!-- 로그인 했음 -->
            <c:if test="${!empty mvo}">
	            <div class="d-none d-md-flex">
	              <div class="nav-item dropdown d-none d-md-flex me-3">
	                <a href="#" class="nav-link px-0" data-bs-toggle="dropdown" tabindex="-1"
	                  aria-label="Show notifications">
	                  <!-- Download SVG icon from http://tabler-icons.io/i/bell -->
	                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
	                    stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
	                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                    <path d="M10 5a2 2 0 0 1 4 0a7 7 0 0 1 4 6v3a4 4 0 0 0 2 3h-16a4 4 0 0 0 2 -3v-3a7 7 0 0 1 4 -6" />
	                    <path d="M9 17v1a3 3 0 0 0 6 0v-1" />
	                  </svg>
	                  <span class="badge bg-red"></span>
	                </a>
	                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-end dropdown-menu-card">
	                  <div class="card">
	                    <div class="card-header">
	                      <h3 class="card-title">Last updates</h3>
	                    </div>
	                    <div class="list-group list-group-flush list-group-hoverable">
	                      <div class="list-group-item">
	                        <div class="row align-items-center">
	                          <div class="col-auto"><span class="status-dot status-dot-animated bg-red d-block"></span>
	                          </div>
	                          <div class="col text-truncate">
	                            <a href="#" class="text-body d-block">Example 1</a>
	                            <div class="d-block text-muted text-truncate mt-n1">
	                              Change deprecated html tags to text decoration classes
	                              (#29604)
	                            </div>
	                          </div>
	                          <div class="col-auto">
	                            <a href="#" class="list-group-item-actions">
	                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
	                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-muted" width="24" height="24"
	                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
	                                stroke-linecap="round" stroke-linejoin="round">
	                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                                <path
	                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
	                              </svg>
	                            </a>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="list-group-item">
	                        <div class="row align-items-center">
	                          <div class="col-auto"><span class="status-dot d-block"></span></div>
	                          <div class="col text-truncate">
	                            <a href="#" class="text-body d-block">Example 2</a>
	                            <div class="d-block text-muted text-truncate mt-n1">
	                            </div>
	                          </div>
	                          <div class="col-auto">
	                            <a href="#" class="list-group-item-actions show">
	                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
	                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-yellow" width="24" height="24"
	                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
	                                stroke-linecap="round" stroke-linejoin="round">
	                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                                <path
	                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
	                              </svg>
	                            </a>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="list-group-item">
	                        <div class="row align-items-center">
	                          <div class="col-auto"><span class="status-dot d-block"></span></div>
	                          <div class="col text-truncate">
	                            <a href="#" class="text-body d-block">Example 3</a>
	                            <div class="d-block text-muted text-truncate mt-n1">
	                            </div>
	                          </div>
	                          <div class="col-auto">
	                            <a href="#" class="list-group-item-actions">
	                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
	                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-muted" width="24" height="24"
	                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
	                                stroke-linecap="round" stroke-linejoin="round">
	                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                                <path
	                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
	                              </svg>
	                            </a>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="list-group-item">
	                        <div class="row align-items-center">
	                          <div class="col-auto"><span class="status-dot status-dot-animated bg-green d-block"></span>
	                          </div>
	                          <div class="col text-truncate">
	                            <a href="#" class="text-body d-block">Example 4</a>
	                            <div class="d-block text-muted text-truncate mt-n1">
	                              Regenerate package-lock.json (#29730)
	                            </div>
	                          </div>
	                          <div class="col-auto">
	                            <a href="#" class="list-group-item-actions">
	                              <!-- Download SVG icon from http://tabler-icons.io/i/star -->
	                              <svg xmlns="http://www.w3.org/2000/svg" class="icon text-muted" width="24" height="24"
	                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
	                                stroke-linecap="round" stroke-linejoin="round">
	                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
	                                <path
	                                  d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z" />
	                              </svg>
	                            </a>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	            <div class="nav-item dropdown" id="user-box">
              <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown"
                aria-label="Open user menu">
                <span class="avatar avatar-sm" style="background-image: url(${cpath}${grade })"></span>
                <div class="d-none d-xl-block ps-2">
                  <div>${mvo.u_nick }</div>
                  <div class="mt-1 small text-muted  text-center">${mvo.u_grade }</div>
                </div>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <c:choose>
	              <c:when test="${mvo.u_grade == 'admin' }">
                 	 <a href="${cpath}/memberlist.do?" class="dropdown-item">Admin Page</a>
                 </c:when>
                 <c:otherwise>
                	 <a href="${cpath}/mypage.do?" class="dropdown-item">My account</a>
                 </c:otherwise>
                 </c:choose>
                <a href="${cpath}/logout.do" class="dropdown-item">Logout</a>
              </div>
            </div>
             </c:if>
            <!-- 로그인 하기전 -->
            <c:if test="${empty mvo}">
            	<div class="mt-2" id="loginbtn">
					<button  class="btn btn-light" onclick="location.href='${cpath}/loginForm.do'">Login</button>
					<button  class="btn btn-light" onclick="location.href='${cpath}/joinForm.do'">회원가입</button>
				</div>
 			</c:if>
            
          </div>
          <div class="collapse navbar-collapse" id="navbar-menu">
            <div class="d-flex flex-column flex-md-row flex-fill align-items-stretch align-items-md-center">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="${cpath }/map.do">
                    <span class="nav-link-title">
                      Maps
                    </span>
                  </a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="${cpath}/weeklyView.do">
                      <span class="nav-link-title">
                        주간인기검색어
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="${cpath}/youtubelist.do">
                      <span class="nav-link-title">
                        Youtube Archive
                      </span>
                    </a>
                  </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" aria-expanded="false">
                    <span class="nav-link-title">
                      FOR THE YOUR
                    </span>
                  </a>
                  <div class="dropdown-menu dropdown-menu">
                    <div class="dropdown-menu-columns">
                      <div class="dropdown-menu-column">
                        <a class="dropdown-item" href="${cpath }/zwlist.do">
                          자유게시판
                        </a>
                        <a class="dropdown-item" href="${cpath }/imgList.do">
                          실천해요
                         </a>
                        <a class="dropdown-item" href="${cpath }/tolist.do?page=1">
                          함께해요
                        </a>
                        <a class="dropdown-item" href="${cpath }/gradeList.do">
                          아나바다
                        </a>
                      </div>

                    </div>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#navbar-layout" role="button" aria-expanded="false">
                    <span class="nav-link-title ">
                      FOR THE EARTH
                    </span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-arrow">
                    <div class="dropdown-menu-columns">
                      <div class="dropdown-menu-column">
                        <a class="dropdown-item" href="${cpath}/callist.do">
                          칼럼 Archive
                        </a>
                        <a class="dropdown-item" href="${cpath }/buylist.do">
                          같이사요
                        </a>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </header>
</body>
</html>
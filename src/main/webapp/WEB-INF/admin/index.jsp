<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="top.jsp" %>

    <!-- Main -->
    <div id="main">

      <!-- Main header -->
      <div id="main-header">
        <nav class="navbar navbar-expand navbar-light bg-white gap-4">
          <button type="button" class="btn btn-light d-none d-xl-flex" data-toggle="mini-sidebar">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
              <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd" />
            </svg>
          </button>
          <button type="button" class="btn btn-light d-flex d-xl-none me-3" data-bs-toggle="offcanvas" data-bs-target="#sidebar" aria-controls="sidebar">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
              <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd" />
            </svg>
          </button>
          <ul class="navbar-nav align-items-center ms-auto">
            <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle no-caret" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                  <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd" />
                </svg>
              </a>
              <div class="dropdown-menu dropdown-menu-end p-3">
                <form><input type="text" class="form-control border-0 shadow-none px-3" placeholder="Search..." autofocus></form>
                <div class="dropdown-divider"></div>
                <h6 class="dropdown-header d-flex justify-content-between">
                  Recently searched:
                  <a href="javascript:void(0)" class="text-muted ms-5">Clear</a>
                </h6>
                <div class="max-h-[300px] overflow-auto">
                  <a class="dropdown-item" href="javascript:void(0)">Calendar</a>
                  <a class="dropdown-item" href="javascript:void(0)">Chat</a>
                  <a class="dropdown-item" href="javascript:void(0)">Email</a>
                  <a class="dropdown-item" href="javascript:void(0)">File manager</a>
                  <a class="dropdown-item" href="javascript:void(0)">Forum</a>
                  <a class="dropdown-item" href="javascript:void(0)">Invoice</a>
                  <a class="dropdown-item" href="javascript:void(0)">Photos</a>
                  <a class="dropdown-item" href="javascript:void(0)">Pricing</a>
                  <a class="dropdown-item" href="javascript:void(0)">Todo</a>
                  <a class="dropdown-item" href="javascript:void(0)">Blog</a>
                  <a class="dropdown-item" href="javascript:void(0)">Settings</a>
                  <a class="dropdown-item" href="javascript:void(0)">Profile</a>
                </div>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle no-caret" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                <div class="position-relative">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path d="M10 2a6 6 0 00-6 6v3.586l-.707.707A1 1 0 004 14h12a1 1 0 00.707-1.707L16 11.586V8a6 6 0 00-6-6zM10 18a3 3 0 01-3-3h6a3 3 0 01-3 3z" />
                  </svg>
                  <span class="badge bg-danger position-absolute top-0 start-100 translate-middle p-1">
                    <span class="visually-hidden">unread notifications</span>
                  </span>
                </div>
              </a>
              <div class="dropdown-menu dropdown-menu-end">
                <h6 class="dropdown-header d-flex justify-content-between">
                  5 New notifications
                  <a href="javascript:void(0)" class="text-muted ms-5">Clear</a>
                </h6>
                <div class="dropdown-divider"></div>
                <div class="max-h-[300px] overflow-auto">
                  <a class="dropdown-item d-flex align-items-center gap-3 py-2" href="javascript:void(0)">
                    <svg class="text-muted" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                    </svg>
                    <div class="vstack">
                      <p class="mb-0">New customer registered</p>
                      <small class="text-muted">5 min ago</small>
                    </div>
                  </a>
                  <a class="dropdown-item d-flex align-items-center gap-3 py-2" href="javascript:void(0)">
                    <svg class="text-muted" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z" />
                    </svg>
                    <div class="vstack">
                      <p class="mb-0">New order received</p>
                      <small class="text-muted">11 min ago</small>
                    </div>
                  </a>
                  <a class="dropdown-item d-flex align-items-center gap-3 py-2" href="javascript:void(0)">
                    <svg class="text-muted" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 4a2 2 0 114 0v1a1 1 0 001 1h3a1 1 0 011 1v3a1 1 0 01-1 1h-1a2 2 0 100 4h1a1 1 0 011 1v3a1 1 0 01-1 1h-3a1 1 0 01-1-1v-1a2 2 0 10-4 0v1a1 1 0 01-1 1H7a1 1 0 01-1-1v-3a1 1 0 00-1-1H4a2 2 0 110-4h1a1 1 0 001-1V7a1 1 0 011-1h3a1 1 0 001-1V4z" />
                    </svg>
                    <div class="vstack">
                      <p class="mb-0">Plugin updates available <span class="badge rounded-pill ms-1 bg-secondary align-bottom">3</span></p>
                      <small class="text-muted">30 min ago</small>
                    </div>
                  </a>
                  <a class="dropdown-item d-flex align-items-center gap-3 py-2" href="javascript:void(0)">
                    <svg class="text-muted" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
                    </svg>
                    <div class="vstack">
                      <p class="mb-0">Download completed</p>
                      <small class="text-muted">35 min ago</small>
                    </div>
                  </a>
                  <a class="dropdown-item d-flex align-items-center gap-3 py-2" href="javascript:void(0)">
                    <svg class="text-muted" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" />
                    </svg>
                    <div class="vstack">
                      <p class="mb-0">Weekly usage report</p>
                      <small class="text-muted">40 min ago</small>
                    </div>
                  </a>
                </div>
              </div>
            </li>
            <li class="nav-item vr mx-3"></li>
            <li class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle no-caret py-0 pe-0" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="resources/admin_asset/img/user/user1.svg" width="32" alt="User" class="rounded-circle" loading="lazy">
              </a>
              <ul class="dropdown-menu dropdown-menu-end">
                <li><a class="dropdown-item" href="javascript:void(0)">Profile</a></li>
                <li><a class="dropdown-item" href="user-settings.html">Settings</a></li>
                <li>
                  <div class="dropdown-divider"></div>
                </li>
                <li><a class="dropdown-item" href="signin.html">Sign out</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
      <!-- /Main header -->

      <!-- Main body -->
      <div id="main-body">

        <div class="row g-4">
          <div class="col-lg-4">
            <div class="row g-4">
              <div class="col-md-3 col-lg-6 col-6">
                <div class="card h-100">
                  <div class="card-body">
                    <p class="mb-0 text-secondary">Orders</p>
                    <h3 class="fw-black">2,56k</h3>
                    <div id="orders"></div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-lg-6 col-6">
                <div class="card h-100">
                  <div class="card-body">
                    <p class="mb-0 text-secondary">Profit</p>
                    <h3 class="fw-black">6,25k</h3>
                    <div id="profit"></div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12 col-md-6 col-12">
                <div class="card h-100">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-6">
                        <h3 class="fw-black mb-2">Earnings</h3>
                        <p class="small text-secondary mb-1">This Month</p>
                        <h4 class="mb-3">$4,055.56</h4>
                        <p class="card-text text-secondary small">
                          <span class="font-weight-bolder">68.2%</span><span> more earnings than last month.</span>
                        </p>
                      </div>
                      <div class="col-6">
                        <div id="earnings"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="card h-100">
              <div class="card-body">
                <div class="row">
                  <div class="col-12 col-md-8">
                    <div class="d-sm-flex justify-content-between align-items-center">
                      <h6 class="mb-sm-0">Revenue Report</h6>
                      <div class="d-flex align-items-center">
                        <div class="d-flex align-items-center">
                          <svg class="text-primary me-1" viewBox="0 0 20 20" fill="currentColor" stroke-linecap="round">
                            <circle cx="10" cy="10" r="7"></circle>
                          </svg>
                          Earning
                        </div>
                        <div class="d-flex align-items-center ms-3">
                          <svg class="text-warning me-1" viewBox="0 0 20 20" fill="currentColor" stroke-linecap="round">
                            <circle cx="10" cy="10" r="7"></circle>
                          </svg>
                          Expense
                        </div>
                      </div>
                    </div>
                    <div id="revenue"></div>
                  </div>
                  <div class="col-12 col-md-4 text-center px-4 vstack justify-content-between align-items-center">
                    <div class="btn-group mb-3">
                      <button type="button" class="btn btn-outline-primary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        2021
                      </button>
                      <ul class="dropdown-menu">
                        <li><button class="dropdown-item" type="button">2021</button></li>
                        <li><button class="dropdown-item" type="button">2020</button></li>
                        <li><button class="dropdown-item" type="button">2019</button></li>
                      </ul>
                    </div>
                    <div class="text-secondary">
                      <h4>$25,852</h4>
                      <p>
                        <span class="fw-bolder text-dark me-25">Budget:</span>
                        <span>56,800</span>
                      </p>
                    </div>
                    <div id="budget"></div>
                    <button class="btn btn-primary" type="button">Increase Budget</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-6 col-lg-4">
            <div class="card h-100">
              <div class="card-header border-bottom-0 d-flex justify-content-between">
                <div>
                  <h6 class="mb-0">Browser States</h6>
                  <small class="text-secondary">Counter April 2021</small>
                </div>
                <div class="dropdown">
                  <button class="btn text-secondary p-0 dropdown-toggle no-caret" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 5v.01M12 12v.01M12 19v.01M12 6a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2z" />
                    </svg>
                  </button>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li><button class="dropdown-item" type="button">Last 28 days</button></li>
                    <li><button class="dropdown-item" type="button">Last month</button></li>
                    <li><button class="dropdown-item" type="button">Last year</button></li>
                  </ul>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex align-items-center">
                  <img src="resources/admin_asset/img/browser/chrome.svg" alt="" width="30" height="30" loading="lazy">
                  <span class="ms-2">Google Chrome</span>
                  <span class="ms-auto me-2">54.4%</span>
                  <div id="browser-stat-1"></div>
                </div>
                <div class="d-flex align-items-center mt-2">
                  <img src="resources/admin_asset/img/browser/firefox.svg" alt="" width="30" height="30" loading="lazy">
                  <span class="ms-2">Mozilla Firefox</span>
                  <span class="ms-auto me-2">6.1%</span>
                  <div id="browser-stat-2"></div>
                </div>
                <div class="d-flex align-items-center mt-2">
                  <img src="resources/admin_asset/img/browser/safari.svg" alt="" width="30" height="30" loading="lazy">
                  <span class="ms-2">Apple Safari</span>
                  <span class="ms-auto me-2">14.6%</span>
                  <div id="browser-stat-3"></div>
                </div>
                <div class="d-flex align-items-center mt-2">
                  <img src="resources/admin_asset/img/browser/ie.svg" alt="" width="30" height="30" loading="lazy">
                  <span class="ms-2">Internet Explorer</span>
                  <span class="ms-auto me-2">4.2%</span>
                  <div id="browser-stat-4"></div>
                </div>
                <div class="d-flex align-items-center mt-2">
                  <img src="resources/admin_asset/img/browser/opera.svg" alt="" width="30" height="30" loading="lazy">
                  <span class="ms-2">Opera Mini</span>
                  <span class="ms-auto me-2">8.4%</span>
                  <div id="browser-stat-5"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-6 col-lg-4">
            <div class="card h-100">
              <div class="card-header border-bottom-0 d-flex justify-content-between">
                <h6 class="mb-0">Goal Overview</h6>
                <button class="btn text-secondary p-0" type="button">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd" />
                  </svg>
                </button>
              </div>
              <div class="card-body">
                <div id="goal"></div>
              </div>
              <div class="card-footer p-0">
                <div class="row text-center mx-0">
                  <div class="col-6 border-end py-1">
                    <small class="text-secondary">Completed</small>
                    <h6>786,617</h6>
                  </div>
                  <div class="col-6 py-1">
                    <small class="text-secondary">In Progress</small>
                    <h6>13,561</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-6 col-lg-4">
            <div class="card h-100">
              <div class="card-header border-bottom-0 d-flex justify-content-between">
                <h6 class="mb-0">Transactions</h6>
                <div class="dropdown">
                  <button class="btn text-secondary p-0 dropdown-toggle no-caret" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <svg width="16" height="16" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 5v.01M12 12v.01M12 19v.01M12 6a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2zm0 7a1 1 0 110-2 1 1 0 010 2z" />
                    </svg>
                  </button>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li><button class="dropdown-item" type="button">Last 28 days</button></li>
                    <li><button class="dropdown-item" type="button">Last month</button></li>
                    <li><button class="dropdown-item" type="button">Last year</button></li>
                  </ul>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex align-items-center">
                  <svg class="align-self-start text-primary" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z" />
                  </svg>
                  <div class="mx-2">
                    <h6 class="mb-0">Wallet</h6>
                    <small class="text-secondary">Starbucks</small>
                  </div>
                  <span class="ms-auto text-danger">- $74</span>
                </div>
                <div class="d-flex align-items-center mt-3">
                  <svg class="align-self-start text-success" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                  </svg>
                  <div class="mx-2">
                    <h6 class="mb-0">Bank transfer</h6>
                    <small class="text-secondary">Add money</small>
                  </div>
                  <span class="ms-auto text-success">+ $480</span>
                </div>
                <div class="d-flex align-items-center mt-3">
                  <svg class="align-self-start text-primary" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                  <div class="mx-2">
                    <h6 class="mb-0">Paypal</h6>
                    <small class="text-secondary">Add money</small>
                  </div>
                  <span class="ms-auto text-success">+ $590</span>
                </div>
                <div class="d-flex align-items-center mt-3">
                  <svg class="align-self-start text-danger" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 10h18M7 15h1m4 0h1m-7 4h12a3 3 0 003-3V8a3 3 0 00-3-3H6a3 3 0 00-3 3v8a3 3 0 003 3z" />
                  </svg>
                  <div class="mx-2">
                    <h6 class="mb-0">Master card</h6>
                    <small class="text-secondary">Ordered food</small>
                  </div>
                  <span class="ms-auto text-danger">- $23</span>
                </div>
                <div class="d-flex align-items-center mt-3">
                  <svg class="align-self-start text-info" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 10h10a8 8 0 018 8v2M3 10l6 6m-6-6l6-6" />
                  </svg>
                  <div class="mx-2">
                    <h6 class="mb-0">Transfer</h6>
                    <small class="text-secondary">Refund</small>
                  </div>
                  <span class="ms-auto text-success">+ $98</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /Main body -->

      <!-- Main footer -->
      <div id="main-footer">
        <nav class="navbar navbar-expand navbar-light bg-white small shadow-sm">
          <span class="navbar-text">
            2022 &copy; Billy A Dream 빌리어드림 
          </span>
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a href="javascript:void(0)" class="nav-link">About</a>
            </li>
            <li class="nav-item">
              <a href="javascript:void(0)" class="nav-link">Help</a>
            </li>
          </ul>
        </nav>
      </div>
      <!-- /Main footer -->

    </div>
    <!-- /Main -->

  </div>
  <!-- /Wrapper -->

  <!-- Required JS -->
  <script src="resources/admin_asset/vendor/bootstrap/bootstrap.bundle.js"></script>
  <script src="resources/admin_asset/vendor/simplebar/simplebar.js"></script>
  <script src="resources/admin_asset/js/script.js"></script>

  <script src="resources/admin_asset/js/settings.js"></script>

  <script src="resources/admin_asset/vendor/apexcharts/apexcharts.js"></script>
  <script>
    new ApexCharts(document.querySelector('#orders'), {
      chart: {
        type: 'bar',
        sparkline: {
          enabled: true
        },
        height: 50,
      },
      colors: ['#facc15'],
      series: [{
        name: 'orders',
        data: [30, 40, 35, 45, 40, 50]
      }],
      xaxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
      },
      plotOptions: {
        bar: {
          columnWidth: '30%',
          colors: {
            backgroundBarColors: ['#f5f5f5', '#f5f5f5', '#f5f5f5', '#f5f5f5', '#f5f5f5'],
          },
          borderRadius: 4,
        },
      },
    }).render()

    new ApexCharts(document.querySelector('#profit'), {
      chart: {
        type: 'line',
        sparkline: {
          enabled: true
        },
        height: 50,
      },
      colors: ['#0dcaf0'],
      series: [{
        name: 'profit',
        data: [10, 30, 15, 40, 25, 55]
      }],
      xaxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
      },
      stroke: {
        width: 2,
      },
    }).render()

    new ApexCharts(document.querySelector('#revenue'), {
      chart: {
        type: 'bar',
        height: 260,
        toolbar: {
          show: false,
        }
      },
      colors: ['#facc15', '#6366f1'],
      series: [{
          name: 'expense',
          data: [17, 32, 50, 47, 19, 11, 30, 40, 13]
        },
        {
          name: 'earning',
          data: [34, 65, 104, 94, 38, 23, 61, 80, 26]
        },
      ],
      xaxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep']
      },
      plotOptions: {
        bar: {
          columnWidth: '30%',
          borderRadius: 4,
        },
      },
      dataLabels: {
        enabled: false
      },
      legend: {
        show: false,
      }
    }).render()

    new ApexCharts(document.querySelector('#budget'), {
      chart: {
        type: 'line',
        sparkline: {
          enabled: true
        },
        height: 80,
        width: '80%',
      },
      colors: ['#6366f1'],
      series: [{
        data: [61, 48, 69, 52, 60, 40, 79, 60, 59, 43, 62]
      }],
      stroke: {
        width: 2,
        curve: 'smooth',
      },
      tooltip: {
        enabled: false,
      },
    }).render()

    new ApexCharts(document.querySelector('#earnings'), {
      series: [53, 16, 31],
      chart: {
        height: 150,
        type: 'donut',
        toolbar: {
          show: false,
        },
      },
      labels: ['App', 'Service', 'Product'],
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      stroke: {
        width: 0,
      },
      colors: ['#6366f1', '#0dcaf0', '#facc15'],
    }).render()

    new ApexCharts(document.querySelector('#browser-stat-1'), {
      series: [54.4],
      chart: {
        width: 30,
        height: 30,
        type: 'radialBar',
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: '20%',
          },
          dataLabels: {
            name: {
              show: false,
            },
            value: {
              show: false,
            }
          }
        },
      },
      stroke: {
        lineCap: 'round',
      },
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      grid: {
        show: false,
        padding: {
          left: -15,
          right: -15,
          top: -15,
          bottom: -15,
        },
      },
      colors: ['#6366f1'],
    }).render()

    new ApexCharts(document.querySelector('#browser-stat-2'), {
      series: [6.1],
      chart: {
        width: 30,
        height: 30,
        type: 'radialBar',
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: '20%',
          },
          dataLabels: {
            name: {
              show: false,
            },
            value: {
              show: false,
            }
          }
        },
      },
      stroke: {
        lineCap: 'round',
      },
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      grid: {
        show: false,
        padding: {
          left: -15,
          right: -15,
          top: -15,
          bottom: -15,
        },
      },
      colors: ['#facc15'],
    }).render()

    new ApexCharts(document.querySelector('#browser-stat-3'), {
      series: [14.6],
      chart: {
        width: 30,
        height: 30,
        type: 'radialBar',
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: '20%',
          },
          dataLabels: {
            name: {
              show: false,
            },
            value: {
              show: false,
            }
          }
        },
      },
      stroke: {
        lineCap: 'round',
      },
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      grid: {
        show: false,
        padding: {
          left: -15,
          right: -15,
          top: -15,
          bottom: -15,
        },
      },
      colors: ['#4b5563'],
    }).render()

    new ApexCharts(document.querySelector('#browser-stat-4'), {
      series: [4.2],
      chart: {
        width: 30,
        height: 30,
        type: 'radialBar',
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: '20%',
          },
          dataLabels: {
            name: {
              show: false,
            },
            value: {
              show: false,
            }
          }
        },
      },
      stroke: {
        lineCap: 'round',
      },
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      grid: {
        show: false,
        padding: {
          left: -15,
          right: -15,
          top: -15,
          bottom: -15,
        },
      },
      colors: ['#0dcaf0'],
    }).render()

    new ApexCharts(document.querySelector('#browser-stat-5'), {
      series: [8.4],
      chart: {
        width: 30,
        height: 30,
        type: 'radialBar',
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: '20%',
          },
          dataLabels: {
            name: {
              show: false,
            },
            value: {
              show: false,
            }
          }
        },
      },
      stroke: {
        lineCap: 'round',
      },
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      grid: {
        show: false,
        padding: {
          left: -15,
          right: -15,
          top: -15,
          bottom: -15,
        },
      },
      colors: ['#ef4444'],
    }).render()

    new ApexCharts(document.querySelector('#goal'), {
      chart: {
        height: 245,
        type: 'radialBar',
      },
      colors: ['#16a34a'],
      plotOptions: {
        radialBar: {
          offsetY: -10,
          startAngle: -150,
          endAngle: 150,
          hollow: {
            size: '77%'
          },
          track: {
            background: '#e5e7eb',
          },
          dataLabels: {
            name: {
              show: false
            },
            value: {
              fontSize: '2rem',
            }
          }
        }
      },
      series: [83],
      stroke: {
        lineCap: 'round'
      }
    }).render()
  </script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@include file="template/header.jsp"%>
<body class="g-sidenav-show  bg-gray-100">
    <%@include file="template/sidebar.jsp"%>
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        <%@include file="template/navbar.jsp"%>
         <div class="container-fluid py-4">
         <div class="row">
                 <div class="col-12">
                   <div class="card mb-4">
                     <div class="card-header pb-0">
                       <h6>Liste des categories </h6>
                     </div>
                     <div class="card-body px-0 pt-0 pb-2">
                       <div class="table-responsive p-0">
                         <table class="table align-items-center justify-content-center mb-0">
                           <thead>
                             <tr>
                               <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Project</th>
                               <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Budget</th>
                               <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Status</th>
                               <th class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">Completion</th>
                               <th></th>
                             </tr>
                           </thead>
                           <tbody>
                             <tr>
                               <td>
                                 <div class="d-flex px-2">
                                   <div>
                                     <img src="../assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm rounded-circle me-2" alt="spotify">
                                   </div>
                                   <div class="my-auto">
                                     <h6 class="mb-0 text-sm">Spotify</h6>
                                   </div>
                                 </div>
                               </td>
                               <td>
                                 <p class="text-sm font-weight-bold mb-0">$2,500</p>
                               </td>
                               <td>
                                 <span class="text-xs font-weight-bold">working</span>
                               </td>
                               <td class="align-middle text-center">
                                 <div class="d-flex align-items-center justify-content-center">
                                   <span class="me-2 text-xs font-weight-bold">60%</span>
                                   <div>
                                     <div class="progress">
                                       <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                                     </div>
                                   </div>
                                 </div>
                               </td>
                               <td class="align-middle">
                                 <button class="btn btn-link text-secondary mb-0">
                                   <i class="fa fa-ellipsis-v text-xs"></i>
                                 </button>
                               </td>
                             </tr>
                             <tr>
                               <td>
                                 <div class="d-flex px-2">
                                   <div>
                                     <img src="../assets/img/small-logos/logo-invision.svg" class="avatar avatar-sm rounded-circle me-2" alt="invision">
                                   </div>
                                   <div class="my-auto">
                                     <h6 class="mb-0 text-sm">Invision</h6>
                                   </div>
                                 </div>
                               </td>
                               <td>
                                 <p class="text-sm font-weight-bold mb-0">$5,000</p>
                               </td>
                               <td>
                                 <span class="text-xs font-weight-bold">done</span>
                               </td>
                               <td class="align-middle text-center">
                                 <div class="d-flex align-items-center justify-content-center">
                                   <span class="me-2 text-xs font-weight-bold">100%</span>
                                   <div>
                                     <div class="progress">
                                       <div class="progress-bar bg-gradient-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                                     </div>
                                   </div>
                                 </div>
                               </td>
                               <td class="align-middle">
                                 <button class="btn btn-link text-secondary mb-0" aria-haspopup="true" aria-expanded="false">
                                   <i class="fa fa-ellipsis-v text-xs"></i>
                                 </button>
                               </td>
                             </tr>
                             <tr>
                               <td>
                                 <div class="d-flex px-2">
                                   <div>
                                     <img src="../assets/img/small-logos/logo-jira.svg" class="avatar avatar-sm rounded-circle me-2" alt="jira">
                                   </div>
                                   <div class="my-auto">
                                     <h6 class="mb-0 text-sm">Jira</h6>
                                   </div>
                                 </div>
                               </td>
                               <td>
                                 <p class="text-sm font-weight-bold mb-0">$3,400</p>
                               </td>
                               <td>
                                 <span class="text-xs font-weight-bold">canceled</span>
                               </td>
                               <td class="align-middle text-center">
                                 <div class="d-flex align-items-center justify-content-center">
                                   <span class="me-2 text-xs font-weight-bold">30%</span>
                                   <div>
                                     <div class="progress">
                                       <div class="progress-bar bg-gradient-danger" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="30" style="width: 30%;"></div>
                                     </div>
                                   </div>
                                 </div>
                               </td>
                               <td class="align-middle">
                                 <button class="btn btn-link text-secondary mb-0" aria-haspopup="true" aria-expanded="false">
                                   <i class="fa fa-ellipsis-v text-xs"></i>
                                 </button>
                               </td>
                             </tr>
                             <tr>
                               <td>
                                 <div class="d-flex px-2">
                                   <div>
                                     <img src="../assets/img/small-logos/logo-slack.svg" class="avatar avatar-sm rounded-circle me-2" alt="slack">
                                   </div>
                                   <div class="my-auto">
                                     <h6 class="mb-0 text-sm">Slack</h6>
                                   </div>
                                 </div>
                               </td>
                               <td>
                                 <p class="text-sm font-weight-bold mb-0">$1,000</p>
                               </td>
                               <td>
                                 <span class="text-xs font-weight-bold">canceled</span>
                               </td>
                               <td class="align-middle text-center">
                                 <div class="d-flex align-items-center justify-content-center">
                                   <span class="me-2 text-xs font-weight-bold">0%</span>
                                   <div>
                                     <div class="progress">
                                       <div class="progress-bar bg-gradient-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="0" style="width: 0%;"></div>
                                     </div>
                                   </div>
                                 </div>
                               </td>
                               <td class="align-middle">
                                 <button class="btn btn-link text-secondary mb-0" aria-haspopup="true" aria-expanded="false">
                                   <i class="fa fa-ellipsis-v text-xs"></i>
                                 </button>
                               </td>
                             </tr>
                             <tr>
                               <td>
                                 <div class="d-flex px-2">
                                   <div>
                                     <img src="../assets/img/small-logos/logo-webdev.svg" class="avatar avatar-sm rounded-circle me-2" alt="webdev">
                                   </div>
                                   <div class="my-auto">
                                     <h6 class="mb-0 text-sm">Webdev</h6>
                                   </div>
                                 </div>
                               </td>
                               <td>
                                 <p class="text-sm font-weight-bold mb-0">$14,000</p>
                               </td>
                               <td>
                                 <span class="text-xs font-weight-bold">working</span>
                               </td>
                               <td class="align-middle text-center">
                                 <div class="d-flex align-items-center justify-content-center">
                                   <span class="me-2 text-xs font-weight-bold">80%</span>
                                   <div>
                                     <div class="progress">
                                       <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="80" style="width: 80%;"></div>
                                     </div>
                                   </div>
                                 </div>
                               </td>
                               <td class="align-middle">
                                 <button class="btn btn-link text-secondary mb-0" aria-haspopup="true" aria-expanded="false">
                                   <i class="fa fa-ellipsis-v text-xs"></i>
                                 </button>
                               </td>
                             </tr>
                             <tr>
                               <td>
                                 <div class="d-flex px-2">
                                   <div>
                                     <img src="../assets/img/small-logos/logo-xd.svg" class="avatar avatar-sm rounded-circle me-2" alt="xd">
                                   </div>
                                   <div class="my-auto">
                                     <h6 class="mb-0 text-sm">Adobe XD</h6>
                                   </div>
                                 </div>
                               </td>
                               <td>
                                 <p class="text-sm font-weight-bold mb-0">$2,300</p>
                               </td>
                               <td>
                                 <span class="text-xs font-weight-bold">done</span>
                               </td>
                               <td class="align-middle text-center">
                                 <div class="d-flex align-items-center justify-content-center">
                                   <span class="me-2 text-xs font-weight-bold">100%</span>
                                   <div>
                                     <div class="progress">
                                       <div class="progress-bar bg-gradient-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"></div>
                                     </div>
                                   </div>
                                 </div>
                               </td>
                               <td class="align-middle">
                                 <button class="btn btn-link text-secondary mb-0" aria-haspopup="true" aria-expanded="false">
                                   <i class="fa fa-ellipsis-v text-xs"></i>
                                 </button>
                               </td>
                             </tr>
                           </tbody>
                         </table>
                       </div>
                     </div>
                   </div>
                 </div>
               </div>
        <%@include file="template/footer.jsp"%>
         </div>
    </main>
    <script src="${contextPath}/resources/assets/js/core/popper.min.js"></script>
      <script src="${contextPath}/resources/assets/js/core/bootstrap.min.js"></script>
      <script src="${contextPath}/resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="${contextPath}/resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
      <script src="${contextPath}/resources/assets/js/plugins/chartjs.min.js"></script>
      <script>
        var ctx = document.getElementById("chart-bars").getContext("2d");

        new Chart(ctx, {
          type: "bar",
          data: {
            labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [{
              label: "Sales",
              tension: 0.4,
              borderWidth: 0,
              borderRadius: 4,
              borderSkipped: false,
              backgroundColor: "#fff",
              data: [450, 200, 100, 220, 500, 100, 400, 230, 500],
              maxBarThickness: 6
            }, ],
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
              legend: {
                display: false,
              }
            },
            interaction: {
              intersect: false,
              mode: 'index',
            },
            scales: {
              y: {
                grid: {
                  drawBorder: false,
                  display: false,
                  drawOnChartArea: false,
                  drawTicks: false,
                },
                ticks: {
                  suggestedMin: 0,
                  suggestedMax: 500,
                  beginAtZero: true,
                  padding: 15,
                  font: {
                    size: 14,
                    family: "Open Sans",
                    style: 'normal',
                    lineHeight: 2
                  },
                  color: "#fff"
                },
              },
              x: {
                grid: {
                  drawBorder: false,
                  display: false,
                  drawOnChartArea: false,
                  drawTicks: false
                },
                ticks: {
                  display: false
                },
              },
            },
          },
        });


        var ctx2 = document.getElementById("chart-line").getContext("2d");

        var gradientStroke1 = ctx2.createLinearGradient(0, 230, 0, 50);

        gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
        gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
        gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

        var gradientStroke2 = ctx2.createLinearGradient(0, 230, 0, 50);

        gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.2)');
        gradientStroke2.addColorStop(0.2, 'rgba(72,72,176,0.0)');
        gradientStroke2.addColorStop(0, 'rgba(20,23,39,0)'); //purple colors

        new Chart(ctx2, {
          type: "line",
          data: {
            labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [{
                label: "Mobile apps",
                tension: 0.4,
                borderWidth: 0,
                pointRadius: 0,
                borderColor: "#cb0c9f",
                borderWidth: 3,
                backgroundColor: gradientStroke1,
                fill: true,
                data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                maxBarThickness: 6

              },
              {
                label: "Websites",
                tension: 0.4,
                borderWidth: 0,
                pointRadius: 0,
                borderColor: "#3A416F",
                borderWidth: 3,
                backgroundColor: gradientStroke2,
                fill: true,
                data: [30, 90, 40, 140, 290, 290, 340, 230, 400],
                maxBarThickness: 6
              },
            ],
          },
          options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
              legend: {
                display: false,
              }
            },
            interaction: {
              intersect: false,
              mode: 'index',
            },
            scales: {
              y: {
                grid: {
                  drawBorder: false,
                  display: true,
                  drawOnChartArea: true,
                  drawTicks: false,
                  borderDash: [5, 5]
                },
                ticks: {
                  display: true,
                  padding: 10,
                  color: '#b2b9bf',
                  font: {
                    size: 11,
                    family: "Open Sans",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
              x: {
                grid: {
                  drawBorder: false,
                  display: false,
                  drawOnChartArea: false,
                  drawTicks: false,
                  borderDash: [5, 5]
                },
                ticks: {
                  display: true,
                  color: '#b2b9bf',
                  padding: 20,
                  font: {
                    size: 11,
                    family: "Open Sans",
                    style: 'normal',
                    lineHeight: 2
                  },
                }
              },
            },
          },
        });
      </script>
      <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
          var options = {
            damping: '0.5'
          }
          Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
      </script>
      <!-- Github buttons -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
      <script src="${contextPath}/resources/assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
</body>

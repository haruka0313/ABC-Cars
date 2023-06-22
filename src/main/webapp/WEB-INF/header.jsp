<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a href="cars" class="navbar-brand fw-bold" data-toggle="tooltip" data-placement="top" title="Home">
      ABC Car Portal.
    </a>
    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <sec:authorize access="!isAuthenticated()">
          <li class="nav-item">
            <a href="register_user" class="nav-link">Register</a>
          </li>
          <li class="nav-item">
            <a href="about_us" class="nav-link">About Us</a>
          </li>
          <li class="nav-item">
            <a href="contact_us" class="nav-link">Contact Us</a>
          </li>
        </sec:authorize>
        
            <sec:authorize access="isAuthenticated()">
      <sec:authorize access="hasRole('Users')">
        <li class="nav-item">
          <a class="nav-link" href="cars">Home</a>
        </li>
      </sec:authorize>
      <sec:authorize access="hasRole('Administrator')">
        <li class="nav-item">
          <a class="nav-link" href="cars">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all_cars">Car Management</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="users">User Management</a>
        </li>
      </sec:authorize>
    </sec:authorize>

    <sec:authorize access="hasAnyRole('Administrator','Users')">
      <li class="nav-item d-none d-md-block">
        <div class="w-100 px-3">
          <sf:form action="search" method="get">
            <div class="input-group">
              <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" name="keyword" aria-describedby="search-addon" />
              <button type="submit" class="btn btn-outline-primary">Search</button>
            </div>
          </sf:form>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile">Profile</a>
      </li>
      <li class="nav-item">
        <form action="logout" method="post">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <button type="submit" name="Logout" class="btn btn-primary">Logout</button>
        </form>
      </li>
    </sec:authorize>
  </ul>
</div>
 </div>
</nav>
        
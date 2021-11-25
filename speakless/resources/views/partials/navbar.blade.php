<nav class="navbar navbar-expand-lg navbar-dark bg-danger sticky-top">
    <div class="container">
      <a class="navbar-brand fs-3 mb-2" href="/">SpeakLess</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class=" fs-5 nav-link {{ ($active === "home") ? 'active' : '' }}" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="fs-5 nav-link {{ ($active === "about") ? 'active' : '' }}" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="fs-5 nav-link {{ ($active === "blog") ? 'active' : '' }}" href="/blogs">Blog</a>
          </li>
          @auth
          <li class="nav-item">
            <a class="fs-5 nav-link {{ ($active === "dictionary") ? 'active' : '' }}" href="/categories">Dictionary</a>
          </li>
          {{-- <li class="nav-item">
            <a class="fs-5 nav-link {{ ($active === "test") ? 'active' : '' }}" href="/test">Test</a>
          </li> --}}
          @endauth
        </ul>
        <ul class="navbar-nav ms-auto">
          @auth
            <li class="nav-item dropdown">
              <a class="v nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Welcome back, {{ auth()->user()->name }}
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-window"></i>  My Dashboard</a></li>
                <li><hr class="dropdown-divider"></li>
                <li>
                  <form action="/logout" method="post">
                    @csrf
                    <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-in-left"></i>  Logout</button>
                  </form>
                  </li>
              </ul>
            </li>
          @else 
            <li class='nav-item'>
              <a href="/login" class="fs-5 nav-link {{ ($active === "login") ? 'active' : '' }}"><i class="bi bi-person-fill"></i> Login</a>
            </li>
          @endauth
        </ul>

      </div>
    </div>
  </nav>
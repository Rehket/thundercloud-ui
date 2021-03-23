<script>
    import Login from "./Login.svelte"
    import Register from "./Register.svelte";

    let showLogin = false;
</script>

<main>
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <i class="fa fa-book fa-3x"></i>
        </div>

        <div id="navbarBasic" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item">
                    Home
                </a>

                <a class="navbar-item">
                    Documentation
                </a>

                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link">
                        More
                    </a>

                    <div class="navbar-dropdown">
                        <a class="navbar-item">
                            About
                        </a>
                        <a class="navbar-item">
                            Jobs
                        </a>
                        <a class="navbar-item">
                            Contact
                        </a>
                        <hr class="navbar-divider">
                        <a class="navbar-item">
                            Report an issue
                        </a>
                    </div>
                </div>
            </div>

            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="buttons">
                        <Register/>
                        <Login/>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</main>

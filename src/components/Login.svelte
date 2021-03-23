<script>

    import EmailInput from './InputEmail.svelte';
    import PasswordInput from './InputPassword.svelte';

    let showLogin = false;
    let email = ""
    let password = ""
    let emailIsValid = false;
    let rememberMe = false;
    function validate() {
        console.log("I'm the validate() function")
    }

    function toggleLogin() {
        showLogin = !showLogin;
    }

    function handleEmailUpdate(event) {
        email = event.detail.email;
        console.log(email);
    }

    function handlePasswordUpdate(event) {
        password = event.detail.password;
        console.log(password);
    }

    function handleFocusOut(event){
        if (document.getElementById("login-form").contains(event.relatedTarget)){}
        else {
            showLogin=false;
            email=null;
            password=null;
        }
    }

</script>

<div class="dropdown is-right {showLogin ? 'is-active' : ''}"  >
    <div class="dropdown-trigger">
        <button class="button mx-1" on:click|preventDefault={toggleLogin}  aria-haspopup="true" aria-controls="dropdown-menu">
            <span>Login</span>
            <span class="icon is-small">
        <i class="fa fa-user" aria-hidden="true"></i>
      </span>
        </button>
    </div>

    <div class="dropdown-menu" id="dropdown-menu" role="menu" on:focusout={handleFocusOut}>
        <div class="dropdown-content">
            <div class="dropdown-item">

                <form on:submit|preventDefault={validate} style="width: 500px" id="login-form">


                    <EmailInput on:email_update={handleEmailUpdate}/>
                    <PasswordInput on:password_update={handlePasswordUpdate}/>
                    <div class="field">
                        <label for="remember-me" class="checkbox">Remember Me</label>
                        <input type="checkbox" name="remember-me" id="remember-me" bind:value={rememberMe}>
                    </div>
                    <button type="submit" class="button is-success">
                        Login
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>







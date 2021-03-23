<script>

    import EmailInput from './InputEmail.svelte';

    let showRegistration = false;
    let email = ""
    let emailIsValid = false;

    function validate() {
        console.log("I'm the validate() function")
    }

    function toggleRegistration() {
        showRegistration = !showRegistration;
    }

    function handleEmailUpdate(event) {
        email = event.detail.email;
        console.log(email);
    }

    function handleFocusOut(event) {
        if (document.getElementById("login-form").contains(event.relatedTarget)) {
        } else {
            showRegistration = false;
            email = null;
        }
    }

</script>

<div class="dropdown is-right {showRegistration ? 'is-active' : ''}">
    <div class="dropdown-trigger">
        <button class="button is-primary mx-1" on:click|preventDefault={toggleRegistration} aria-haspopup="true"
                aria-controls="dropdown-menu">
            <span>Register</span>
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

                    <button type="submit" class="button is-success">
                        Submit
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>






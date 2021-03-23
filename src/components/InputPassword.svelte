<script>

    import { createEventDispatcher } from 'svelte';
    const dispatch = createEventDispatcher();
    const passwordRegex = new RegExp(/^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{10,})/g);
    let password;
    let passwordLookSafe;
    let hasTouched = false;

    function passwordUpdate(){
        hasTouched =true;
        passwordRegex.lastIndex = 0;
        passwordLookSafe = (passwordRegex.test(password) && passwordRegex.lastIndex === password.length);
        if(passwordLookSafe){
            dispatch('password_update', {
                password: password
            });
        }
    }
</script>

<div class="field" on:focusout={passwordUpdate}>
    <label for="password-input" class="label">
        Password
    </label>
    <div class="control has-icons-left has-icons-right">
        <input class="input {hasTouched && passwordLookSafe ? 'is-success' : ''} {hasTouched && !passwordLookSafe ? 'is-danger' : ''}"
               type="password"
               placeholder="********"
               name="password-input"
               id="password-input"
               required
               bind:value={password}
        >
        <span class="icon is-small is-left">
            <i class="fa fa-lock"></i>
        </span>
        <span class="icon is-small is-right">
            {#if passwordLookSafe}
                <i class="fa fa-check"></i>
            {:else }
                <i class="fa fa-exclamation-triangle"></i>
            {/if}
        </span>
    </div>
</div>
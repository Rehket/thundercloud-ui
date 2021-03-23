<script>

    import { createEventDispatcher } from 'svelte';
    const dispatch = createEventDispatcher();
    const emailRegex = new RegExp(/(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/g);
    let email;
    let emailLooksValid;
    let hasTouched = false;

    function emailUpdate(){
        hasTouched =true;
        emailRegex.lastIndex = 0;
        emailLooksValid = (emailRegex.test(email) && emailRegex.lastIndex === email.length);
        if(emailLooksValid){
            console.log("dispatched enevt");
            dispatch('emailupdate', {
                email: email
            });
        }
    }
</script>

<div class="field" on:focusout={emailUpdate}>
    <label for="email-input" class="label">Email</label>
    <div class="control has-icons-left has-icons-right">
        <input class="input {hasTouched && emailLooksValid ? 'is-success' : ''} {hasTouched && !emailLooksValid ? 'is-danger' : ''}"
               type="email"
               placeholder="your-email@here.com"
               id="email-input"
               bind:value={email}
               he
        >
        <span class="icon is-small is-left">
            <i class="fa fa-user"></i>
        </span>
        <span class="icon is-small is-right">
            {#if emailLooksValid}
                <i class="fa fa-check"></i>
            {:else }
                <i class="fa fa-exclamation-triangle"></i>
            {/if}
        </span>
    </div>
</div>
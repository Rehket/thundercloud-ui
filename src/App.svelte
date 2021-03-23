<script>
	export let name;
	import Login from "./components/Login.svelte"
	import NavBar from "./components/NavBar.svelte"
</script>

<main>
<NavBar>
	<Login/>
</NavBar>
<section class="section">
	<h1 class="title">Section</h1>
	<h2 class="subtitle">
		A simple container to divide your page into <strong>sections</strong>, like the one you're currently reading.
	</h2>
</section>
<footer class="footer">
	<div class="content has-text-centered">
		<p>
			<strong>Bulma</strong> by <a href="https://jgthms.com">Jeremy Thomas</a>. The source code is licensed
			<a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content
			is licensed <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY NC SA 4.0</a>.
		</p>
	</div>
</footer>
</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
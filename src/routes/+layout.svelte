<script>
  import "$lib/styles/app.css";
  import "@fontsource/inter-tight";
  import "@fontsource/inter-tight/600.css";

  import { fly } from "svelte/transition";
  export let data;
</script>

{#key data}
  <div in:fly={{ x: 50, duration: 500 }} out:fly={{ x: -50 }}>
    <slot />
  </div>
{/key}

<style>
  :global(body) {
    margin: 0;
    background-color: #131313;
  }
</style>
<script>
  export let text = '';
</script>

<button
  on:click
  class="w-full bg-slate-100 p-4 text-left text-sm font-medium text-immich-fg hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-inset dark:text-immich-dark-bg"
  role="menuitem"
>
  {#if text}
    {text}
  {:else}
    <slot />
  {/if}
</button>

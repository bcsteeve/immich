<script lang="ts">
  import { goto } from '$app/navigation';
  import { fileUploadHandler, openFileUploadDialog } from '$lib/utils/file-uploader';
  import { downloadArchive } from '$lib/utils/asset-utils';
  import { api, AssetResponseDto, SharedLinkResponseDto } from '@api';
  import { dragAndDropFilesStore } from '$lib/stores/drag-and-drop-files.store';
  import ArrowLeft from 'svelte-material-icons/ArrowLeft.svelte';
  import FileImagePlusOutline from 'svelte-material-icons/FileImagePlusOutline.svelte';
  import FolderDownloadOutline from 'svelte-material-icons/FolderDownloadOutline.svelte';
  import CircleIconButton from '../elements/buttons/circle-icon-button.svelte';
  import DownloadAction from '../photos-page/actions/download-action.svelte';
  import RemoveFromSharedLink from '../photos-page/actions/remove-from-shared-link.svelte';
  import AssetSelectControlBar from '../photos-page/asset-select-control-bar.svelte';
  import ControlAppBar from '../shared-components/control-app-bar.svelte';
  import GalleryViewer from '../shared-components/gallery-viewer/gallery-viewer.svelte';
  import SelectAll from 'svelte-material-icons/SelectAll.svelte';
  import ImmichLogo from '../shared-components/immich-logo.svelte';

  import { notificationController, NotificationType } from '../shared-components/notification/notification';
  import { handleError } from '../../utils/handle-error';

  export let sharedLink: SharedLinkResponseDto;
  export let isOwned: boolean;

  let selectedAssets: Set<AssetResponseDto> = new Set();

  $: assets = sharedLink.assets;
  $: isMultiSelectionMode = selectedAssets.size > 0;

  dragAndDropFilesStore.subscribe((value) => {
    if (value.isDragging && value.files.length > 0) {
      handleUploadAssets(value.files);
      dragAndDropFilesStore.set({ isDragging: false, files: [] });
    }
  });

  const downloadAssets = async () => {
    await downloadArchive(`immich-shared.zip`, { assetIds: assets.map((asset) => asset.id) }, sharedLink.key);
  };

  const handleUploadAssets = async (files: File[] = []) => {
    try {
      let results: (string | undefined)[] = [];
      if (!files || files.length === 0 || !Array.isArray(files)) {
        results = await openFileUploadDialog(undefined, sharedLink.key);
      } else {
        results = await fileUploadHandler(files, undefined, sharedLink.key);
      }
      const { data } = await api.sharedLinkApi.addSharedLinkAssets({
        id: sharedLink.id,
        assetIdsDto: {
          assetIds: results.filter((id) => !!id) as string[],
        },
        key: sharedLink.key,
      });

      const added = data.filter((item) => item.success).length;

      notificationController.show({
        message: `Added ${added} assets`,
        type: NotificationType.Info,
      });
    } catch (e) {
      handleError(e, 'Unable to add assets to shared link');
    }
  };

  const handleSelectAll = () => {
    selectedAssets = new Set(assets);
  };
</script>

<section class="bg-immich-bg dark:bg-immich-dark-bg">
  {#if isMultiSelectionMode}
    <AssetSelectControlBar assets={selectedAssets} clearSelect={() => (selectedAssets = new Set())}>
      <CircleIconButton title="Select all" logo={SelectAll} on:click={handleSelectAll} />
      {#if sharedLink?.allowDownload}
        <DownloadAction filename="immich-shared.zip" sharedLinkKey={sharedLink.key} />
      {/if}
      {#if isOwned}
        <RemoveFromSharedLink bind:sharedLink />
      {/if}
    </AssetSelectControlBar>
  {:else}
    <ControlAppBar on:close-button-click={() => goto('/photos')} backIcon={ArrowLeft} showBackButton={false}>
      <svelte:fragment slot="leading">
        <a
          data-sveltekit-preload-data="hover"
          class="ml-6 flex place-items-center gap-2 hover:cursor-pointer"
          href="https://immich.app"
        >
          <ImmichLogo height="30" width="30" />
          <h1 class="font-immich-title text-lg text-immich-primary dark:text-immich-dark-primary">IMMICH</h1>
        </a>
      </svelte:fragment>

      <svelte:fragment slot="trailing">
        {#if sharedLink?.allowUpload}
          <CircleIconButton title="Add Photos" on:click={() => handleUploadAssets()} logo={FileImagePlusOutline} />
        {/if}

        {#if sharedLink?.allowDownload}
          <CircleIconButton title="Download" on:click={downloadAssets} logo={FolderDownloadOutline} />
        {/if}
      </svelte:fragment>
    </ControlAppBar>
  {/if}
  <section class="my-[160px] flex flex-col px-6 sm:px-12 md:px-24 lg:px-40">
    <GalleryViewer {assets} {sharedLink} bind:selectedAssets viewFrom="shared-link-page" />
  </section>
</section>

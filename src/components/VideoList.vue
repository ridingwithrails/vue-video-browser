<template>
		<ul class="list-group" >	
			<VideoListItem 
				v-for="video in videos" 
				:video="video" 
				:key="video.etag"
				@videoSelect="onVideoSelect"
			></VideoListItem>			
		</ul>
</template>

<script>
import VideoListItem from './VideoListItem'
export default {
	name: 'VideoList',
	components: {
		VideoListItem
	},
	methods:{
		onVideoSelect(video) {
			this.$emit("videoSelect", video)
		}
	},
	props: ['videos']
}
</script>

<style>

</style>
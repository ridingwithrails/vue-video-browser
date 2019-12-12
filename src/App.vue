<template>
	<div class="container">
		<SearchBar @termChanged="onTermChanged"></SearchBar>
		<VideoDetail :video="selectedVideo" />
		<VideoList :videos="videos" @videoSelect="onVideoSelect" />
	</div>
</template>

<script>
import axios from 'axios';
import SearchBar from './components/SearchBar'
import VideoList from './components/VideoList'
import VideoDetail from './components/VideoDetail'
const API_KEY = ''
export default {
	name: 'App',
	components: {
		SearchBar,
		VideoList,
		VideoDetail 
	},
	data() {
		return {
			videos: [],
			selectedVideo: null
		}
	},
	methods: {
		onVideoSelect(video){
			this.selectedVideo = video
		},
		onTermChanged(searchTerm) {  //catches data from child
			if(searchTerm.length > 3){	
				axios.get("https://www.googleapis.com/youtube/v3/search", {
					params: {
						key: API_KEY,
						type: 'video',
						part: 'snippet',
						q: searchTerm
					}
				}).then(response =>{
					console.log(response)
					this.videos = response.data.items
				})
			}
		}
	}
}
</script>
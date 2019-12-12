<template>
	<li class="list-group-item media" @click="videoSelect">
		<img class="mr-3" :src="thumbNailUrl"/>
		<div class="media-body">{{video.snippet.title}}</div>
		
		
		</li>
</template>

<script>
export default {
	name: 'VideoListItem',
	props: ['video'],
	computed: {
		thumbNailUrl() {
			return this.video.snippet.thumbnails.default.url
		}
	},
	methods:{
		videoSelect() {
			this.$emit("videoSelect", this.video)
		},
	}
}
</script>
<style scoped>
li {
	display: flex;
	cursor: pointer;
}
li:hover {
	background-color: #eee;
}
</style>

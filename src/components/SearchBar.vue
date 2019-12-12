<template>
	<div>
		<input @input="onInput">
	</div>
</template>

<script>
export default {
	name: 'SearchBar',
	methods: {
		onInput: function(e) { 
			this.$emit('termChanged', e.target.value); //Child to Parent comm
		}
	}
}
</script>

<style scoped>
input {
	width: 75%;
}
div {
	text-align: center;
	margin: 20px;
}
</style>>


<template>
    asassd
    {{ fileList }}
</template>>

<script>
import axios from 'axios';

export default ({

    name: "FileList",
    data() {
        return {
            fileList: null,
        };
    },
    mounted() {
        axios.get("http://localhost:8000/files/")
            .then(response => {
                this.fileList = response.data;
                console.log(this.fileList);
            })
            .catch(error => {
                this.errorMessage = error.message;
                console.error("There was an error!", error);
            });
    }
})
</script>

<script lang="ts">
export default {
    props: {
        tempoEmSegundos: {
            type: Number,
            default: 0,
        }
    },
    computed: {
        tempoDecorrido(): string {
            return new Date(this.tempoEmSegundos * 1000).toISOString().substring(11, 19);
        }
    }

}
</script>
<template>
    <section>
        <strong> {{ tempoDecorrido }} </strong>
    </section>
</template>
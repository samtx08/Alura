<script lang="ts">
import type { PropType } from 'vue';
import Cronometro from './Cronometro.vue';
import type ITarefa from '@/interfaces/ITarefa';
import Box from './Box.vue';

export default {
    components: { Cronometro, Box },
    props: {
        tarefa: {
            type: Object as PropType<ITarefa>,
            required: true,
        }
    }
}
</script>
<template>
    <Box>
        <div class="column is-7">
            {{ tarefa.descricao || "Tarefa sem descrição" }}
        </div>
        <div class="column">
            <Cronometro :tempo-em-segundos="tarefa.duracaoEmSegundos" />
        </div>
    </Box>
</template>

<script lang="ts">
import Temporizador from './Temporizador.vue';

export default {
    emits: ['aoSalvarTarefa'],
    components: { Temporizador },
    methods: {
        finalizarTarefa(tempoDecorrido: number): void {
            this.$emit('aoSalvarTarefa', {
                duracaoEmSegundos: tempoDecorrido,
                descricao: this.descricao
            })
            this.descricao = ''
        },
    },
    data() {
        return {
            descricao: '',
            cronometroRodando: false,
        }
    }

}
</script>
<template>
    <div class="box">
        <div class="columns">
            <div class="column is-8" role="form" aria-label="Formulário para criação de uma nova tarefa">
                <input type="text" class="input" placeholder="Qual tarefa você deseja iniciar?"
                    :disabled="cronometroRodando" v-model="descricao" />
            </div>
            <div class="column">
                <Temporizador v-model:cronometroRodando="cronometroRodando"
                    @ao-temporizador-finalizado="finalizarTarefa" />
            </div>
        </div>
    </div>
</template>

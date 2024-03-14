<script lang="ts">
import Botao from './Botao.vue';
import Cronometro from './Cronometro.vue';
export default{
    components: { Cronometro, Botao },
    emits: ['aoTemporizadorFinalizado', 'update:cronometroRodando'],
    data() {
        return {
            tempoEmSegundos: 0,
            cronometro: 0,
            cronometroRodando: false,
        }
    },
    methods: {
        iniciar() {
            this.cronometroRodando = true;
            this.cronometro = setInterval(() => {
                this.tempoEmSegundos += 1;
            }, 1000)
            this.$emit('update:cronometroRodando', this.cronometroRodando);

        },
        finalizar() {
            this.cronometroRodando = false;
            clearInterval(this.cronometro);
            this.$emit('aoTemporizadorFinalizado', this.tempoEmSegundos)
            this.tempoEmSegundos = 0;
            this.$emit('update:cronometroRodando', this.cronometroRodando);
        }
    }
}
</script>

<template>
  <div class="is-flex is-align-items-center is-justify-content-space-between">
                    <Cronometro :tempoEmSegundos />
                    <Botao @clicado="iniciar" icone="fas fa-play" texto="Iniciar" :desabilitado="cronometroRodando" />
    <Botao @clicado="finalizar" icone="fas fa-stop" texto="Parar" :desabilitado="!cronometroRodando" />
                </div>
    
</template>
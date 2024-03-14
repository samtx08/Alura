<script lang="ts">
import BarraLateral from './components/BarraLateral.vue';
import Formulario from './components/Formulario.vue';
import Tarefa from './components/Tarefa.vue';
import Box from './components/Box.vue';
import type ITarefa from './interfaces/ITarefa';
export default {
  components: { Tarefa, BarraLateral, Formulario, Box },
  data() {
    return {
      tarefas: [] as ITarefa[]
    }
  },
  methods: {
    salvarTarefa(tarefa: ITarefa) {
      this.tarefas.push(tarefa)
    }
  },
  computed: {
    listaEstaVazia () : boolean {
      return this.tarefas.length === 0;
    }
  }
}
</script>

<template>
  <main class="columns is-gapless is-multiline">
    <div class="column is-one-quarter">
      <BarraLateral />
    </div>
    <div class="column is-three-quarter">
      <Formulario @ao-salvar-tarefa="salvarTarefa" />
      <div class="lista">
        <Tarefa v-for="(tarefa, index) in tarefas" :key="index" :tarefa="tarefa" />
        <Box v-if="listaEstaVazia">
          Você não está muito produtivo hoje :(
        </Box>
      </div>

    </div>
  </main>

</template>

<style scoped>
.lista {
  padding: 1.25rem;
}

</style>

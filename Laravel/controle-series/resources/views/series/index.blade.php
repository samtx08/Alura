<x-layout title="Séries" >
    <a href="/series/create" class="btn btn-light mb-2" >Adicionar</a>
    <ul class="list-group">
        @foreach ($series as $serie)
        <li class="list-group-item">{{ $serie->nome }}</li>
        @endforeach
    </ul>
</x-layout>

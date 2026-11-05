function ets2-original
    set -l mod "$HOME/.local/share/Steam/steamapps/compatdata/227300/pfx/drive_c/users/steamuser/Documents/Euro Truck Simulator 2/mod"
    set -l target "$HOME/Downloads/ETS2-Mods-Original"

    if not test -d "$target"
        echo "Coleção Original não encontrada."
        return 1
    end

    if test -e "$mod"; and not test -L "$mod"
        echo "Erro: mod não é um link simbólico."
        return 1
    end

    if test -L "$mod"
        rm "$mod"; or return 1
    end

    ln -s "$target" "$mod"; or return 1

    echo "Coleção ativa: Original"
end

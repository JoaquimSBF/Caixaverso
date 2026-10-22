# Espaço dos alunos · CAIXA Verso

Esta branch (`alunos`) é onde a turma publica os próprios trabalhos. A `main` guarda o material oficial do curso e não deve ser alterada pelos alunos.

## Regra de ouro

Cada aluno trabalha **só na própria pasta**: `alunos/<seu-usuario-github>/`.

Não edite nada fora dela: nem o notebook da raiz, nem `data/`, `outputs/` ou `app/`. Notebooks geram conflitos difíceis de resolver quando duas pessoas mexem no mesmo arquivo. Com uma pasta por aluno, isso não acontece.

## Passo 1 · Aceitar o convite

Você vai receber um convite de colaborador por e-mail ou em [github.com/notifications](https://github.com/notifications). Aceite antes de continuar: sem o convite aceito, o envio é recusado.

## Passo 2 · Criar sua pasta e salvar o trabalho

### Opção A · Pelo Google Colab (sem instalar nada)

1. Abra `caixa_verso_colab.ipynb` no Colab e rode normalmente.
2. No menu, clique em **Arquivo → Salvar uma cópia no GitHub**.
3. Na primeira vez, autorize o Colab a acessar o seu GitHub. Depois preencha:
   - Repositório: `JoaquimSBF/Caixaverso`
   - Branch: `alunos`
   - Caminho do arquivo: `alunos/<seu-usuario-github>/caixa_verso_<seu-usuario-github>.ipynb`
   - Mensagem de commit: o que você fez
4. Confirme. A sua pasta é criada junto com o arquivo.

Para salvar uma nova versão, repita o passo 2 com o mesmo caminho.

### Opção B · Pelo computador (Git)

```bash
git clone https://github.com/JoaquimSBF/Caixaverso.git
cd Caixaverso
git checkout alunos
```

Crie a sua pasta a partir do modelo e copie o notebook para dentro dela (PowerShell):

```powershell
Copy-Item -Recurse alunos\_modelo alunos\<seu-usuario-github>
Copy-Item caixa_verso_colab.ipynb alunos\<seu-usuario-github>\caixa_verso_<seu-usuario-github>.ipynb
```

Na **sua cópia** do notebook, ajuste `CAMINHO_LOCAL_ALUNO` para a raiz do clone, ou seja, a pasta que contém `data/` (por exemplo `C:\Users\voce\Caixaverso`). Não aponte para a sua pasta de aluno: o notebook procura os dados em `data/bronze` a partir da raiz.

Para enviar:

```bash
git add alunos/<seu-usuario-github>
git commit -m "alunos/<seu-usuario-github>: descreva o que fez"
git pull --rebase origin alunos
git push origin alunos
```

Use sempre `git add alunos/<seu-usuario-github>`, nunca `git add .`. Quando roda, o notebook regrava arquivos em `data/` e `outputs/` na raiz, e esses arquivos não devem entrar no seu commit.

Se o envio for recusado porque alguém enviou antes de você, rode de novo o `git pull --rebase origin alunos` e repita o `git push`.

## O que não pode subir

- Chave de API (`GEMINI_API_KEY`), arquivo `.env` ou senha. No Colab, guarde a chave no ícone de chave (Secrets). No computador, o `.env` já é ignorado pelo Git.
- Dados reais de clientes ou qualquer dado pessoal. O projeto usa só dados sintéticos.
- Arquivos grandes (acima de 25 MB).

## Dúvidas

Abra uma Issue no repositório ou fale com o professor.

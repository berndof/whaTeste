- Antes de começar, certifique-se de que seu sistema esteja atualizado executando o seguinte comando:

```bash
sudo apt update && sudo apt upgrade -y
```

- Certifique-se também de ter o Docker e o docker-compose instalados em seu sistema. Você pode instalá-los executando o seguinte comando:

```bash
sudo apt install docker docker.io docker-compose -y
sudo usermod -aG docker $USER
sudo systemctl start docker
```

- Clone o repositório do GitHub para seu sistema:

```bash
sudo git clone https://github.com/berndof/whaTeste.git && cd whaTeste && chmod +x install.sh
```
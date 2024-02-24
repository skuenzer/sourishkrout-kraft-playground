---
runme:
  id: 01HPWJCE8KV0MGNRH31C15832H
  version: v3
---

```sh {"id":"01HQA0G42F0ZVXABHCCZE8REGE"}
source ~/.profile
```

```sh {"id":"01HPWJD84VGHYZAWSB4XBC338E"}
brew install unikraft/cli/kraftkit
```

```sh {"id":"01HQ9Z8PECC149XE9BDKAFNHPX"}
sudo curl --proto '=https' --tlsv1.2 -sSf https://get.kraftkit.sh | sudo sh
```

```sh {"id":"01HQ9WB1C1NNXGZG71CMEJJ6W4"}
sudo docker run -d --name buildkitd --privileged moby/buildkit:latest
```

```sh {"id":"01HPWJCFZCTX9GKEKQTGDRC6RG","promptEnv":"false"}
export KRAFTCLOUD_METRO="was1"
export KRAFTKIT_BUILDKIT_HOST="docker-container://buildkitd"
```

```sh {"id":"01HQ9W9Y6TFYTCBPMR93YGFMNE"}
kraft cloud deploy -p 443:8080 -M 2048
```

```sh {"id":"01HQA0KQ9FX6W9KSV087NWXT54"}
kraft cloud instance logs 758e2b11-5f43-4846-9170-e6b265010d01
```

```sh {"id":"01HPWJJW31J5JXJTK914Y1X0NB"}
kraft cloud instance remove 758e2b11-5f43-4846-9170-e6b265010d01
```

```sh {"id":"01HPWNX3QYN3AS43V3K3KR673E"}
kraft cloud instances list
```

```sh {"id":"01HPWNZEFVBFDEYHPKBPNJVNCS"}
kraft cloud image list
```
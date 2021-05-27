Run `mythtv-setup` in an `ssh -X` session with

    docker run --rm \
               --entrypoint=mythtv-setup \
               -v mythtvconfig:/etc/mythtv \
               -v mythtvhome:/root/.mythtv \
               --name mythtv \
               --volumes-from mariadb \
               --volumes-from shepherd:ro \
               --net=host \
               -v /tmp/.X11-unix:/tmp/.X11-unix \
               -v /home/will/.Xauthority:/root/.Xauthority \
               -v /mnt/mythtvzpool:/mnt/storage \
               -e DISPLAY=$DISPLAY \
      willat8/mythtv:20210121

Run `mythbackend` with

    docker run -d \
               --restart=always \
               -v mythtvconfig:/etc/mythtv \
               -v mythtvhome:/root/.mythtv \
               --name mythtv \
               --volumes-from mariadb \
               --volumes-from shepherd:ro \
               --net=host \
               -v /mnt/mythtvzpool:/mnt/storage \
      willat8/mythtv:20210121

mariadb             latest              56089178535f        24 months ago       349MB

[
    {
        "Id": "sha256:56089178535fa9944adf2b14559c48dac5a75e363385473489d7968d3352bcac",
        "RepoTags": [
            "mariadb:latest"
        ],
        "RepoDigests": [
            "mariadb@sha256:48f2bbe16e546469b92d2f9c70c684b514bf12f23aa4ad4f13b805ddcb21ca46"
        ],
        "Parent": "",
        "Comment": "",
        "Created": "2019-06-04T21:21:26.263303542Z",
        "Container": "259862a1f4f7af0595a8b7c5190a9faa2e80679236829f8eb17cabddc4e02fe1",
        "ContainerConfig": {
            "Hostname": "259862a1f4f7",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "3306/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GOSU_VERSION=1.10",
                "GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8",
                "MARIADB_MAJOR=10.3",
                "MARIADB_VERSION=1:10.3.15+maria~bionic"
            ],
            "Cmd": [
                "/bin/sh",
                "-c",
                "#(nop) ",
                "CMD [\"mysqld\"]"
            ],
            "ArgsEscaped": true,
            "Image": "sha256:3df6545fec35cfc5d66ff85c39211f3a4bba380ba697d6ccff28c6be9b66bb6b",
            "Volumes": {
                "/var/lib/mysql": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": {}
        },
        "DockerVersion": "18.06.1-ce",
        "Author": "",
        "Config": {
            "Hostname": "",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "3306/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GOSU_VERSION=1.10",
                "GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8",
                "MARIADB_MAJOR=10.3",
                "MARIADB_VERSION=1:10.3.15+maria~bionic"
            ],
            "Cmd": [
                "mysqld"
            ],
            "ArgsEscaped": true,
            "Image": "sha256:3df6545fec35cfc5d66ff85c39211f3a4bba380ba697d6ccff28c6be9b66bb6b",
            "Volumes": {
                "/var/lib/mysql": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": null
        },
        "Architecture": "amd64",
        "Os": "linux",
        "Size": 349476536,
        "VirtualSize": 349476536,
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/196a0382ff10ef9f033950ba81cb5733ec1f406c2e741f12b09f6ee8f2362c97/diff:/var/lib/docker/overlay2/6fcebe759e75c124ebfd0ffe40cebd6891c9f7bfd6646d834151a5e2cf1f098d/diff:/var/lib/docker/overlay2/1836d89669824e914e0c8db773d93215c1473741f4b6899d73696bba2d91867b/diff:/var/lib/docker/overlay2/ef4cbe4bfb6ba9d603441804a1ffc7e2f896bed5c90cda5392b142c02150af4d/diff:/var/lib/docker/overlay2/2f6cf3e24b9ed7bebf304207567fa13e1415f98e7a656d487976cb46b1feb3b4/diff:/var/lib/docker/overlay2/d82e0ec8c0464e76df008444f2a76370c0a8f4f857ed2e7eef4a6ee5a084f78b/diff:/var/lib/docker/overlay2/64cc2006e74cd06d99dd30da9e699ee01e5ca1d7407dcac1a11d229b67859854/diff:/var/lib/docker/overlay2/e11a7968dcb3c756ce12025fa88016c7c58193a1bcc50f19f3ac65b07a578521/diff:/var/lib/docker/overlay2/7de34dbc613d3bc5de61e8813a062f52436ca857c60947c5580e25207d3804c8/diff:/var/lib/docker/overlay2/75d0411c912410bffe1f6c9b736776b61c5e7735f06e1ac5c912e8b61c67289a/diff:/var/lib/docker/overlay2/700c4bd5abe76072aa1c674b5f0acccdea576a6cfad07f9fd4ffc4b04df62a64/diff:/var/lib/docker/overlay2/aa3ded02dd21abcc532c6ac391d4e724b85c0292b5bf42bc1de10db027e196e6/diff",
                "MergedDir": "/var/lib/docker/overlay2/d24abac7ec5b9b4aae83de44ce811e03ef31e3e79a6ec06961d75a2cd445684e/merged",
                "UpperDir": "/var/lib/docker/overlay2/d24abac7ec5b9b4aae83de44ce811e03ef31e3e79a6ec06961d75a2cd445684e/diff",
                "WorkDir": "/var/lib/docker/overlay2/d24abac7ec5b9b4aae83de44ce811e03ef31e3e79a6ec06961d75a2cd445684e/work"
            },
            "Name": "overlay2"
        },
        "RootFS": {
            "Type": "layers",
            "Layers": [
                "sha256:02571d034293cb241c078d7ecbf7a84b83a5df2508f11a91de26ec38eb6122f1",
                "sha256:270f934787edf0135132b6780cead0f12ca11690c5d6a5d395e44d290912100a",
                "sha256:8d267010480fed7e616b9b7861854042aad4ef5e55f8771f2c738061640d2cb0",
                "sha256:60599e4a285c3b7e3401a3d1642938d57115563e504c0631f5bdf1073bd060bc",
                "sha256:6cdee6a0a989ccc41435500a4c9d1e2c717788463db58654f73d51713ec5b471",
                "sha256:466fae997be10c75daa224d9267742f4390cab5a45e82aea52a389445ea341a3",
                "sha256:6c5c7d6846be77fec0e01f59430ec02ce34d16b3aa685436082b546e2e35021e",
                "sha256:ff763fe66f4bfe92ea48ec584d211514c04981193c966769923a4410af144170",
                "sha256:cc464e173b968b7583c070b687d50d5284c553080178aa9e43b93031db4e2188",
                "sha256:86c9ea2c9fa40c00ed61c93bcf512fe7e48dfe2a71e6e46c132e143a47ac6a34",
                "sha256:c1917055786283152b96f4693d3f13a971b342365076a022c2804fe65162019e",
                "sha256:391301aefa5b290a2aa61ae636018672b0cb3a48829b1a5882e7f6ee93c196fd",
                "sha256:c7a487306f02e486d0622b45e3cdc423710547aa254d9abe1dc2b282b573ff6a"
            ]
        },
        "Metadata": {
            "LastTagTime": "0001-01-01T00:00:00Z"
        }
    }
]

[
    {
        "Id": "f0719d8d315ca18337dbdcabd91d8f825509e29adadba1bf276d0f72fbda6bd3",
        "Created": "2019-06-09T22:01:36.39625542Z",
        "Path": "docker-entrypoint.sh",
        "Args": [
            "mysqld"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 11892,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2021-03-28T01:20:58.401749343Z",
            "FinishedAt": "2021-03-28T01:03:43.536976972Z"
        },
        "Image": "sha256:56089178535fa9944adf2b14559c48dac5a75e363385473489d7968d3352bcac",
        "ResolvConfPath": "/var/lib/docker/containers/f0719d8d315ca18337dbdcabd91d8f825509e29adadba1bf276d0f72fbda6bd3/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/f0719d8d315ca18337dbdcabd91d8f825509e29adadba1bf276d0f72fbda6bd3/hostname",
        "HostsPath": "/var/lib/docker/containers/f0719d8d315ca18337dbdcabd91d8f825509e29adadba1bf276d0f72fbda6bd3/hosts",
        "LogPath": "/var/lib/docker/containers/f0719d8d315ca18337dbdcabd91d8f825509e29adadba1bf276d0f72fbda6bd3/f0719d8d315ca18337dbdcabd91d8f825509e29adadba1bf276d0f72fbda6bd3-json.log",
        "Name": "/mariadb",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": [
                "mariadbsock:/var/run/mysqld",
                "mythconverg:/var/lib/mysql"
            ],
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {
                    "max-file": "2",
                    "max-size": "25m"
                }
            },
            "NetworkMode": "default",
            "PortBindings": {
                "3306/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "3306"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "always",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "CapAdd": null,
            "CapDrop": null,
            "Capabilities": null,
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "shareable",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "ConsoleSize": [
                0,
                0
            ],
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": null,
            "BlkioDeviceWriteBps": null,
            "BlkioDeviceReadIOps": null,
            "BlkioDeviceWriteIOps": null,
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "KernelMemory": 0,
            "KernelMemoryTCP": 0,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": 0,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/asound",
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/aed7c1383a18d802574bec272244bb805013a96dfbfe96b6c206ed64e5d27c36-init/diff:/var/lib/docker/overlay2/d24abac7ec5b9b4aae83de44ce811e03ef31e3e79a6ec06961d75a2cd445684e/diff:/var/lib/docker/overlay2/196a0382ff10ef9f033950ba81cb5733ec1f406c2e741f12b09f6ee8f2362c97/diff:/var/lib/docker/overlay2/6fcebe759e75c124ebfd0ffe40cebd6891c9f7bfd6646d834151a5e2cf1f098d/diff:/var/lib/docker/overlay2/1836d89669824e914e0c8db773d93215c1473741f4b6899d73696bba2d91867b/diff:/var/lib/docker/overlay2/ef4cbe4bfb6ba9d603441804a1ffc7e2f896bed5c90cda5392b142c02150af4d/diff:/var/lib/docker/overlay2/2f6cf3e24b9ed7bebf304207567fa13e1415f98e7a656d487976cb46b1feb3b4/diff:/var/lib/docker/overlay2/d82e0ec8c0464e76df008444f2a76370c0a8f4f857ed2e7eef4a6ee5a084f78b/diff:/var/lib/docker/overlay2/64cc2006e74cd06d99dd30da9e699ee01e5ca1d7407dcac1a11d229b67859854/diff:/var/lib/docker/overlay2/e11a7968dcb3c756ce12025fa88016c7c58193a1bcc50f19f3ac65b07a578521/diff:/var/lib/docker/overlay2/7de34dbc613d3bc5de61e8813a062f52436ca857c60947c5580e25207d3804c8/diff:/var/lib/docker/overlay2/75d0411c912410bffe1f6c9b736776b61c5e7735f06e1ac5c912e8b61c67289a/diff:/var/lib/docker/overlay2/700c4bd5abe76072aa1c674b5f0acccdea576a6cfad07f9fd4ffc4b04df62a64/diff:/var/lib/docker/overlay2/aa3ded02dd21abcc532c6ac391d4e724b85c0292b5bf42bc1de10db027e196e6/diff",
                "MergedDir": "/var/lib/docker/overlay2/aed7c1383a18d802574bec272244bb805013a96dfbfe96b6c206ed64e5d27c36/merged",
                "UpperDir": "/var/lib/docker/overlay2/aed7c1383a18d802574bec272244bb805013a96dfbfe96b6c206ed64e5d27c36/diff",
                "WorkDir": "/var/lib/docker/overlay2/aed7c1383a18d802574bec272244bb805013a96dfbfe96b6c206ed64e5d27c36/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [
            {
                "Type": "volume",
                "Name": "mythconverg",
                "Source": "/var/lib/docker/volumes/mythconverg/_data",
                "Destination": "/var/lib/mysql",
                "Driver": "local",
                "Mode": "z",
                "RW": true,
                "Propagation": ""
            },
            {
                "Type": "volume",
                "Name": "mariadbsock",
                "Source": "/var/lib/docker/volumes/mariadbsock/_data",
                "Destination": "/var/run/mysqld",
                "Driver": "local",
                "Mode": "z",
                "RW": true,
                "Propagation": ""
            }
        ],
        "Config": {
            "Hostname": "f0719d8d315c",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "3306/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "MYSQL_ROOT_PASSWORD=root",
                "MYSQL_DATABASE=mythconverg",
                "MYSQL_USER=mythtv",
                "MYSQL_PASSWORD=mythtv",
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GOSU_VERSION=1.10",
                "GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8",
                "MARIADB_MAJOR=10.3",
                "MARIADB_VERSION=1:10.3.15+maria~bionic"
            ],
            "Cmd": [
                "mysqld"
            ],
            "ArgsEscaped": true,
            "Image": "mariadb",
            "Volumes": {
                "/var/lib/mysql": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": {}
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "c5faf4b801cd89d939c9241ba168c40b3ff97395ee94da515ddeaed4b2e0f907",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {
                "3306/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "3306"
                    }
                ]
            },
            "SandboxKey": "/var/run/docker/netns/c5faf4b801cd",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "751d5a84013ceb0db7f2b2be23431778ce15f62eb8c9a8ee27538533c9c3d1e8",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.3",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:03",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "NetworkID": "5ffc3ad47ec2260f0934d17bfb259c1b46ad757c739a596e288d01713f24ab03",
                    "EndpointID": "751d5a84013ceb0db7f2b2be23431778ce15f62eb8c9a8ee27538533c9c3d1e8",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.3",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:11:00:03",
                    "DriverOpts": null
                }
            }
        }
    }
]

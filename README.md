A minimal demo project showing how to back up and restore Docker volumes using a containerized backup script.

This project demonstrates:

how to mount Docker volumes inside a utility container

how to create compressed backups using tar

how to restore data back into a volume

how to run backup/restore tasks via Docker Compose

Useful for learning how Docker volumes work and how to manage persistent data in containerized environments.

Project Structure
Код
docker-volume-backup/
├── backup.sh
├── restore.sh
├── Dockerfile
└── docker-compose.yml

Usage

Backup
Creates a backup.tar.gz file from the mounted volume.

docker compose run --rm backup
Backup file will be stored inside the container at:

/app/backup.tar.gz
You can copy it out using:

docker cp <container_id>:/app/backup.tar.gz .
Restore
Restores data from backup.tar.gz back into the volume.

docker compose run --rm restore
Make sure backup.tar.gz exists inside the container or bind‑mount it.

How It Works
The volume mydata is mounted into /volume inside the container.

backup.sh creates a compressed archive of everything inside /volume.

restore.sh extracts the archive back into /volume.

The Alpine‑based utility container includes only tar, keeping the image small.

Docker Compose provides two services:

backup — runs the backup script

restore — runs the restore script

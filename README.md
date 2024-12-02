# GitLab Runner in Terraform

Проект для автоматического развертывания GitLab Runner в Yandex Cloud с использованием Terraform. Включает в себя инструменты для мониторинга и управления раннерами.

## Установка

1. Клонируйте репозиторий:
```bash
git clone https://github.com/NickOsipov/gitlab-runner.git
cd gitlab-runner
```

2. Установите Poetry (если еще не установлен):
```bash
curl -sSL https://install.python-poetry.org | python3 -
```

3. Установите зависимости проекта:
```bash
poetry env use python3.11
poetry install
poetry shell
```

4. Создайте файл `.env` на основе примера и заполните необходимые переменные:
```bash
cp .env.example .env
```

5. Настройте Terraform:
```bash
cd infra
cp terraform.tfvars.example terraform.tfvars
```

Заполните `terraform.tfvars` необходимыми значениями для Yandex Cloud и GitLab.

## Запуск

### Terraform операции

```bash
cd infra
terraform init
terraform plan
terraform apply --auto-approve
```

### Проверка состояния раннеров

Используйте команды Make или Invoke для выполнения различных операций:

```bash
# Использование Make
make check-runners
make check-projects

# Использование Invoke
invoke check-runners
invoke check-projects
```

### Получение логов

```bash
make download_log
# или
invoke download-log
```

## Лицензия

MIT License

## Contribution

1. Форкните репозиторий
2. Создайте ветку для ваших изменений:
```bash
git checkout -b feat/amazing-feature
```
3. Зафиксируйте изменения:
```bash
git commit -m 'feat: add amazing feature'
```
4. Отправьте изменения в ваш форк:
```bash
git push origin feat/amazing-feature
```
5. Создайте Pull Request

### Требования к разработке

- Python 3.11+
- Poetry
- Terraform 1.0+
- Yandex Cloud CLI
- GitLab токен с правами администратора

### Структура проекта

```
.
├── infra/              # Terraform конфигурация
├── src/                # Python скрипты
├── scripts/            # Bash скрипты
├── logs/               # Логи выполнения
└── config/             # Конфигурационные файлы
```

---

## Авторы

[Nick Osipov](https://t.me/NickOsipov)

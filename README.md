## Зависимости:
[yt-dlp](https://github.com/yt-dlp/yt-dlp/releases/latest) - для скачивания

[FFmpeg](https://github.com/BtbN/FFmpeg-Builds/releases/latest) - для объединения файлов

-------------------

## Установка
Скачать тут [Releases](https://github.com/blazer404/DashDL/releases/latest)

Для `thin` необходимо скачать зависимости и распаковать в директорию bin внутри директории скрипта (`ffmpeg.exe` находится в bin внутри своего архива)

Для `full` ничего дополнительно ставить ненужно

-------------------

## Использование
1. Заходим на страницу видео и запускаем его
2. Ищем в devtools (network) ссылку на стрим `.mpd`
3. Запускам `launcher.bat` и выбираем `2`
6. Копируем ссылки на каждый эпизод в файл `links.txt` по одной ссылке на строку (не забываем сохранить)
7. Возвращаемся в `launcher.bat` и выбираем `1`
8. ...
9. PROFIT!

-------------------

Для изменение директории сохранения укажите путь в переменной `output_dir` в `downloader.bat`.

В противном случае будет скачивать в директорию установки скрипта.

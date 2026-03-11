import '../models/product.dart';

const List<String> categories = [
  'Все',
  'Процессоры',
  'Видеокарты',
  'Оперативная память',
  'Накопители',
  'Материнские платы',
  'Блоки питания',
];

const List<Product> allProducts = [
  // ── ПРОЦЕССОРЫ ──────────────────────────────────────────
  Product(
    id: 'cpu-1',
    name: 'Intel Core i9-14900K',
    category: 'Процессоры',
    emoji: '🔵',
    price: 52990,
    description:
        'Флагманский процессор Intel 14-го поколения для игровых и рабочих систем. '
        '24 ядра (8P+16E), частота до 6.0 ГГц.',
    specs: {
      'Ядра / Потоки': '24 / 32',
      'Макс. частота': '6.0 ГГц',
      'Кэш L3': '36 МБ',
      'TDP': '125 Вт',
      'Сокет': 'LGA1700',
    },
    imagePath: 'assets/images/intel_cpu.png',
  ),
  Product(
    id: 'cpu-2',
    name: 'AMD Ryzen 9 7950X',
    category: 'Процессоры',
    emoji: '🔴',
    price: 58990,
    description: 'Мощный AMD Ryzen 9 серии 7000 на архитектуре Zen 4. '
        '16 ядер, 32 потока, до 5.7 ГГц.',
    specs: {
      'Ядра / Потоки': '16 / 32',
      'Макс. частота': '5.7 ГГц',
      'Кэш L3': '64 МБ',
      'TDP': '170 Вт',
      'Сокет': 'AM5',
    },
    imagePath: 'assets/images/amd_cpu.png',
  ),
  Product(
    id: 'cpu-3',
    name: 'Intel Core i5-13600K',
    category: 'Процессоры',
    emoji: '🔵',
    price: 24990,
    description: 'Оптимальный процессор для игровых ПК. '
        '14 ядра (6P+8E), до 5.1 ГГц — лучшее соотношение цены и качества.',
    specs: {
      'Ядра / Потоки': '14 / 20',
      'Макс. частота': '5.1 ГГц',
      'Кэш L3': '24 МБ',
      'TDP': '125 Вт',
      'Сокет': 'LGA1700',
    },
    imagePath: 'assets/images/intel_cpu.png',
  ),
  Product(
    id: 'cpu-4',
    name: 'AMD Ryzen 5 7600X',
    category: 'Процессоры',
    emoji: '🔴',
    price: 19990,
    description: 'Отличный игровой процессор Ryzen 7000. '
        '6 ядер, 12 потоков, до 5.3 ГГц на базе Zen 4.',
    specs: {
      'Ядра / Потоки': '6 / 12',
      'Макс. частота': '5.3 ГГц',
      'Кэш L3': '32 МБ',
      'TDP': '105 Вт',
      'Сокет': 'AM5',
    },
    imagePath: 'assets/images/amd_cpu.png',
  ),

  // ── ВИДЕОКАРТЫ ──────────────────────────────────────────
  Product(
    id: 'gpu-1',
    name: 'NVIDIA GeForce RTX 4090',
    category: 'Видеокарты',
    emoji: '🟢',
    price: 149990,
    description: 'Самая мощная игровая видеокарта в мире. '
        '24 ГБ GDDR6X, трассировка лучей, DLSS 3.',
    specs: {
      'Видеопамять': '24 ГБ GDDR6X',
      'CUDA-ядра': '16 384',
      'Шина памяти': '384 бит',
      'TDP': '450 Вт',
      'Разъём': 'PCIe 4.0 x16',
    },
    imagePath: 'assets/images/nvidia_gpu.png',
  ),
  Product(
    id: 'gpu-2',
    name: 'NVIDIA GeForce RTX 4070 Ti',
    category: 'Видеокарты',
    emoji: '🟢',
    price: 74990,
    description: 'ТОП-перформанс для 4K-гейминга. '
        '12 ГБ GDDR6X, DLSS 3, AV1 кодирование.',
    specs: {
      'Видеопамять': '12 ГБ GDDR6X',
      'CUDA-ядра': '7 680',
      'Шина памяти': '192 бит',
      'TDP': '285 Вт',
      'Разъём': 'PCIe 4.0 x16',
    },
    imagePath: 'assets/images/nvidia_gpu.png',
  ),
  Product(
    id: 'gpu-3',
    name: 'AMD Radeon RX 7900 XTX',
    category: 'Видеокарты',
    emoji: '🔴',
    price: 89990,
    description: 'Флагман AMD на архитектуре RDNA 3. '
        '24 ГБ GDDR6, DisplayPort 2.1, AV1.',
    specs: {
      'Видеопамять': '24 ГБ GDDR6',
      'Потоковые процессоры': '6 144',
      'Шина памяти': '384 бит',
      'TDP': '355 Вт',
      'Разъём': 'PCIe 4.0 x16',
    },
    imagePath: 'assets/images/amd_gpu.png',
  ),
  Product(
    id: 'gpu-4',
    name: 'NVIDIA GeForce RTX 4060',
    category: 'Видеокарты',
    emoji: '🟢',
    price: 34990,
    description: 'Отличная карта для 1080p and 1440p гейминга '
        'с поддержкой DLSS 3 и Frame Generation.',
    specs: {
      'Видеопамять': '8 ГБ GDDR6',
      'CUDA-ядра': '3 072',
      'Шина памяти': '128 бит',
      'TDP': '115 Вт',
      'Разъём': 'PCIe 4.0 x16',
    },
    imagePath: 'assets/images/nvidia_gpu.png',
  ),

  // ── ОПЕРАТИВНАЯ ПАМЯТЬ ──────────────────────────────────
  Product(
    id: 'ram-1',
    name: 'Corsair Vengeance DDR5-6000 32GB',
    category: 'Оперативная память',
    emoji: '⚡',
    price: 12990,
    description: 'Комплект из двух планок DDR5 по 16 ГБ. '
        'Частота 6000 МГц, XMP 3.0, RGB-подсветка.',
    specs: {
      'Объём': '32 ГБ (2×16)',
      'Тип': 'DDR5',
      'Частота': '6000 МГц',
      'Задержка': 'CL36',
      'XMP': '3.0',
    },
    imagePath: 'assets/images/ram.png',
  ),
  Product(
    id: 'ram-2',
    name: 'Kingston Fury Beast DDR4-3200 16GB',
    category: 'Оперативная память',
    emoji: '⚡',
    price: 4990,
    description:
        'Надёжная оперативная память DDR4 для игровых и офисных систем. '
        '16 ГБ, 3200 МГц.',
    specs: {
      'Объём': '16 ГБ (2×8)',
      'Тип': 'DDR4',
      'Частота': '3200 МГц',
      'Задержка': 'CL16',
      'XMP': '1.0',
    },
    imagePath: 'assets/images/ram.png',
  ),
  Product(
    id: 'ram-3',
    name: 'G.Skill Trident Z5 DDR5-7200 64GB',
    category: 'Оперативная память',
    emoji: '⚡',
    price: 34990,
    description:
        'Экстремальный комплект DDR5 для оверклокеров и профессионалов. '
        '64 ГБ (2×32), частота 7200 МГц.',
    specs: {
      'Объём': '64 ГБ (2×32)',
      'Тип': 'DDR5',
      'Частота': '7200 МГц',
      'Задержка': 'CL34',
      'XMP': '3.0',
    },
    imagePath: 'assets/images/ram.png',
  ),

  // ── НАКОПИТЕЛИ ──────────────────────────────────────────
  Product(
    id: 'ssd-1',
    name: 'Samsung 990 Pro 2TB NVMe',
    category: 'Накопители',
    emoji: '💾',
    price: 18990,
    description: 'Флагманский SSD Samsung с интерфейсом PCIe 4.0. '
        'Скорость чтения до 7 450 МБ/с.',
    specs: {
      'Объём': '2 ТБ',
      'Интерфейс': 'PCIe 4.0 NVMe M.2',
      'Чтение': '7 450 МБ/с',
      'Запись': '6 900 МБ/с',
      'Ресурс': '1 200 TBW',
    },
    imagePath: 'assets/images/ssd.png',
  ),
  Product(
    id: 'ssd-2',
    name: 'WD Black SN850X 1TB NVMe',
    category: 'Накопители',
    emoji: '💾',
    price: 9990,
    description: 'Высокопроизводительный NVMe SSD для геймеров. '
        'Совместим with PS5 and ПК.',
    specs: {
      'Объём': '1 ТБ',
      'Интерфейс': 'PCIe 4.0 NVMe M.2',
      'Чтение': '7 300 МБ/с',
      'Запись': '6 300 МБ/с',
      'Ресурс': '600 TBW',
    },
    imagePath: 'assets/images/ssd.png',
  ),
  Product(
    id: 'hdd-1',
    name: 'Seagate Barracuda 4TB HDD',
    category: 'Накопители',
    emoji: '🖴',
    price: 6990,
    description: 'Надёжный жёсткий диск для хранения больших объёмов данных. '
        '4 ТБ, 5400 об/мин.',
    specs: {
      'Объём': '4 ТБ',
      'Интерфейс': 'SATA III',
      'Скорость': '5400 RPM',
      'Кэш': '256 МБ',
      'Форм-фактор': '3.5"',
    },
    imagePath: 'assets/images/ssd.png',
  ),
  Product(
    id: 'ssd-3',
    name: 'Crucial P3 Plus 2TB NVMe',
    category: 'Накопители',
    emoji: '💾',
    price: 11990,
    description: 'Доступный NVMe SSD с хорошей производительностью. '
        'PCIe 4.0, 2 ТБ.',
    specs: {
      'Объём': '2 ТБ',
      'Интерфейс': 'PCIe 4.0 NVMe M.2',
      'Чтение': '5 000 МБ/с',
      'Запись': '4 200 МБ/с',
      'Ресурс': '800 TBW',
    },
    imagePath: 'assets/images/ssd.png',
  ),

  // ── МАТЕРИНСКИЕ ПЛАТЫ ───────────────────────────────────
  Product(
    id: 'mb-1',
    name: 'ASUS ROG Maximus Z790 Hero',
    category: 'Материнские платы',
    emoji: '🖥️',
    price: 64990,
    description: 'Флагманская материнская плата ASUS ROG для Intel LGA1700. '
        'DDR5, PCIe 5.0, Thunderbolt 4.',
    specs: {
      'Сокет': 'LGA1700',
      'Чипсет': 'Intel Z790',
      'Форм-фактор': 'ATX',
      'Слоты DDR5': '4 (до 128 ГБ)',
      'PCIe 5.0 x16': '1',
    },
    imagePath: 'assets/images/motherboard.png',
  ),
  Product(
    id: 'mb-2',
    name: 'MSI MAG X670E Tomahawk WiFi',
    category: 'Материнские платы',
    emoji: '🖥️',
    price: 29990,
    description: 'Надёжная плата для AMD AM5, поддерживает DDR5 и PCIe 5.0. '
        'Wi-Fi 6E, 2.5G LAN.',
    specs: {
      'Сокет': 'AM5',
      'Чипсет': 'AMD X670E',
      'Форм-фактор': 'ATX',
      'Слоты DDR5': '4 (до 128 ГБ)',
      'Wi-Fi': '6E',
    },
    imagePath: 'assets/images/motherboard.png',
  ),
  Product(
    id: 'mb-3',
    name: 'Gigabyte B760M DS3H DDR4',
    category: 'Материнские платы',
    emoji: '🖥️',
    price: 9990,
    description: 'Доступная плата Micro-ATX для Intel 12/13/14-го поколений. '
        'DDR4, PCIe 4.0.',
    specs: {
      'Сокет': 'LGA1700',
      'Чипсет': 'Intel B760',
      'Форм-фактор': 'Micro-ATX',
      'Слоты DDR4': '4 (до 128 ГБ)',
      'PCIe 4.0 x16': '1',
    },
    imagePath: 'assets/images/motherboard.png',
  ),

  // ── БЛОКИ ПИТАНИЯ ───────────────────────────────────────
  Product(
    id: 'psu-1',
    name: 'be quiet! Dark Power 13 1000W',
    category: 'Блоки питания',
    emoji: '⚡',
    price: 24990,
    description:
        'Премиальный блок питания 1000 Вт с сертификатом 80+ Titanium. '
        'Полностью модульный, тихий.',
    specs: {
      'Мощность': '1000 Вт',
      'Сертификат': '80+ Titanium',
      'Модульность': 'Полная',
      'Стандарт': 'ATX 3.0',
      'Гарантия': '10 лет',
    },
    imagePath: 'assets/images/psu.png',
  ),
  Product(
    id: 'psu-2',
    name: 'Corsair RM850x 850W',
    category: 'Блоки питания',
    emoji: '⚡',
    price: 14990,
    description: 'Надёжный источник питания 850 Вт, 80+ Gold. '
        'Полностью модульный, тихий вентилятор.',
    specs: {
      'Мощность': '850 Вт',
      'Сертификат': '80+ Gold',
      'Модульность': 'Полная',
      'Стандарт': 'ATX 3.0',
      'Гарантия': '7 лет',
    },
    imagePath: 'assets/images/psu.png',
  ),
  Product(
    id: 'psu-3',
    name: 'Seasonic Focus GX 650W',
    category: 'Блоки питания',
    emoji: '⚡',
    price: 9990,
    description: 'Качественный блок питания 650 Вт с сертификатом 80+ Gold. '
        'Полностью модульный.',
    specs: {
      'Мощность': '650 Вт',
      'Сертификат': '80+ Gold',
      'Модульность': 'Полная',
      'Стандарт': 'ATX',
      'Гарантия': '10 лет',
    },
    imagePath: 'assets/images/psu.png',
  ),
];

List<Product> getProductsByCategory(String category) {
  if (category == 'Все') return allProducts;
  return allProducts.where((p) => p.category == category).toList();
}

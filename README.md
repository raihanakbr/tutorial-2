Apa saja pesan log yang dicetak pada panel Output?

Platform initialized

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

Reached objective!

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

PlatformBlue merupakan Node2D yang memiliki child berupa StonePlatform yang merupaan StaticBody2D,
StonePlatform tersebut memiliki CollisionShape2D, Demikian juga dengan BlueShip dan ObjectiveArea yang memiliki CollisionShape2D.
Karena ObjectiveArea memiliki Collision Mask pada Layer 1 dan BlueShip memiliki Collision Layer pada Layer 1, saat area collision dari BlueShip collide dengan collision area dari ObjectiveArea, maka ObjectiveArea mengirim signal berupa body_entered yang ditangkap oleh dirinya sendiri pada script ObjectiveArea.gd. Sehingga terdapat "Reached objective!" pada output yang diprint melalui function yang menghandle event tersebut yaitu _on_ObjectiveArea_body_entered pada ObjectiveArea.gd.

Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

Node Sprite2D merupakan node untuk mendisplay texture dari suatu image atau suatu frame dari suatu spritesheet animation.

Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

StaticBody2D adalah node yang tidak bergerak dan tidak terpengaruh oleh simulasi fisika, sehingga biasanya digunakan untuk objek-objek statis seperti lantai atau dinding. RigidBody2D, di sisi lain, dipengaruhi oleh fisika seperti gravitasi, massa, dan gaya, sehingga dapat bergerak dan berinteraksi secara dinamis dengan objek lain.

Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Mengubah massa BlueShip secara langsung memengaruhi seberapa cepat dan bagaimana BlueShip bergerak dalam simulasi fisika di MainLevel.

Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

BlueShip tidak collide dengan StonePlatform dan jatuh, hal ini karena BlueShip memiliki gravitasi dan collision dari StonePlatform tidak ada.

Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

Position mengubah posisi dari BlueShip, dengan x mengubah koordinat horizontal dan y mengubah koordinat vertical.
Yang menarik, di godot, y yang semakin ke atas maka akan semakin kecil, hal ini berkebalikan di koordinat kartesius.

Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Karena posisi dari suatu child itu relative teradap parentnya yaitu PlatformBlue, misalkan global position dari PlatformBlue adalah (35, 565), serta position dari StonePlatform dan StonePlatform2 adalah (0,0) dan (70, 0). Karena posisinya relative terhadap PlatformBlue, maka global positionnya adalah (35, 565), dan (105, 565).

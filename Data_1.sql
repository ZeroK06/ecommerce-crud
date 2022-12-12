CREATE DATABASE moda;

USE moda;

/* Tabla de ususario */
CREATE TABLE usuario(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hashPassword TEXT NOT NULL,
    isAdmin TINYINT(1) DEFAULT 0,
    createAt DATE DEFAULT CURRENT_TIMESTAMP
);

/* Tabla de  Producto*/
CREATE TABLE product(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT DEFAULT 'Vacio',
    originalPrice DECIMAL(10, 2) NOT NULL,
    idCategory INT UNSIGNED,
    color VARCHAR(20) NOT NULL,
    imgUrl TEXT NOT NULL,
    brand VARCHAR(20) NOT NULL,
    discountPrice DECIMAL(10, 2) NOT NULL,
    createAt DATE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orden(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    idUser INT UNSIGNED,
    subMount DECIMAL(10, 2) NOT NULL,
    finalMoutn DECIMAL(10, 2) NOT NULL,
    createAt DATE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE detailsOrden(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    idOrden INT UNSIGNED,
    idProduct INT UNSIGNED,
    countProduct INT DEFAULT 1,
    createAt DATE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('spykar','Shorts with Typography','Shorts with Typography','https://assets.ajio.com/medias/sys_master/root/20210701/tV9e/60dcf079aeb269a9e333a766/-286Wx359H-460903905-black-MODEL.jpg','1','640','1,599','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('see-designs','Kurta Pyjama Set with Button Placket','Kurta Pyjama Set with Button Placket','https://assets.ajio.com/medias/sys_master/root/20210405/z9ja/606be121aeb269a9e36e9fcd/-286Wx359H-461685649-blue-MODEL.jpg','1','1,015','2,899','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('aero-jeans','Typographic Print Crew-Neck T-shirt with Applique','Typographic Print Crew-Neck T-shirt with Applique','https://assets.ajio.com/medias/sys_master/root/h97/h6c/12949476671518/-286Wx359H-440988432-navy-MODEL.jpg','1','899','899','navy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('campus-sutra','Solid Campus Sutra Full Sleeve Solid Men  Blue Denim Color Sweatshirt','Solid Campus Sutra Full Sleeve Solid Men  Blue Denim Color Sweatshirt','https://assets.ajio.com/medias/sys_master/root/20210617/LrlQ/60cae899f997ddb312cdf7df/-286Wx359H-461007714-blue-MODEL.jpg','1','940','1,999','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('cantabil','Printed Slim Fit Shirt with Patch Pocket','Printed Slim Fit Shirt with Patch Pocket','https://assets.ajio.com/medias/sys_master/root/20220527/oWEi/6290750eaeb26921afe79980/-286Wx359H-461570740-navy-MODEL.jpg','1','750','2,499','navy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('columbia','Crew-Neck T-shirt with Raglan Sleeves','Crew-Neck T-shirt with Raglan Sleeves','https://assets.ajio.com/medias/sys_master/root/20201114/UgZm/5faed5afaeb269d5630ec482/-286Wx359H-460537400-black-MODEL.jpg','1','3,349','4,999','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('blackberrys','Ditsy Print Slim Fit Polo T-shirt','Ditsy Print Slim Fit Polo T-shirt','https://assets.ajio.com/medias/sys_master/root/20210921/MP9L/61499f44f997ddce89d18ed4/-286Wx359H-462979315-peach-MODEL.jpg','1','798','1,595','peach');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('superdry','Ol Classic Heathered Zip-Front Sweatshirt','Ol Classic Heathered Zip-Front Sweatshirt','https://assets.ajio.com/medias/sys_master/root/20201231/0aF6/5feccbc1aeb2694fd3053e95/-286Wx359H-410272367-3dz-MODEL.jpg','1','2,599','4,999','3dz');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('ruggers','Typographic Print crew-Neck T-shirt','Typographic Print crew-Neck T-shirt','https://assets.ajio.com/medias/sys_master/root/20211218/hp2z/61bd1ac8aeb269011012d76d/-286Wx359H-469076523-darknavy-MODEL.jpg','1','546','1,299','darknavy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('tommy-hilfiger','Brand Print Organic Cotton Crew-Neck T-shirt','Brand Print Organic Cotton Crew-Neck T-shirt','https://assets.ajio.com/medias/sys_master/root/20220426/A8Ci/626700c7aeb26921af423857/-286Wx359H-469133837-white-MODEL.jpg','1','2,023','2,299','white');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('xmex','Solid Polo T-shirt','Solid Polo T-shirt','https://assets.ajio.com/medias/sys_master/root/20220107/0ZP7/61d7523baeb2695cdd07a8d6/-286Wx359H-463614004-grey-MODEL.jpg','1','840','2,799','grey');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('ecko','Floral Print Slim Fit Shirt with Patch Pocket','Floral Print Slim Fit Shirt with Patch Pocket','https://assets.ajio.com/medias/sys_master/root/20211001/D9oR/6156d342f997ddce89eb03d9/-286Wx359H-440990956-beige-MODEL.jpg','1','689','1,149','beige');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('mufti','Checked Slim Fit Shirt with Patch Pocket','Checked Slim Fit Shirt with Patch Pocket','https://assets.ajio.com/medias/sys_master/root/20210602/ftcB/60b68c95aeb269a9e3d207b3/-286Wx359H-460831760-navyblue-MODEL.jpg','1','950','1,899','navyblue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('john-players','Slim Fit Checked Shirt with Patch Pocket','Slim Fit Checked Shirt with Patch Pocket','https://assets.ajio.com/medias/sys_master/root/hde/h0c/13613311328286/-286Wx359H-440967990-white-MODEL.jpg','1','768','1,599','white');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('max','Printed Slim Fit Crew-Neck T-shirt','Printed Slim Fit Crew-Neck T-shirt','https://assets.ajio.com/medias/sys_master/root/20210810/LJPP/611185797cdb8cb824efe75f/-286Wx359H-460942082-navy-MODEL.jpg','1','399','399','navy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('louis-philippe','Textured Slim Fit Blazer with Notched Lapel','Textured Slim Fit Blazer with Notched Lapel','https://assets.ajio.com/medias/sys_master/root/20210525/9wY4/60ac1c35f997ddb312a7f2cd/-286Wx359H-460913544-white-MODEL.jpg','1','6,374','7,499','white');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('max','Slim Fit Trousers with Insert Pockets','Slim Fit Trousers with Insert Pockets','https://assets.ajio.com/medias/sys_master/root/20210826/dW0c/612789907cdb8cb82407be54/-286Wx359H-462838385-black-MODEL.jpg','1','1,299','1,299','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('armani-exchange','Micro Print Slim Fit Shirt','Micro Print Slim Fit Shirt','https://assets.ajio.com/medias/sys_master/root/20211001/3LbS/6156daf9f997ddce89eb115a/-286Wx359H-410294385-4568-MODEL.jpg','1','5,719','10,999','4568');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('scotch-soda','Solid Cotton Polo T-shirt','Solid Cotton Polo T-shirt','https://assets.ajio.com/medias/sys_master/root/20220202/EwcU/61faa30aaeb26921af8715b1/-286Wx359H-410313449-2-MODEL.jpg','1','5,999','5,999','2');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('puma','Mid-Rise Joggers with Contrast Panels','Mid-Rise Joggers with Contrast Panels','https://assets.ajio.com/medias/sys_master/root/20211112/vs6Y/618e8a8df997ddf8f10379e0/-286Wx359H-460987030-black-MODEL.jpg','1','1,784','3,499','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('manyavar','Floral Print Mandarin Collar Jacket','Floral Print Mandarin Collar Jacket','https://assets.ajio.com/medias/sys_master/root/20210915/uKXz/6141145f7cdb8cb82424825d/-286Wx359H-462901399-beige-MODEL.jpg','1','4,999','4,999','beige');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('beverly-hills-polo-club','Checked Shirt with Curved Hem','Checked Shirt with Curved Hem','https://assets.ajio.com/medias/sys_master/root/20211024/GOLN/6175654baeb2690110a5ff65/-286Wx359H-463210191-grey-MODEL.jpg','1','2,534','3,899','grey');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('wear-we-met','Striped Nightwear Set','Striped Nightwear Set','https://assets.ajio.com/medias/sys_master/root/20211013/XYgy/61662634f997ddf8f1cd6afb/-286Wx359H-463137990-brown-MODEL.jpg','1','999','999','brown');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('harbornbay','Polo T-shirt with Short Sleeves','Polo T-shirt with Short Sleeves','https://assets.ajio.com/medias/sys_master/root/20210404/Wkkh/6069b6c47cdb8c1f148bda5c/-286Wx359H-461741406-white-MODEL.jpg','1','510','1,699','white');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('the-indian-garage-co','Thei men track pants, grey, s','Thei men track pants, grey, s','https://assets.ajio.com/medias/sys_master/root/20210423/1VZY/6082e646aeb269a9e39c8150/-286Wx359H-460883900-grey-MODEL.jpg','1','490','1,749','grey');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('lee-cooper','Polo T-shirt with Band Collar','Polo T-shirt with Band Collar','https://assets.ajio.com/medias/sys_master/root/20200827/03ev/5f479f8c7cdb8c76628cbfde/-286Wx359H-441074892-ecrumelange-MODEL.jpg','1','340','999','ecrumelange');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('spykar','Graphic Print Slim Fit Crew-Neck T-shirt','Graphic Print Slim Fit Crew-Neck T-shirt','https://assets.ajio.com/medias/sys_master/root/20211123/36eT/619be8d3aeb2690110d0928c/-286Wx359H-469048627-coral-MODEL.jpg','1','390','1,299','coral');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('globus','Heathered Full-length Hooded T-shirt','Heathered Full-length Hooded T-shirt','https://assets.ajio.com/medias/sys_master/root/20220207/qr5H/6201343eaeb26921af8c3ca8/-286Wx359H-463779803-navy-MODEL.jpg','1','800','1,599','navy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('dezano','Paneled Button-Front Shirt','Paneled Button-Front Shirt','https://assets.ajio.com/medias/sys_master/root/20211013/tHwK/6166181baeb26901108da064/-286Wx359H-463138272-blue-MODEL.jpg','1','1,050','2,099','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('akfit','Solid Regular Fit Polo T-shirt','Solid Regular Fit Polo T-shirt','https://assets.ajio.com/medias/sys_master/root/20211101/JTBP/6180254bf997ddf8f1f6224f/-286Wx359H-463264551-grey-MODEL.jpg','1','504','1,199','grey');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('stylestone','Floral Print Off-Shoulder A-line Dress','Floral Print Off-Shoulder A-line Dress','https://assets.ajio.com/medias/sys_master/root/20210404/PNHk/606ae5a4f997dd7b648c392a/-286Wx359H-462254355-blue-MODEL.jpg','2','750','1,499','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('vastranand','Coffee Brown Art Silk Printed Maheshwari Saree','Coffee Brown Art Silk Printed Maheshwari Saree','https://assets.ajio.com/medias/sys_master/root/20210627/Ys9U/60d90ebff997ddb312fe920c/-286Wx359H-461490028-brown-MODEL.jpg','2','1,935','4,500','brown');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('in-curve','Pack of 3 Non-Padded Bra with Adjustable Strap','Pack of 3 Non-Padded Bra with Adjustable Strap','https://assets.ajio.com/medias/sys_master/root/20211118/tTwu/6195918af997ddf8f10c6e91/-286Wx359H-463327532-multi-MODEL.jpg','2','338','1,777','multi');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('miss-chase','Solid  A-Line Dress','Solid  A-Line Dress','https://assets.ajio.com/medias/sys_master/root/20211101/P4Wa/617fc381f997ddf8f1f41bfc/-286Wx359H-463253009-black-MODEL.jpg','2','825','1,649','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('aspora','Micro Print Round-Neck Dungaree','Micro Print Round-Neck Dungaree','https://assets.ajio.com/medias/sys_master/root/20220117/1D8h/61e55df2f997dd662324f3d6/-286Wx359H-463667930-black-MODEL.jpg','2','989','1,499','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('hunkemoller','Erica Underwired Demi Bra','Erica Underwired Demi Bra','https://assets.ajio.com/medias/sys_master/root/20220209/nhH3/6202cdb0aeb26921af8f4d31/-286Wx359H-410302963-purpl-MODEL.jpg','2','2,995','2,995','purpl');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('krishnvatika','Floral Embroidered Blouse','Floral Embroidered Blouse','https://assets.ajio.com/medias/sys_master/root/20220305/LTmD/62227a90f997dd03e202650c/-286Wx359H-463945862-black-MODEL.jpg','2','968','1,699','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('laa-calcutta','Traditional Saree with Blouse Piece','Traditional Saree with Blouse Piece','https://assets.ajio.com/medias/sys_master/root/20220405/7ji9/624c4d93f997dd03e24880d3/-286Wx359H-464123906-red-MODEL.jpg','2','8,000','16,000','red');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('molcha','Pack of 2 Solid Front Open Blouse','Pack of 2 Solid Front Open Blouse','https://assets.ajio.com/medias/sys_master/root/20220316/VN4p/6231026bf997dd03e215e44f/-286Wx359H-464008766-red-MODEL.jpg','2','1,500','3,000','red');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('okane','Striped Relaxed Fit Pants','Striped Relaxed Fit Pants','https://assets.ajio.com/medias/sys_master/root/20211024/qEec/61756916f997ddf8f1e5c1f4/-286Wx359H-463208875-grey-MODEL.jpg','2','519','799','grey');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('satrani','Poly Silk Printed Saree With Blouse Piece','Poly Silk Printed Saree With Blouse Piece','https://assets.ajio.com/medias/sys_master/root/20211208/FUeg/61afd6e3aeb2690110010119/-286Wx359H-461829750-navy-MODEL.jpg','2','452','1,049','navy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('anvi-be-yourself','Striped Cuffed Sleeves Sheath Dress','Striped Cuffed Sleeves Sheath Dress','https://assets.ajio.com/medias/sys_master/root/20210831/LRa5/612d6c637cdb8cb824101852/-286Wx359H-462883588-pink-MODEL.jpg','2','1,088','3,399','pink');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('uzarus','Solid Knit Shorts','Solid Knit Shorts','https://assets.ajio.com/medias/sys_master/root/20220113/r3SE/61df3ee8aeb2695cdd121afd/-286Wx359H-463649598-grey-MODEL.jpg','2','390','1,499','grey');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('friskers','Graphic Print Round Neck T-shirt','Graphic Print Round Neck T-shirt','https://assets.ajio.com/medias/sys_master/root/20210403/lwVp/60699530aeb269a9e3462964/-286Wx359H-461544864-blue-MODEL.jpg','2','476','899','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('ginger-by-lifestyle','Textured Skinny Mid Rise Jeans','Textured Skinny Mid Rise Jeans','https://assets.ajio.com/medias/sys_master/root/20211012/WYnm/6164a52af997dd3ed46749aa/-286Wx359H-463088733-blue-MODEL.jpg','2','1,049','1,499','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('trendyol','Solid Cardigan with Batwing Sleeves','Solid Cardigan with Batwing Sleeves','https://assets.ajio.com/medias/sys_master/root/20210921/Uf9M/6149fa51aeb269a2689d2b89/-286Wx359H-469008667-ltpink-MODEL.jpg','2','2,043','2,799','ltpink');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('karigari','Flared Kurta with Embroidery','Flared Kurta with Embroidery','https://assets.ajio.com/medias/sys_master/root/20220105/l5Fa/61d4b12cf997dd6623113d2f/-286Wx359H-469076398-offwhite-MODEL.jpg','2','780','1,999','offwhite');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('mbe','Cape Sleeves Empire Dress','Cape Sleeves Empire Dress','https://assets.ajio.com/medias/sys_master/root/20210404/ezDE/606993ebf997dd7b64747cfa/-286Wx359H-461779464-navy-MODEL.jpg','2','1,300','2,599','navy');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('kvs-fab','Floral Print Straight Kurta Set','Floral Print Straight Kurta Set','https://assets.ajio.com/medias/sys_master/root/20210723/6CYl/60fa7a15aeb269a9e350b33c/-286Wx359H-461791396-multi-MODEL.jpg','2','933','2,029','multi');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('vastranand','Striped Traditional Saree','Striped Traditional Saree','https://assets.ajio.com/medias/sys_master/root/20210627/1R3x/60d94f50f997ddb312024557/-286Wx359H-461487422-red-MODEL.jpg','2','2,200','5,500','red');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('saree-mall','Floral Print Traditional Saree with Tassels','Floral Print Traditional Saree with Tassels','https://assets.ajio.com/medias/sys_master/root/20210627/psU6/60d9149daeb269a9e31be095/-286Wx359H-461630112-red-MODEL.jpg','2','2,310','6,999','red');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('encrustd','Cami Top with Sequined Bow Accent','Cami Top with Sequined Bow Accent','https://assets.ajio.com/medias/sys_master/root/20220107/KjEe/61d736bdaeb2695cdd076220/-286Wx359H-460985625-pearlblue-MODEL.jpg','2','820','1,999','pearlblue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('campus-sutra','Solid Biker Jacket','Solid Biker Jacket','https://assets.ajio.com/medias/sys_master/root/20211101/k5HE/618025fdf997ddf8f1f63039/-286Wx359H-463264272-blue-MODEL.jpg','2','1,000','2,499','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('prayas','Solid Kurta Set','Solid Kurta Set','https://assets.ajio.com/medias/sys_master/root/20211108/LpOn/61890da1f997ddf8f1fb5255/-286Wx359H-463279707-green-MODEL.jpg','2','1,840','7,999','green');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('bewakoof','Graphic Printed Crew-Neck  T-shirt','Graphic Printed Crew-Neck  T-shirt','https://assets.ajio.com/medias/sys_master/root/20211108/iVmD/61890c23aeb2690110ba7bfc/-286Wx359H-463279694-black-MODEL.jpg','2','450','549','black');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('fashionfricks','Micro Print Round-Neck Gown Dress','Micro Print Round-Neck Gown Dress','https://assets.ajio.com/medias/sys_master/root/20220129/W2tZ/61f4ccc8aeb2695cdd3b974e/-286Wx359H-463481671-yellow-MODEL.jpg','2','1,122','3,399','yellow');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('btd-fashion','Square Neck Floral Straight Kurti','Square Neck Floral Straight Kurti','https://assets.ajio.com/medias/sys_master/root/20220316/JR73/62310c7aaeb26921afdc3b20/-286Wx359H-464017871-white-MODEL.jpg','2','816','3,999','white');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('zola','Printed Kaftan A-line Kurta','Printed Kaftan A-line Kurta','https://assets.ajio.com/medias/sys_master/root/20220421/4hWR/62607a4caeb26921af3308b0/-286Wx359H-464209650-maroon-MODEL.jpg','2','2,328','5,970','maroon');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('miss-chase','Solid Skinny Jeans','Solid Skinny Jeans','https://assets.ajio.com/medias/sys_master/root/20220128/8Sck/61f344aaaeb2695cdd34ff14/-286Wx359H-463723359-blue-MODEL.jpg','2','975','1,949','blue');
INSERT INTO product(brand,nombre,descripcion,imgUrl,idCategory,discountPrice,originalPrice,color) VALUES ('campus-sutra','Graphic Round-Neck Top','Graphic Round-Neck Top','https://assets.ajio.com/medias/sys_master/root/20220329/oxFA/62420fb9aeb26921affc3b5a/-286Wx359H-464081929-pink-MODEL.jpg','2','549','999','pink');

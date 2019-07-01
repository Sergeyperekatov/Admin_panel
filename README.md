Пример работы сопоставления между методами HTTP и URL к экшнам контроллера


Метод HTTP  	Путь    	           Контроллер#Экшн	                Использование
GET        	/photos   	            photos#index	                  отображает список всех фото
GET	        /photos/new	            photos#new	                    возвращает форму HTML для создания нового фото
POST	      /photos   	            photos#create                  	создает новое фото
GET     	  /photos/:id	            photos#show                   	отображает определенное фото
GET     	  /photos/:id/edit	      photos#edit                   	возвращает форму HTML для редактирования фото
PATCH/PUT  	/photos/:id	            photos#update                  	обновляет определенное фото
DELETE	    /photos/:id	            photos#destroy                 	удаляет определенное фото

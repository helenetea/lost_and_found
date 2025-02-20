json.extract! objet, :id, :titre, :description, :photo, :lieu, :date, :statut, :created_at, :updated_at
json.url objet_url(objet, format: :json)

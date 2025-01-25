Dream.run ~interface:"localhost" ~port:8000
@@ Dream.logger
@@ Dream.memory_sessions
@@ Dream.router
     [ Dream.get "/" (fun _ -> Dream.html @@ Template.render @@ ReactDOM.renderToString @@ App.make ())
     ; Dream.get "/assets/**" (Dream.static "./dist/assets")
     ]

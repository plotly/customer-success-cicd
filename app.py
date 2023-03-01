import dash
from dash import html, dcc
import os

app = dash.Dash(__name__)
server= app.server

app.layout = html.Div(children=[html.H1("My Dash App"),html.H3(f"last updated at{os.environ.get("DEPLOY_DATE")}")] )

if __name__='__main__":
    app.run_server(debug=True)

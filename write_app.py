import os
def write_app():
    file_obj = open("app.py", "w")
    app_file = f"""from dash import Dash, dcc, html, Input, Output
import dash_design_kit as ddk
import plotly.express as px

app = Dash(__name__)
server = app.server  # expose server variable for Procfile

df = px.data.stocks()

app.layout = ddk.App([
    ddk.Header([
        ddk.Logo(src=app.get_asset_url('logo.png')),
        ddk.Title('Dash Enterprise Sample Application'),
    ]),
    ddk.Card(f"Last deployed at {os.environ.get("DEPLOY_DATE")}"),

    ddk.Row(children=[
        ddk.Card(width=50, children=ddk.Graph(figure=px.line(df, x="date", y=["AMZN", "FB"], title='Stock Prices'))),

        ddk.Card(width=50, children=ddk.Graph(figure=px.line(df, x="date", y=["AAPL", "MSFT"], title='Stock Prices')))
    ])
])


if __name__ == '__main__':
    app.run_server(debug=True)"""
    file_obj.write(app_file)
    file_obj.close()

    return 

write_app()

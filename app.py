from flask import Flask, render_template

app = Flask(__name__)


@app.route('/', strict_slashes=False)
def hello_world():  # put application's code here

    return render_template('message_to_pozercpp.html')


if __name__ == '__main__':
    app.run()

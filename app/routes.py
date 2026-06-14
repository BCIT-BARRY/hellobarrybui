from flask import Blueprint, render_template


main = Blueprint("main", __name__)


@main.route("/")
def index() -> str:
    return render_template("index.html")


@main.route("/projects")
def projects() -> str:
    return render_template("projects.html")


@main.route("/about")
def about() -> str:
    return render_template("about.html")
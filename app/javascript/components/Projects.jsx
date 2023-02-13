import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";

const Projects = () => {
  const navigate = useNavigate();
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    const url = "/api/v1/projects/index";
    fetch(url)
      .then((res) => {
        if (res.ok) {
          return res.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then((res) => setProjects(res))
      .catch(() => navigate("/"));
  }, []);

  const allProjects = projects.map((project, index) => (
    <div key={index} className="col-md-6 col-lg-4">
      <div className="card mb-4">
        <div className="card-body">
          <h5 className="card-title">{project.name}</h5>
          <Link to={`/recipe/${project.id}`} className="btn custom-button">
            View project
          </Link>
        </div>
      </div>
    </div>
  ));
  const noProject = (
    <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
      <h4>
        No Projects yet. Why not <Link to="/new_recipe">create one</Link>
      </h4>
    </div>
  );

  return (
    <>
      <section className="jumbotron jumbotron-fluid text-center">
        <div className="container py-5">
          <h1 className="display-4">Projects you are in</h1>
          <p className="lead text-muted">
            Text here
          </p>
        </div>
      </section>
      <div className="py-5">
        <main className="container">
          <div className="text-end mb-3">
            <Link to="/project" className="btn custom-button">
              Create New Project
            </Link>
          </div>
          <div className="row">
            {project.length > 0 ? allProjects : noProject}
          </div>
          <Link to="/" className="btn btn-link">
            Home
          </Link>
        </main>
      </div>
    </>
  );
};

export default Projects;

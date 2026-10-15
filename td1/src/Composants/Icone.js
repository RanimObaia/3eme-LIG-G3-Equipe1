import React from "react";
 
class Icone extends React.Component {
  render() {
    return (
      <div className="d-flex align-items-center">
        <span
          style={{
            display: "inline-flex",
            padding: "3px",
            border: "2px dashed #0d6efd",
            borderRadius: "50%"
          }}
        >
          <span className="fa-stack fa-lg">
            <i className="fa fa-circle fa-stack-2x"></i>
            <i className="fa fa-thumbs-up fa-stack-1x fa-inverse"></i>
          </span>
        </span>
        <span className="text-primary ml-3 ms-3">Icone</span>
      </div>
    );
  }
}
 
export default Icone;
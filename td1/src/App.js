import React from "react";
import "font-awesome/css/font-awesome.min.css";
import Pictogramme from "./Composants/Pictogramme";
import Commentaire from "./Composants/Commentaire";
 
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = { msg: "Bonne découverte des composants React" };
    this.changerMessage = this.changerMessage.bind(this);
  }
 
  changerMessage() {
    this.setState({ msg: "Premier défi réussi" });
  }
 
  render() {
    return (
      <div className="container my-4">
        <div className="card p-3 shadow-sm">
          <div className="d-flex align-items-center">
            <img
              src="https://i.etsystatic.com/40533556/r/il/11cc06/6233144364/il_fullxfull.6233144364_918l.jpg"
              alt="Ordinateur"
              className="rounded mr-3 me-3"
              style={{ width: "120px", height: "80px", objectFit: "cover" }}
            />
            <h1 className="text-primary font-weight-bold fw-bold m-0">Débuter avec React</h1>
          </div>
          <p className="mt-2">{this.state.msg}</p>
 
          <Pictogramme onAimer={this.changerMessage} />
          <Commentaire />
        </div>
      </div>
    );
  }
}
 
export default App;
 
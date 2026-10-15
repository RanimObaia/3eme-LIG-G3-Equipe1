import { useState } from 'react';
import Icone from './Icone';

// Composant Pictogramme : contient le composant Icone + le bouton Aimer
function Pictogramme() {
  const [aime, setAime] = useState(false);

  return (
    <div className="border rounded p-3 mb-3">
      <Icone />
      <hr />
      <button
        className={aime ? "btn btn-success" : "btn btn-primary"}
        onClick={() => setAime(!aime)}
      >
        <i className={aime ? "bi bi-hand-thumbs-up-fill" : "bi bi-hand-thumbs-up"}></i>
        {aime ? " Aimé" : " Aimer"}
      </button>
    </div>
  );
}

export default Pictogramme;

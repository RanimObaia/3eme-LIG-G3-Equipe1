import { useState } from 'react';
 
const MAX = 120;
 
// Composant Commentaire : zone de texte + nombre de caractères restants
function Commentaire() {
  const [texte, setTexte] = useState("");
 
  return (
    <div className="border border-success rounded p-3">
      <textarea
        className="form-control"
        placeholder="Tapez un commentaire..."
        maxLength={MAX}
        value={texte}
        onChange={(e) => setTexte(e.target.value)}
      />
      <small className="text-muted">{MAX - texte.length} Restants</small>
    </div>
  );
}
 
export default Commentaire;
 
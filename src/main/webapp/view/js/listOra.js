const deleteModal = document.getElementById('deleteModal')
if (deleteModal) {
  deleteModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    let idDel = button.getAttribute('idDel')
    let emailDel = button.getAttribute('emailDel')
    
    document.getElementById("idDel").value=idDel
    document.getElementById("emailDel").value=emailDel
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    
  })
}

const updateModal = document.getElementById('updateModal')
if (updateModal) {
  updateModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    let idUpd = button.getAttribute('idUpd')
	let nom = button.getAttribute('nom')    
	let ape = button.getAttribute('ape')    
	let email = button.getAttribute('email')
	let foto = button.getAttribute('foto')
	let etiq = button.getAttribute('etiq')    
	let etiq2 = button.getAttribute('etiq2')
	let temas = button.getAttribute('temas')    
    
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    document.getElementById("idUpd").value=idUpd
    document.getElementById("nom").value=nom
    document.getElementById("ape").value=ape
    document.getElementById("email").value=email
    document.getElementById("foto").value=foto
    document.getElementById("etiq").value=etiq
    document.getElementById("etiq2").value=etiq2
    document.getElementById("temas").value=temas

  })
}


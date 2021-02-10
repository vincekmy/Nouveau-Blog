<?php if(!empty($_SESSION['is_admin'])): ?>
<br/>
  <a href="<?=ROOT_URL?>admin_editPost_<?=$oPost->id?>.html"><button class="btn light-blue waves-effect waves-light">Modifier</button></a>
  <a href="<?=ROOT_URL?>admin_delete_<?=$oPost->id?>.html"><button class="btn #b71c1c red darken-3 waves-effect waves-light">Supprimer</button></a>

<?php endif ?>

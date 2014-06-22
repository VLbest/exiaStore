<div class="row">
  <?php foreach($data as $item): ?> 
  <div class="span3">
    <div class="col-md-4">
      <div class="thumbnail">
        <div class="caption">
          <img src="./img/DVD/thumbnails/<?= $item->Picture_Item?>" class="img-responsive" alt="<?= $item->Name_Item; ?>">
          <h3><?= $item->Name_Item; ?></h3>
          <p><?= $item->Description_Item; ?></p>
          <p><?= $item->Name_State; ?> :<?= $item->ActualStock_Item; ?> </br>     <?= $item->PriceDF_Item; ?> $</p>
          <p><a href="" class="btn btn-primary" role="button">Add to Cart</a> <a href="#" class="btn btn-default" role="button">Details</a></p>
        </div>
      </div>
    </div>
  </div>
  <?php endforeach ?>
</div>
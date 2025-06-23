<div class="flex gap-2">
    <!--[if BLOCK]><![endif]--><?php $__currentLoopData = array_slice($getState() ?? [], 0, 2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <img src="<?php echo e(Storage::disk('public')->url($image)); ?>" class="h-10 w-10 rounded-md object-cover shadow" />
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><!--[if ENDBLOCK]><![endif]-->
</div>
<?php /**PATH /home/you-it-laravel/os/mgd/back-end/resources/views/filament/tables/columns/news-images.blade.php ENDPATH**/ ?>
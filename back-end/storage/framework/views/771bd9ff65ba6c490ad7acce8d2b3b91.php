<?php
    $filePath = $record?->{$field} ?? null;
?>

<!--[if BLOCK]><![endif]--><?php if($filePath): ?>
    <a href="<?php echo e(asset('storage/' . $filePath)); ?>"
       download
       class="inline-flex items-center justify-center px-4 py-2 bg-<?php echo e($color); ?>-600 text-white rounded-lg shadow hover:bg-<?php echo e($color); ?>-700 transition">
        تحميل <?php echo e($label); ?>

    </a>
<?php else: ?>
    <span class="text-gray-500">لا يوجد <?php echo e($label); ?></span>
<?php endif; ?><!--[if ENDBLOCK]><![endif]-->
<?php /**PATH /home/you-it-laravel/os/mgd/back-end/resources/views/filament/students/file-download.blade.php ENDPATH**/ ?>
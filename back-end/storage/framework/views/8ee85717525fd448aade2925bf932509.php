<div class="grid grid-cols-1 md:grid-cols-2 gap-4">

    <!--[if BLOCK]><![endif]--><?php if($record?->highschool_certificate): ?>
        <a href="<?php echo e(asset('storage/' . $record->highschool_certificate)); ?>" download
           class="inline-flex items-center justify-center px-4 py-2 bg-blue-600 text-white rounded-lg shadow hover:bg-blue-700 transition">
            تحميل شهادة الثانوية
        </a>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->

    <!--[if BLOCK]><![endif]--><?php if($record?->university_certificate): ?>
        <a href="<?php echo e(asset('storage/' . $record->university_certificate)); ?>" download
           class="inline-flex items-center justify-center px-4 py-2 bg-green-600 text-white rounded-lg shadow hover:bg-green-700 transition">
            تحميل شهادة الجامعة
        </a>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->

    <!--[if BLOCK]><![endif]--><?php if($record?->passport): ?>
        <a href="<?php echo e(asset('storage/' . $record->passport)); ?>" download
           class="inline-flex items-center justify-center px-4 py-2 bg-yellow-500 text-black rounded-lg shadow hover:bg-yellow-600 transition">
            تحميل جواز السفر
        </a>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->

    <!--[if BLOCK]><![endif]--><?php if($record?->personal_photo): ?>
        <a href="<?php echo e(asset('storage/' . $record->personal_photo)); ?>" download
           class="inline-flex items-center justify-center px-4 py-2 bg-purple-600 text-white rounded-lg shadow hover:bg-purple-700 transition">
            تحميل الصورة الشخصية
        </a>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->

    <!--[if BLOCK]><![endif]--><?php if($record?->extra_file): ?>
        <a href="<?php echo e(asset('storage/' . $record->extra_file)); ?>" download
           class="inline-flex items-center justify-center px-4 py-2 bg-gray-700 text-white rounded-lg shadow hover:bg-gray-800 transition">
            تحميل الملف الإضافي
        </a>
    <?php endif; ?><!--[if ENDBLOCK]><![endif]-->

</div>
<?php /**PATH /home/you-it-laravel/os/mgd/back-end/resources/views/filament/students/files-download.blade.php ENDPATH**/ ?>
<?php

namespace App\Filament\Resources;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions\ExportAction;


use App\Filament\Resources\NewsResource\Pages;
use App\Filament\Resources\NewsResource\RelationManagers;
use App\Models\News;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
    use Filament\Forms\Components\TextInput;
    use Filament\Forms\Components\Textarea;
    use Filament\Forms\Components\FileUpload;
    use Illuminate\Support\Facades\Storage; // أضف هذا السطر في الأعلى لو مش موجود
    use Filament\Tables\Columns\ViewColumn; // هذا يكون في الأعلى مع باقي الـ use
    use Filament\Forms\Components\Repeater;
    use Filament\Forms\Components\Placeholder;
    use Filament\Tables\Columns\TextColumn;
    use Filament\Tables\Columns\ImageColumn;
    use Filament\Forms\Components\RichEditor;
    use Filament\Forms\Components\Select;
    use Filament\Forms\Components\Tabs;
    use Illuminate\Database\Eloquent\Model;



class NewsResource extends Resource
{
    protected static ?string $model = \App\Models\News::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';

    protected static ?string $navigationLabel = 'الأخبار'; // ← اسم مخصص في الشريط الجانبي

    // ممكن كمان:
    protected static ?string $label = 'خبر'; // ← اسم مفرد
    protected static ?string $pluralLabel = 'الأخبار'; // ← اسم الجمع في صفحات الجدول



public static function form(Form $form): Form
{
    return $form->schema([

  // 🈯️ التبويبات للغات
  Tabs::make('Language Tabs')
  ->tabs([
      Tabs\Tab::make('العربية')
          ->schema([
              TextInput::make('title_ar')
                  ->label('العنوان')
                  ->required(),

              RichEditor::make('content_ar')
                  ->label('المحتوى')
                  ->required()
                  ->toolbarButtons([
                      'bold', 'italic', 'underline', 'link',
                      'bulletList', 'orderedList', 'h2', 'h3',
                  ])
                  ->columnSpanFull()
                  ->helperText('أدخل التفاصيل الكاملة للخبر باللغة العربية.')
                  ->extraAttributes([
                      'class' => 'min-h-[300px] text-sm leading-relaxed',
                  ])
                  ->maxLength(5000),
          ]),

      Tabs\Tab::make('English')
          ->schema([
              TextInput::make('title_en')
                  ->label('Title')
                  ->required(),

              RichEditor::make('content_en')
                  ->label('Content')
                  ->required()
                  ->toolbarButtons([
                      'bold', 'italic', 'underline', 'link',
                      'bulletList', 'orderedList', 'h2', 'h3',
                  ])
                  ->columnSpanFull()
                  ->helperText('Enter the full news content in English.')
                  ->extraAttributes([
                      'class' => 'min-h-[300px] text-sm leading-relaxed',
                  ])
                  ->maxLength(5000),
          ]),
  ])
  ->columnSpanFull(),


  FileUpload::make('images')
      ->label('الصور')
      ->multiple()
      ->image()
      ->disk('public')
      ->directory('news-images')
      ->preserveFilenames()
      ->reorderable()
      ->downloadable()
      ->openable()
      ->deletable() // ✅ هذا يُظهر زر الحذف
      ->deleteUploadedFileUsing(function ($filePath, $record) {
          if (!$filePath || !$record) return;

          // حذف من التخزين
          \Storage::disk('public')->delete($filePath);

          // حذف من قاعدة البيانات (المصفوفة)
          $updatedImages = array_filter($record->images ?? [], fn($img) => $img !== $filePath);
          $record->update(['images' => array_values($updatedImages)]);
      })
      ->default(fn($record) => $record?->images ?? [])
      ->columnSpan('full'),
   // لتوسيع الحقل لو احتجت

  // عرض الصور الحالية بشكل منفصل لو تحب
  Placeholder::make('current_images')
      ->label('الصور الحالية')
      ->content(function ($get) {
          $images = $get('images') ?? [];
          return view('filament.forms.current-images', ['images' => $images]);
      })
      ->visible(fn ($get) => !empty($get('images'))),

Select::make('posts')
->label('Related Posts')
->multiple()
->relationship('posts', 'title') // Assuming 'title' is column in posts table
->searchable()
->preload(),


    ]);
}


public static function table(Table $table): Table
{
    return $table
        ->columns([
            TextColumn::make('id')
                ->label('ID')
                ->sortable(),

            TextColumn::make('posts.title')
                ->label('Posts')
                ->limit(30)
                ->separator(', '),

            ViewColumn::make('images')
                ->label('Images')
                ->view('filament.tables.columns.news-images'),


            TextColumn::make('created_at')
                ->label('تاريخ الإضافة')
                ->dateTime()
                ->sortable(),
        ])
        ->filters([
            SelectFilter::make('post_id')
                ->label('المنشور')
                ->relationship('posts', 'title'),
        ])
        ->actions([
            Tables\Actions\ViewAction::make(),
            Tables\Actions\EditAction::make(),
            Tables\Actions\DeleteAction::make(),
        ])
        ->bulkActions([
            Tables\Actions\DeleteBulkAction::make(),
        ]);
}


    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListNews::route('/'),
            'create' => Pages\CreateNews::route('/create'),
            'edit' => Pages\EditNews::route('/{record}/edit'),
        ];
    }
    public static function canViewAny(): bool
{
    return auth()->user()?->can('view news') ?? false;
}

public static function canCreate(): bool
{
    return auth()->user()?->can('create news') ?? false;
}

public static function canEdit(Model $record): bool
{
    return auth()->user()?->can('update news') ?? false;
}

public static function canDelete(Model $record): bool
{
    return auth()->user()?->can('delete news') ?? false;
}

}

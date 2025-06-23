<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UniversityResource\Pages;
use App\Models\University;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Columns\ImageColumn;

class UniversityResource extends Resource
{
    protected static ?string $model = University::class;

    protected static ?string $navigationGroup = 'الجامعات';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('name')
                ->label('اسم الجامعة')
                ->required(),

                FileUpload::make('image')
            ->label('صورة الجامعة')
            ->image()
            ->directory('universities/images')
            ->disk('public') // ← مهم جدًا
            ->nullable()
            ->enableOpen()
            ->enableDownload()
            ->deletable(),
            RichEditor::make('description')
                ->label('وصف الجامعة')
                ->nullable()
                ->toolbarButtons([
                    'bold', 'italic', 'underline', 'strike', 'link', 'bulletList', 'orderedList', 'blockquote'
                ]),
        ]);
    }
    public static function table(Table $table): Table
{
    return $table->columns([
        Tables\Columns\TextColumn::make('id')
            ->label('الرقم'),

        Tables\Columns\TextColumn::make('name')
            ->label('اسم الجامعة')
            ->searchable()
            ->sortable(),

        ImageColumn::make('image')
            ->label('الصورة')
            ->disk('public') // ← ضروري عشان يربطها بـ storage
            ->circular(),

        Tables\Columns\TextColumn::make('description')
            ->label('الوصف')
            ->limit(50)
            ->wrap(),

        Tables\Columns\TextColumn::make('created_at')
            ->label('تاريخ الإنشاء')
            ->dateTime()
            ->sortable(),
    ]);
}


    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUniversities::route('/'),
            'create' => Pages\CreateUniversity::route('/create'),
            'edit' => Pages\EditUniversity::route('/{record}/edit'),
        ];
    }
}

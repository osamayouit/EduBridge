<?php

namespace App\Filament\Resources;

use App\Filament\Resources\InstituteResource\Pages;
use App\Models\Institute;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Columns\ImageColumn;

class InstituteResource extends Resource
{
    protected static ?string $model = Institute::class;

    protected static ?string $navigationGroup = 'المعاهد';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('name')
                ->label('اسم المعاهد')
                ->required(),

                FileUpload::make('image')
                ->label('صورة المعاهد')
                ->image()
                ->directory('Institute/images')
                ->disk('public')
                ->nullable()
                ->reactive(),


            RichEditor::make('description')
                ->label('وصف المعاهد')
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
            ->label('اسم المعاهد')
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
            'index' => Pages\ListInstitutes::route('/'),
            'create' => Pages\CreateInstitute::route('/create'),
            'edit' => Pages\EditInstitute::route('/{record}/edit'),
        ];
    }
}
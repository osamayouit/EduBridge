<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UniversityMajorResource\Pages;
use App\Models\UniversityMajor;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
class UniversityMajorResource extends Resource
{
    protected static ?string $model = UniversityMajor::class;

    protected static ?string $navigationGroup = 'الجامعات';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Forms\Components\TextInput::make('name')->required(),
            Forms\Components\Select::make('university_id')
                ->relationship('university', 'name')
                ->required(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table->columns([
            Tables\Columns\TextColumn::make('id'),
            Tables\Columns\TextColumn::make('name'),
            Tables\Columns\TextColumn::make('university.name')->label('University'),
            Tables\Columns\TextColumn::make('created_at')->dateTime(),
        ])->filters([]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUniversityMajors::route('/'),
            'create' => Pages\CreateUniversityMajor::route('/create'),
            'edit' => Pages\EditUniversityMajor::route('/{record}/edit'),
        ];
    }
}

<?php

namespace App\Filament\Resources;

use App\Filament\Resources\InstituteMajorResource\Pages;
use App\Models\InstituteMajor;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Tables\Table;
class InstituteMajorResource extends Resource
{
    protected static ?string $model = InstituteMajor::class;

    protected static ?string $navigationGroup = 'المعاهد';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Select::make('institute_id')
                ->relationship('institute', 'name')
                ->required(),
            Forms\Components\TextInput::make('name')->required(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table->columns([
            Tables\Columns\TextColumn::make('id'),
            Tables\Columns\TextColumn::make('name'),
            Tables\Columns\TextColumn::make('institute.name')->label('اسم المعهد'),
            Tables\Columns\TextColumn::make('created_at')->dateTime(),
        ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListInstituteMajors::route('/'),
            'create' => Pages\CreateInstituteMajor::route('/create'),
            'edit' => Pages\EditInstituteMajor::route('/{record}/edit'),
        ];
    }
}
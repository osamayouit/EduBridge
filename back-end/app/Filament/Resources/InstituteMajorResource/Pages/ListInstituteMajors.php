<?php

namespace App\Filament\Resources\InstituteMajorResource\Pages;

use App\Filament\Resources\InstituteMajorResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListInstituteMajors extends ListRecords
{
    protected static string $resource = InstituteMajorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

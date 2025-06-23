<?php

namespace App\Filament\Resources\UniversityMajorResource\Pages;

use App\Filament\Resources\UniversityMajorResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListUniversityMajors extends ListRecords
{
    protected static string $resource = UniversityMajorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

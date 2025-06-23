<?php

namespace App\Filament\Resources\InstituteMajorResource\Pages;

use App\Filament\Resources\InstituteMajorResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditInstituteMajor extends EditRecord
{
    protected static string $resource = InstituteMajorResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

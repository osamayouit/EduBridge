<?php

namespace App\Filament\Resources;

use App\Filament\Resources\StudentResource\Pages;
use App\Models\Student;
use Filament\Forms;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\HtmlEntry;
use Filament\Forms\Components\ViewField;

use App\Models\Country;
use Filament\Forms\Components\Select;
class StudentResource extends Resource
{
    protected static ?string $model = Student::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-group';

    protected static ?string $navigationGroup = 'الطلاب';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([


                TextInput::make('name')
                    ->label('اسم الطالب')
                    ->required()
                    ->maxLength(222),

                TextInput::make('university_name')
                    ->label('اسم الجامعة')
                    ->maxLength(222),

                TextInput::make('major_name')
                    ->label('التخصص')
                    ->maxLength(222),

                TextInput::make('father_name')
                    ->label('اسم الأب')
                    ->maxLength(222),

                TextInput::make('father_phone')
                    ->label('هاتف الأب')
                    ->maxLength(100),

                TextInput::make('student_phone')
                    ->label('هاتف الطالب')
                    ->maxLength(100),


Select::make('father_country')
    ->label('دولة الأب')
    ->options(Country::pluck('name', 'name')->toArray())
    ->searchable()
    ->required(),

Select::make('target_country')
    ->label('الدولة المستهدفة')
    ->options(Country::pluck('name', 'name')->toArray())
    ->searchable()
    ->required(),

FileUpload::make('highschool_certificate')
    ->label('شهادة الثانوية')
    ->directory('students/highschool')
    ->maxSize(10240)
    ->nullable(),

ViewField::make('highschool_certificate_download')
    ->label('تحميل شهادة الثانوية')
    ->view('filament.students.file-download')
    ->viewData(fn ($livewire) => [
        'record' => $livewire->record,
        'field' => 'highschool_certificate',
        'label' => 'شهادة الثانوية',
        'color' => 'blue',
    ]),

FileUpload::make('university_certificate')
    ->label('شهادة الجامعة')
    ->directory('students/university')
    ->maxSize(10240)
    ->nullable(),

ViewField::make('university_certificate_download')
    ->label('تحميل شهادة الجامعة')
    ->view('filament.students.file-download')
    ->viewData(fn ($livewire) => [
        'record' => $livewire->record,
        'field' => 'university_certificate',
        'label' => 'شهادة الجامعة',
        'color' => 'green',
    ]),

FileUpload::make('passport')
    ->label('جواز السفر')
    ->directory('students/passports')
    ->maxSize(10240)
    ->nullable(),

ViewField::make('passport_download')
    ->label('تحميل جواز السفر')
    ->view('filament.students.file-download')
    ->viewData(fn ($livewire) => [
        'record' => $livewire->record,
        'field' => 'passport',
        'label' => 'جواز السفر',
        'color' => 'yellow',
    ]),

FileUpload::make('personal_photo')
    ->label('الصورة الشخصية')
    ->directory('students/photos')
    ->image()
    ->maxSize(5120)
    ->nullable(),

ViewField::make('personal_photo_download')
    ->label('تحميل الصورة الشخصية')
    ->view('filament.students.file-download')
    ->viewData(fn ($livewire) => [
        'record' => $livewire->record,
        'field' => 'personal_photo',
        'label' => 'الصورة الشخصية',
        'color' => 'purple',
    ]),

FileUpload::make('extra_file')
    ->label('ملف إضافي')
    ->directory('students/extras')
    ->maxSize(10240)
    ->nullable(),

ViewField::make('extra_file_download')
    ->label('تحميل الملف الإضافي')
    ->view('filament.students.file-download')
    ->viewData(fn ($livewire) => [
        'record' => $livewire->record,
        'field' => 'extra_file',
        'label' => 'الملف الإضافي',
        'color' => 'gray',
    ]),


            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('اسم الطالب')->sortable()->searchable(),
                TextColumn::make('university_name')->label('الجامعة')->sortable()->searchable(),
                TextColumn::make('major_name')->label('التخصص')->sortable(),
                TextColumn::make('father_country')->label('دولة الأب'),
                TextColumn::make('target_country')->label('الدولة المستهدفة'),
                TextColumn::make('created_at')->label('تاريخ الإنشاء')->date()->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make()->label('عرض'),
                Tables\Actions\EditAction::make()->label('تعديل'),
                Tables\Actions\DeleteAction::make()->label('حذف'),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make()->label('حذف مختار'),
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
            'index' => Pages\ListStudents::route('/'),
            'create' => Pages\CreateStudent::route('/create'),
            'edit' => Pages\EditStudent::route('/{record}/edit'),
            'view' => Pages\ViewStudent::route('/{record}'),
        ];
    }
}

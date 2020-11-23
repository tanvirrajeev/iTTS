<?php

use Illuminate\Database\Seeder;
use App\Division;

class DivisionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            ['name' => 'SCM', 'description' => 'Supply Chain Management', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'PSD', 'description' => 'Product Support Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'F&A', 'description' => 'Finance & Accounts', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'IT&ERP', 'description' => 'IT&ERP Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'LBA', 'description' => 'LBA Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Sales', 'description' => 'Sales Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Alied', 'description' => 'Alied Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'CRM', 'description' => 'CRM Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Marine', 'description' => 'Marine Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'HR', 'description' => 'HR Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Admin', 'description' => 'Admin Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Service', 'description' => 'Service Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'CPU', 'description' => 'CPU Division', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Rental', 'description' => 'Rental Company', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Infor', 'description' => 'Infor', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'AISL', 'description' => 'Acorn Infrastructure Services Ltd', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Internal Audit', 'description' => 'Internal Audit', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'DMT', 'description' => 'Daud Machinery LLC', 'created_by' => 'Tanvir Rahim' ],
        ];

        foreach ($items as $item) {
            Division::create($item);
        }
    }
}

<?php

use Illuminate\Database\Seeder;

class SystemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            ['name' => 'Inventory Management', 'description' => 'Inventory Management', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'User Support', 'description' => 'User Support', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Product Purchase', 'description' => 'Product Purchase', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Physical Environment check of Data Centre', 'description' => 'Physical Environment check of Data Centre', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Data Backup', 'description' => 'Data Backup', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Server', 'description' => 'Server', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'On-Line UPS', 'description' => 'On-Line UPS', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Data centre Monitoring System', 'description' => 'Data centre Monitoring System', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Documentation', 'description' => 'Documentation', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Security', 'description' => 'Security', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Report', 'description' => 'Report', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Departmental Work', 'description' => 'Departmental Work', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Inventory', 'description' => 'Inventory', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Inventory', 'description' => 'Inventory', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Inventory', 'description' => 'Inventory', 'created_by' => 'Tanvir Rahim' ],
            ['name' => 'Inventory', 'description' => 'Inventory', 'created_by' => 'Tanvir Rahim' ],
        ];

        foreach ($items as $item) {
            Division::create($item);
        }
    }
    }
}

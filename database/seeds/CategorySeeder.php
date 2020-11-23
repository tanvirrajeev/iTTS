<?php

use Illuminate\Database\Seeder;
use App\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            ['system_id' => '', 'name' => '', 'description' => '', 'created_by' => 'Tanvir Rahim' ],
        ];

        foreach ($items as $item) {
            Division::create($item);
        }
    }
}

<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class GetDbName extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:get-db-name';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'To get the current db name';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $dbName = DB::connection()->getDatabaseName();
        $this->info("Current DB Name: $dbName" );
    }
}

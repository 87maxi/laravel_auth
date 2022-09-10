<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\FormFields\NumberFormField;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Facades\Voyager as VoyagerFacade;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */

    public function register()
    {
       // Passport::ignoreMigrations();
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        Schema::defaultStringLength(191);
    }

}

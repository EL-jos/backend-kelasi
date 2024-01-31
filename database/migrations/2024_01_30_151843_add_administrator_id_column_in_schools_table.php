<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAdministratorIdColumnInSchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('schools', function (Blueprint $table) {
            $table->dropColumn("password");
            $table->dropForeign("schools_province_id_foreign");
            $table->dropColumn("province_id");

            $table->uuid("administrator_id")->after("responsable_address");

            $table->foreign("administrator_id")->references("id")->on("administrators")
                ->cascadeOnUpdate()->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('schools', function (Blueprint $table) {
            $table->dropForeign("schools_administrator_id_foreign");
            $table->dropColumn("administrator_id");

            $table->string('province_id');
            $table->string("password");

            $table->foreign("province_id")->references("id")->on("provinces")
                ->cascadeOnUpdate()->cascadeOnDelete();
        });
    }
}

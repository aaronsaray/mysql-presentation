<?php
/**
 * We override a save() method so that we don't write to the table, and give a good message instead
 */
declare(strict_types=1);

namespace App;

/**
 * Trait ProtectionForNonUpdatableView
 * @package App
 */
trait ProtectionForNonUpdatableView
{
    /**
     * Stop the save method
     *
     * @param array $options
     * @throws \DomainException
     */
    public function save(array $options = [])
    {
        throw new \DomainException('You can not save() on an Eloquent model that is based on a view.');
    }
}
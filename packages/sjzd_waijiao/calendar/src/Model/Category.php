<?php

namespace SJZDwaijiao\Calendar\Model;

use SBWebApplication\System\Model\DataModelTrait;
use SBWebApplication\Database\ORM\ModelTrait;
use SBWebApplication\User\Model\User;

/**
 * @Entity(tableClass="@calendar_categories")
 */
class Category
{

    use ModelTrait, DataModelTrait;

    /** @Column(type="integer") @Id */
    public $id;

    /** @Column */
    public $name = '';

    /** @Column */
    public $color;

    /**
     * @HasMany(targetEntity="Event", keyFrom="id", keyTo="event_id")
     */
    public $events;
    
    /** @Column(type="integer") */
    public $author_id;

    /**
     * @BelongsTo(targetEntity="SBWebApplication\User\Model\User", keyFrom="author_id")
     */
    public $author;

    /**
     * {@inheritdoc}
     */
    public function jsonSerialize()
    {        
        return $this->toArray(['author' => User::find($this->author_id)]);
    }
}
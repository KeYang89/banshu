<?php

namespace SJZDwaijiao\Calendar\Model;

use SBWebApplication\System\Model\DataModelTrait;
use SBWebApplication\Database\ORM\ModelTrait;
use SBWebApplication\User\Model\User;

/**
 * @Entity(tableClass="@calendar_events")
 */
class Event implements \JsonSerializable
{

    use ModelTrait, DataModelTrait;

    /** @Column(type="integer") @Id */
    public $id;

    /** @Column */
    public $title = '';

    /** @Column(type="datetime") */
    public $start;
    
    /** @Column(type="datetime") */
    public $end;

    /** @Column(type="text") */
    public $description = '';
    
    /** @Column(type="boolean") */
    public $allDay;
    
    /** @Column(type="integer") */
    public $category_id;
    
    /**
     * @BelongsTo(targetEntity="SJZDwaijiao\Calendar\Model\Category", keyFrom="category_id")
     */
    public $category;
    
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
        $color = null;
        if ($this->category_id)
        {
            $color = Category::find($this->category_id)->color;
        }
        
        $undefinedEnd = $this->start == $this->end;
        
        return $this->toArray(['color' => $color, 'author' => User::find($this->author_id), 'undefinedEnd' => $undefinedEnd]);
    }
}
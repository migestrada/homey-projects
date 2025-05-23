# README

DIAGRAM:
[URL](https://dbdiagram.io/d/Homey-projects-68307b90b9f7446da3debec7)

## Questions

- Attributes of projects?
```dbml
Table Porjects {
  id bigint pk
  title string
  status StatusEnum
}

enum StatusEnum {
  IDEA
  PLANNING
  PENDING_APPROVAL
  APPROVED
  IN_PROGRESS
  ON_HOLD
  UNDER_REVIEW
  NEEDS_CHANGES
  COMPLETED
  CANCELED
}
```

- Are we going to beable comments futures tables?
Yes
I'll create polymorphic comments model

```dbml
Table comments {
  id bigint pk
  commentary string
  commentable_type string
  commentable_id bigint
}

Ref: projects.id < comments.commentable_id
```
- Shoud whe update the status with the comment?
Yes
```
I will save a status inside the project and the comment
```



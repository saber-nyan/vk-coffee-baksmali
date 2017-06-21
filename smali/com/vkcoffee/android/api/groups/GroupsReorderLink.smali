.class public Lcom/vkcoffee/android/api/groups/GroupsReorderLink;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsReorderLink.java"


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "gid"    # I
    .param p2, "lid"    # I
    .param p3, "after"    # I

    .prologue
    .line 10
    const-string/jumbo v0, "groups.reorderLink"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsReorderLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "link_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsReorderLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "after"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/groups/GroupsReorderLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method

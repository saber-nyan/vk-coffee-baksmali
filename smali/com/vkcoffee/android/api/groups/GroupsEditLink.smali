.class public Lcom/vkcoffee/android/api/groups/GroupsEditLink;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsEditLink.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "gid"    # I
    .param p2, "lid"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "groups.editLink"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsEditLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "link_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsEditLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/groups/GroupsEditLink;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    return-void
.end method

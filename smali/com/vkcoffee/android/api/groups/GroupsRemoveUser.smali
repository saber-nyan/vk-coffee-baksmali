.class public Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsRemoveUser.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "gid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 10
    const-string/jumbo v0, "groups.removeUser"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsRemoveUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method

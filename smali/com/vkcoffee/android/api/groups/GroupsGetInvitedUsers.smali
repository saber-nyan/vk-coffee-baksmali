.class public Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "GroupsGetInvitedUsers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "groups.getInvitedUsers"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_200,photo_50,education,city"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/groups/GroupsGetInvitedUsers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method

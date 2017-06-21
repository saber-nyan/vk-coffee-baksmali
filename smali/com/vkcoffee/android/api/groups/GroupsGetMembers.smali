.class public Lcom/vkcoffee/android/api/groups/GroupsGetMembers;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "GroupsGetMembers.java"


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
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string/jumbo v0, "groups.getMembers"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_50,photo_200,photo_100"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetMembers;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    if-eqz p4, :cond_0

    .line 13
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/groups/GroupsGetMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    :cond_0
    return-void
.end method

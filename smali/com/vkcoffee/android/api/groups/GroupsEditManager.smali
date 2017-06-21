.class public Lcom/vkcoffee/android/api/groups/GroupsEditManager;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsEditManager.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "uid"    # I
    .param p3, "role"    # Ljava/lang/String;
    .param p4, "contact"    # Z
    .param p5, "contactTitle"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string/jumbo v0, "groups.editManager"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "role"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    if-eqz p4, :cond_0

    .line 15
    const-string/jumbo v0, "is_contact"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "contact_position"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "is_contact"

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsEditManager;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

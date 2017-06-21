.class public Lcom/vkcoffee/android/api/groups/GroupsBanUser;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsBanUser.java"


# direct methods
.method public constructor <init>(IIZIILjava/lang/String;Z)V
    .locals 3
    .param p1, "groupID"    # I
    .param p2, "userID"    # I
    .param p3, "ban"    # Z
    .param p4, "endDate"    # I
    .param p5, "reason"    # I
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "commentVisible"    # Z

    .prologue
    .line 11
    if-eqz p3, :cond_1

    const-string/jumbo v0, "groups.banUser"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    if-eqz p3, :cond_0

    .line 15
    const-string/jumbo v0, "end_date"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "reason"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "comment"

    invoke-virtual {p0, v0, p6}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v1, "comment_visible"

    if-eqz p7, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/groups/GroupsBanUser;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_0
    return-void

    .line 11
    :cond_1
    const-string/jumbo v0, "groups.unbanUser"

    goto :goto_0

    .line 18
    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

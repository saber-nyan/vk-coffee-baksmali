.class public Lcom/vkcoffee/android/api/groups/GroupsJoin;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsJoin.java"


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "unsure"    # Z

    .prologue
    .line 9
    const-string/jumbo v0, "groups.join"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsJoin;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    if-eqz p2, :cond_0

    .line 12
    const-string/jumbo v0, "not_sure"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsJoin;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    .line 19
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 20
    return-void
.end method

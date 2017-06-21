.class public Lcom/vkcoffee/android/api/groups/GroupsLeave;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsLeave.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "groups.leave"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsLeave;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 16
    return-void
.end method

.class public Lcom/vkcoffee/android/api/status/StatusSet;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "StatusSet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "groupID"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "status.set"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/status/StatusSet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    if-lez p2, :cond_0

    .line 11
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/status/StatusSet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    :cond_0
    return-void
.end method

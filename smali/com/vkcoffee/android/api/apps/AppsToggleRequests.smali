.class public Lcom/vkcoffee/android/api/apps/AppsToggleRequests;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AppsToggleRequests.java"


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 11
    const-string/jumbo v0, "apps.toggleRequests"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v1, "enabled"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/apps/AppsToggleRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

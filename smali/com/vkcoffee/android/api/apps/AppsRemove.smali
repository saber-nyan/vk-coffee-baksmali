.class public Lcom/vkcoffee/android/api/apps/AppsRemove;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AppsRemove.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 11
    const-string/jumbo v0, "apps.remove"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsRemove;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method

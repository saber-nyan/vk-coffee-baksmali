.class public Lcom/vkcoffee/android/api/apps/AppsGetCatalog;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "AppsGetCatalog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/ApiApplication;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "apps.getCatalog"

    const-class v1, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    :cond_0
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    const-string/jumbo v0, "return_friends"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "sectionId"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 25
    const-string/jumbo v0, "apps.getCatalog"

    const-class v1, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    :cond_0
    if-lez p2, :cond_1

    .line 30
    const-string/jumbo v0, "section_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    :cond_1
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 33
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    const-string/jumbo v0, "return_friends"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    return-void
.end method

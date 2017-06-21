.class public abstract Lcom/vkcoffee/android/api/apps/CatalogLoader;
.super Ljava/lang/Object;
.source "CatalogLoader.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/data/ApiApplication;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0xa


# instance fields
.field private final applications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field volatile canLoadMore:Z

.field private final catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final count:I

.field volatile currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

.field volatile isLoading:Z


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo$FilterType;)V
    .locals 1
    .param p1, "titleRes"    # I
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "filterType"    # Lcom/vkcoffee/android/data/CatalogInfo$FilterType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;",
            "Lcom/vkcoffee/android/data/CatalogInfo$FilterType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "application":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->isLoading:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    new-instance v0, Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-direct {v0, p1, p3}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(ILcom/vkcoffee/android/data/CatalogInfo$FilterType;)V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->count:I

    .line 33
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->processApps(Ljava/util/ArrayList;)V

    .line 34
    return-void

    .line 32
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "catalogInfo"    # Lcom/vkcoffee/android/data/CatalogInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;",
            "Lcom/vkcoffee/android/data/CatalogInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "application":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->isLoading:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-object p2, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->count:I

    .line 40
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->processApps(Ljava/util/ArrayList;)V

    .line 41
    return-void

    .line 39
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private processApps(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "application":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 70
    .local v0, "apiApplication":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v2, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iput-object v2, v0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 71
    iget-object v2, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget-object v2, v2, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    sget-object v3, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->installed:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    if-ne v2, v3, :cond_0

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    goto :goto_0

    .line 75
    .end local v0    # "apiApplication":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_1
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->isLoading:Z

    .line 94
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->onLoadedNextPage(Ljava/util/ArrayList;Z)V

    .line 96
    return-void
.end method

.method public forceLoadNextPage()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 51
    iget-boolean v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->isLoading:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    if-eqz v1, :cond_1

    .line 52
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->isLoading:Z

    .line 53
    iget-object v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/CatalogInfo;->hasGenreId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;

    iget-object v2, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/CatalogInfo;->getServerKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget v3, v3, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    iget-object v4, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->count:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;-><init>(Ljava/lang/String;III)V

    .line 55
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 64
    :goto_0
    return v0

    .line 58
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;

    iget-object v2, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/CatalogInfo;->getServerKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->count:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;-><init>(Ljava/lang/String;II)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/apps/AppsGetCatalog;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onLoadedNextPage(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->processApps(Ljava/util/ArrayList;)V

    .line 85
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->isLoading:Z

    .line 86
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->count:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->canLoadMore:Z

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->onLoadedNextPage(Ljava/util/ArrayList;Z)V

    .line 89
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

.method public updateApiApplication(Lcom/vkcoffee/android/data/ApiApplication;)V
    .locals 2
    .param p1, "apiApplication"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 45
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/vkcoffee/android/api/apps/CatalogLoader;->applications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

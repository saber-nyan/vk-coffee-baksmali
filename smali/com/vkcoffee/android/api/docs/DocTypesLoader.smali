.class public abstract Lcom/vkcoffee/android/api/docs/DocTypesLoader;
.super Ljava/lang/Object;
.source "DocTypesLoader.java"

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
        "Lcom/vkcoffee/android/api/Document;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x14


# instance fields
.field volatile canLoadMore:Z

.field private final count:I

.field volatile currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private final documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field volatile isLoading:Z

.field private final ownerId:I

.field private final typeId:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;II)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "typeId"    # I
    .param p3, "ownerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->canLoadMore:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->isLoading:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->documents:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    iput p2, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->typeId:I

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->count:I

    .line 32
    iput p3, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->ownerId:I

    .line 33
    return-void

    .line 31
    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->isLoading:Z

    .line 60
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->canLoadMore:Z

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->documents:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->canLoadMore:Z

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->onLoadedNextPage(Ljava/util/ArrayList;Z)V

    .line 62
    return-void
.end method

.method public forceLoadNextPage()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 36
    iget-boolean v1, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->isLoading:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->canLoadMore:Z

    if-eqz v1, :cond_0

    .line 37
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->isLoading:Z

    .line 38
    new-instance v1, Lcom/vkcoffee/android/api/docs/DocsGet;

    iget v2, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->ownerId:I

    iget-object v3, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->count:I

    iget v5, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->typeId:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/api/docs/DocsGet;-><init>(IIII)V

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/docs/DocsGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onLoadedNextPage(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
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
            "Lcom/vkcoffee/android/api/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/Document;>;"
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->isLoading:Z

    .line 52
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->count:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->canLoadMore:Z

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->documents:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->canLoadMore:Z

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->onLoadedNextPage(Ljava/util/ArrayList;Z)V

    .line 55
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

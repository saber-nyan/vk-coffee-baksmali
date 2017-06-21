.class public Lcom/vkcoffee/android/api/SimpleListCallback;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SimpleListCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<TS;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lme/grishka/appkit/fragments/BaseListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/fragments/BaseListFragment",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleListCallback;, "Lcom/vkcoffee/android/api/SimpleListCallback<TS;>;"
    .local p1, "fragment":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TS;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/fragments/BaseRecyclerFragment",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleListCallback;, "Lcom/vkcoffee/android/api/SimpleListCallback<TS;>;"
    .local p1, "fragment":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TS;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    .line 19
    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleListCallback;, "Lcom/vkcoffee/android/api/SimpleListCallback<TS;>;"
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TS;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleListCallback;->fragment:Landroid/app/Fragment;

    instance-of v0, v0, Lme/grishka/appkit/fragments/BaseListFragment;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleListCallback;->fragment:Landroid/app/Fragment;

    check-cast v0, Lme/grishka/appkit/fragments/BaseListFragment;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/BaseListFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleListCallback;->fragment:Landroid/app/Fragment;

    check-cast v0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleListCallback;, "Lcom/vkcoffee/android/api/SimpleListCallback<TS;>;"
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/SimpleListCallback;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

.class Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SuggestedPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/wall/WallGet$Result;)V
    .locals 3
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallGet$Result;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;

    iget-object v2, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    iget-object v0, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$1;->success(Lcom/vkcoffee/android/api/wall/WallGet$Result;)V

    return-void
.end method

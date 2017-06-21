.class Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FavePostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;->val$count:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "news":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->access$200(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;)I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;->val$count:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->access$102(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;I)I

    .line 41
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;->access$300(Lcom/vkcoffee/android/fragments/fave/FavePostListFragment;Ljava/util/List;Z)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/fave/FavePostListFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

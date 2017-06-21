.class Lcom/vkcoffee/android/fragments/market/GoodFragment$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "GoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;->deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

.field final synthetic val$comment:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->clear(Z)V

    .line 444
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->addAll(Ljava/util/Collection;Z)V

    .line 445
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$900(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->addAll(Ljava/util/Collection;Z)V

    .line 446
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->notifyDataSetChanged()V

    .line 447
    return-void
.end method

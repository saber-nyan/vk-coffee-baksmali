.class Lcom/vkcoffee/android/fragments/market/GoodFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

.field final synthetic val$atts:Ljava/util/List;

.field final synthetic val$clearCommentBar:Z

.field final synthetic val$fromGroup:Z

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/Fragment;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$text:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$clearCommentBar:Z

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$txt:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$atts:Ljava/util/List;

    iput-boolean p7, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$fromGroup:Z

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 553
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 554
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1602(Lcom/vkcoffee/android/fragments/market/GoodFragment;Z)Z

    .line 555
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    .line 521
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$text:Ljava/lang/String;

    .line 522
    .local v1, "textLocal":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$clearCommentBar:Z

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1000(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$txt:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$txt:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$txt:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1200(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->createReplyLink(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/WriteBar;->clearAttachments()V

    .line 528
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1402(Lcom/vkcoffee/android/fragments/market/GoodFragment;Z)Z

    .line 529
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1002(Lcom/vkcoffee/android/fragments/market/GoodFragment;I)I

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v2

    invoke-virtual {v2}, Lme/grishka/appkit/utils/Preloader;->isMoreAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0800b4

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 533
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1602(Lcom/vkcoffee/android/fragments/market/GoodFragment;Z)Z

    .line 549
    :goto_0
    return-void

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$atts:Ljava/util/List;

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->val$fromGroup:Z

    invoke-static {v2, v3, v4, v1, v5}, Lcom/vkcoffee/android/api/board/BoardComment;->createNewComment(IILjava/util/List;Ljava/lang/String;Z)Lcom/vkcoffee/android/api/board/BoardComment;

    move-result-object v0

    .line 537
    .local v0, "newComment":Lcom/vkcoffee/android/api/board/BoardComment;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->clear(Z)V

    .line 540
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->addAll(Ljava/util/Collection;Z)V

    .line 541
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$900(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->addAll(Ljava/util/Collection;Z)V

    .line 542
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->notifyDataSetChanged()V

    .line 544
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 545
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1900(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->scrollToPosition(I)V

    .line 548
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-static {v2, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->access$1602(Lcom/vkcoffee/android/fragments/market/GoodFragment;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 518
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;->success(Ljava/lang/Integer;)V

    return-void
.end method

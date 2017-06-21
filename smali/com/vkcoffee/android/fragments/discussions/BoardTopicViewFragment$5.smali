.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final synthetic val$var1:Ljava/lang/String;

.field private final synthetic val$var2:Ljava/util/List;

.field private final synthetic val$var3:Z

.field private final synthetic val$var4:Z

.field private final synthetic val$var5:Ljava/lang/String;

.field private final synthetic val$var6:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/Fragment;Ljava/lang/String;ZLjava/lang/String;Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var5:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var3:Z

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var1:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var6:Landroid/app/Activity;

    iput-object p7, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var2:Ljava/util/List;

    iput-boolean p8, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var4:Z

    .line 756
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 758
    .local p1, "var1x":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 759
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    .line 760
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 11
    .param p1, "var1x"    # Ljava/lang/Integer;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 762
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var5:Ljava/lang/String;

    .line 763
    .local v1, "var3x":Ljava/lang/String;
    move-object v0, v1

    .line 764
    .local v0, "var2x":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var3:Z

    if-eqz v2, :cond_1

    .line 765
    move-object v0, v1

    .line 766
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    if-lez v2, :cond_0

    .line 767
    move-object v0, v1

    .line 768
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var1:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 769
    move-object v0, v1

    .line 770
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var1:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget v5, v5, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToUid:I

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget v8, v8, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->createReplyLink(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/WriteBar;->clearAttachments()V

    .line 778
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-boolean v9, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyFromGroup:Z

    .line 779
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput v10, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    .line 782
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$7(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v2

    if-ne v2, v10, :cond_2

    .line 783
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->createHint:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 784
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 785
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-boolean v9, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    .line 786
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->setTopicId(I)V

    .line 787
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var6:Landroid/app/Activity;

    invoke-virtual {v2, v9, v3}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->init(ILandroid/content/Context;)V

    .line 796
    :goto_0
    return-void

    .line 788
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->isEndOfListLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 789
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0800b4

    invoke-static {v2, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 790
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-boolean v9, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    goto :goto_0

    .line 792
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var2:Ljava/util/List;

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->val$var4:Z

    invoke-static {v3, v4, v5, v0, v6}, Lcom/vkcoffee/android/api/board/BoardComment;->createNewComment(IILjava/util/List;Ljava/lang/String;Z)Lcom/vkcoffee/android/api/board/BoardComment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->insertComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    .line 793
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-boolean v9, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;->success(Ljava/lang/Integer;)V

    return-void
.end method

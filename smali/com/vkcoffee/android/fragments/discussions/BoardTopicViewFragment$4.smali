.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->likeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final synthetic val$comm:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 661
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 664
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;)V
    .locals 2
    .param p1, "res"    # Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;

    .prologue
    .line 653
    if-eqz p1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;->isLiked:Z

    iput-boolean v1, v0, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked:Z

    .line 655
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->val$comm:Lcom/vkcoffee/android/api/board/BoardComment;

    iget v1, p1, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;->likeCount:I

    iput v1, v0, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    .line 656
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->notifyDataSetChanged()V

    .line 658
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;->success(Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;)V

    return-void
.end method

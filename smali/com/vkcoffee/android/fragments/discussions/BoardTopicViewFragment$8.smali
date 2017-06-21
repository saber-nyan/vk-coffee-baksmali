.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final synthetic val$comment:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    .line 961
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;->val$comment:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->removeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    .line 964
    return-void
.end method

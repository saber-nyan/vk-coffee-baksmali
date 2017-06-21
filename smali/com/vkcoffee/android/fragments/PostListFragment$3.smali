.class Lcom/vkcoffee/android/fragments/PostListFragment$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;->performPostAction(Ljava/lang/String;Lcom/vkcoffee/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

.field final synthetic val$e:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 635
    return-void
.end method

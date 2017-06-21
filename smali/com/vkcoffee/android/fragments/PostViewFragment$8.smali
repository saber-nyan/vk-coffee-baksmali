.class Lcom/vkcoffee/android/fragments/PostViewFragment$8;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->deletePost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 1067
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 4

    .prologue
    .line 1069
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkcoffee.android.POST_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    const-string v2, "post_id"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    const-string v2, "type"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v2, "post"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1074
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/cache/NewsfeedCache;->remove(II)V

    .line 1076
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/FragmentWrapperActivity;

    if-eqz v2, :cond_0

    .line 1077
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1078
    .local v1, "intent1":Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1079
    const-string v2, "pid"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1081
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$8;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1083
    .end local v1    # "intent1":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.class Lcom/vkcoffee/android/fragments/PostViewFragment$9;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->saveRepostComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$newComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->val$newComment:Ljava/lang/String;

    .line 1101
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 1115
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 1116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->val$newComment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$21(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/lang/String;)V

    .line 1117
    return-void
.end method

.method public success()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1103
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0803a4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1104
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->val$newComment:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1105
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-ne v1, v2, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replaceOne(Lcom/vkcoffee/android/NewsEntry;Z)V

    .line 1108
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.POST_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entry"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1110
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f10006e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ExTextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/NewsEntry;->getTypeString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$9;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    return-void
.end method

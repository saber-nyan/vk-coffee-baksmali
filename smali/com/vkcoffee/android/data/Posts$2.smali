.class final Lcom/vkcoffee/android/data/Posts$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "Posts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Posts;->saveRepostComment(Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$e:Lcom/vkcoffee/android/NewsEntry;

.field final synthetic val$newComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    iput-object p2, p0, Lcom/vkcoffee/android/data/Posts$2;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iput-object p4, p0, Lcom/vkcoffee/android/data/Posts$2;->val$newComment:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 438
    iget-object v0, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$2;->val$newComment:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$2;->val$act:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/data/Posts;->editRepostComment(Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    .line 439
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 425
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$2;->val$act:Landroid/app/Activity;

    const v2, 0x7f0803a4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 426
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$2;->val$newComment:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-ne v1, v2, :cond_0

    .line 428
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    invoke-static {v1, v3}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replaceOne(Lcom/vkcoffee/android/NewsEntry;Z)V

    .line 430
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.POST_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "entry"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$2;->val$e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 432
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$2;->val$act:Landroid/app/Activity;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 433
    return-void
.end method

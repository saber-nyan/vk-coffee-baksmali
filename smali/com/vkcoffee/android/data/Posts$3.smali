.class final Lcom/vkcoffee/android/data/Posts$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "Posts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Posts;->deletePost(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$e:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    iput-object p2, p0, Lcom/vkcoffee/android/data/Posts$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iput-object p3, p0, Lcom/vkcoffee/android/data/Posts$3;->val$act:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v1, v2}, Lcom/vkcoffee/android/cache/NewsfeedCache;->remove(II)V

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.POST_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "owner_id"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string/jumbo v1, "post_id"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string/jumbo v1, "post"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$3;->val$e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$3;->val$act:Landroid/app/Activity;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.class final Lcom/vkcoffee/android/data/Posts$5;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "Posts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Posts;->toggleFixed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$post:Lcom/vkcoffee/android/NewsEntry;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 536
    iput-object p2, p0, Lcom/vkcoffee/android/data/Posts$5;->val$post:Lcom/vkcoffee/android/NewsEntry;

    iput-object p3, p0, Lcom/vkcoffee/android/data/Posts$5;->val$act:Landroid/app/Activity;

    iput-object p4, p0, Lcom/vkcoffee/android/data/Posts$5;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$5;->val$post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$5;->val$act:Landroid/app/Activity;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$5;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/vkcoffee/android/data/Posts$5;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 546
    :cond_0
    return-void
.end method

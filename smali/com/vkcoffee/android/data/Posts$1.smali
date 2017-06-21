.class final Lcom/vkcoffee/android/data/Posts$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "Posts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Posts;->publishPostponed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$e:Lcom/vkcoffee/android/NewsEntry;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iput-object p2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iput-object p3, p0, Lcom/vkcoffee/android/data/Posts$1;->val$context:Landroid/app/Activity;

    iput-object p4, p0, Lcom/vkcoffee/android/data/Posts$1;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.POST_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "owner_id"

    iget-object v3, p0, Lcom/vkcoffee/android/data/Posts$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v2, "post_id"

    iget-object v3, p0, Lcom/vkcoffee/android/data/Posts$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v2, "post"

    iget-object v3, p0, Lcom/vkcoffee/android/data/Posts$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    .line 132
    .local v1, "n":Lcom/vkcoffee/android/NewsEntry;
    const/16 v2, 0x800

    invoke-virtual {v1, v2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 133
    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 135
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 136
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.vkcoffee.android.NEW_POST_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "entry"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$context:Landroid/app/Activity;

    const v3, 0x7f0805ac

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 140
    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/vkcoffee/android/data/Posts$1;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 143
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Posts$1;->success(Ljava/lang/Integer;)V

    return-void
.end method

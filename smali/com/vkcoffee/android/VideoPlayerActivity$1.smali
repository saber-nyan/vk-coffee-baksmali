.class Lcom/vkcoffee/android/VideoPlayerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string/jumbo v0, "com.vkcoffee.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    const-string/jumbo v1, "liked"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->invalidateOptionsMenu()V

    .line 114
    :cond_0
    return-void
.end method

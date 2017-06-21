.class Lcom/vkcoffee/android/AudioPlayerActivity$20;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->deleteFile(Lcom/vkcoffee/android/AudioFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$f:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$updateCover:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Landroid/content/Context;Lcom/vkcoffee/android/AudioFile;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->val$f:Lcom/vkcoffee/android/AudioFile;

    iput-boolean p4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->val$updateCover:Z

    .line 711
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 4

    .prologue
    .line 713
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v2, 0x7f08008b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.AUDIO_FILE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    if-eqz v1, :cond_1

    .line 718
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->resetCurrentFileIDs()V

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 723
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->val$updateCover:Z

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->invalidatePager()V

    .line 726
    :cond_0
    return-void

    .line 720
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->removeCurrentFile()Z

    goto :goto_0
.end method

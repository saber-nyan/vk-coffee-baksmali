.class Lcom/vkcoffee/android/AudioPlayerActivity$18;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->addCurrent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$file:Lcom/vkcoffee/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->val$file:Lcom/vkcoffee/android/AudioFile;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 689
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v1, 0x7f080086

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 690
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$9(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 691
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 677
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v2, 0x7f080088

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.AUDIO_FILE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/AudioPlayerService;->setCurrentFileIDs(II)V

    .line 680
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->val$file:Lcom/vkcoffee/android/AudioFile;

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    .line 681
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    .line 682
    const-string v1, "file"

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->val$file:Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 685
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$9(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 686
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$18;->success(Ljava/lang/Integer;)V

    return-void
.end method

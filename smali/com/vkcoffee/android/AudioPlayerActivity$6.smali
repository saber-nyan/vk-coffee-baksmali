.class Lcom/vkcoffee/android/AudioPlayerActivity$6;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$6;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 281
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$6;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->canUpdateProgress:Z

    .line 278
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 272
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->seek(I)V

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$6;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->canUpdateProgress:Z

    .line 274
    return-void
.end method

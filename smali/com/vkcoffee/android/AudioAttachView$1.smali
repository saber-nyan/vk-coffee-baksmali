.class Lcom/vkcoffee/android/AudioAttachView$1;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioAttachView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioAttachView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView$1;->this$0:Lcom/vkcoffee/android/AudioAttachView;

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
    .line 220
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$1;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AudioAttachView;->access$002(Lcom/vkcoffee/android/AudioAttachView;Z)Z

    .line 214
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 207
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->seek(I)V

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$1;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AudioAttachView;->access$002(Lcom/vkcoffee/android/AudioAttachView;Z)Z

    .line 209
    return-void
.end method

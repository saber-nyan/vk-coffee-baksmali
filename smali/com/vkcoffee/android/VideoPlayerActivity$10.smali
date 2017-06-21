.class Lcom/vkcoffee/android/VideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 233
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const v7, 0xea60

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1600(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x36ee80

    div-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    div-int v3, p2, v7

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    div-int/lit16 v3, p2, 0x3e8

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1600(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "%d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    div-int v3, p2, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    div-int/lit16 v3, p2, 0x3e8

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1702(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1800(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 247
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->seek(I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1702(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$10;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 256
    return-void
.end method

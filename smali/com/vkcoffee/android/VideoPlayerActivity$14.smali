.class Lcom/vkcoffee/android/VideoPlayerActivity$14;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onPlayerReady(II)V
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
    .line 360
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 365
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VIDEO SIZE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2200(Lcom/vkcoffee/android/VideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2300(Lcom/vkcoffee/android/VideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2200(Lcom/vkcoffee/android/VideoPlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2300(Lcom/vkcoffee/android/VideoPlayerActivity;)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2100(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 368
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2500(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->play()V

    .line 372
    const-string/jumbo v0, "video_play"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "video_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "quality"

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2700(Lcom/vkcoffee/android/VideoPlayerActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "position"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2600(Lcom/vkcoffee/android/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1100(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0, v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$500(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V

    .line 375
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 376
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$14;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0, v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1002(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 377
    return-void
.end method

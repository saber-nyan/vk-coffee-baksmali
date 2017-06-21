.class Lcom/vk/attachpicker/screen/TrimScreen$1;
.super Ljava/lang/Object;
.source "TrimScreen.java"

# interfaces
.implements Lcom/vk/attachpicker/videotrim/VideoTimelineView$VideoTimelineViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/TrimScreen;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/TrimScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftProgressChanged(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 128
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$200(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$100(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$302(Lcom/vk/attachpicker/screen/TrimScreen;F)F

    .line 134
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 136
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$400(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    .line 144
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V

    .line 149
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$800(Lcom/vk/attachpicker/screen/TrimScreen;)V

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    .line 147
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V

    goto :goto_2
.end method

.method public onRightProgressChanged(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 154
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$200(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$100(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$302(Lcom/vk/attachpicker/screen/TrimScreen;F)F

    .line 160
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 162
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$400(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    .line 170
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V

    .line 175
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$800(Lcom/vk/attachpicker/screen/TrimScreen;)V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getProgress()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    .line 173
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V

    goto :goto_2
.end method

.method public onSeekBarDrag(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 180
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result p1

    .line 182
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    .line 187
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    if-nez v1, :cond_2

    .line 198
    :goto_1
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result p1

    .line 185
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$302(Lcom/vk/attachpicker/screen/TrimScreen;F)F

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$1;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.class Lcom/vkcoffee/android/VideoPlayerActivity$19;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->updateTextureViewScale()V
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
    .line 485
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 489
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v2, v4

    .line 490
    .local v0, "sratio":F
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 491
    .local v1, "vratio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3102(Lcom/vkcoffee/android/VideoPlayerActivity;F)F

    .line 493
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3202(Lcom/vkcoffee/android/VideoPlayerActivity;F)F

    .line 498
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v4

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3200(Lcom/vkcoffee/android/VideoPlayerActivity;)F

    move-result v2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 499
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v4

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3200(Lcom/vkcoffee/android/VideoPlayerActivity;)F

    move-result v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/TextureView;->setScaleY(F)V

    .line 500
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3100(Lcom/vkcoffee/android/VideoPlayerActivity;)F

    move-result v2

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3200(Lcom/vkcoffee/android/VideoPlayerActivity;)F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    return v3

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3102(Lcom/vkcoffee/android/VideoPlayerActivity;F)F

    .line 496
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3000(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v5}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2400(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3202(Lcom/vkcoffee/android/VideoPlayerActivity;F)F

    goto/16 :goto_0

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3100(Lcom/vkcoffee/android/VideoPlayerActivity;)F

    move-result v2

    goto :goto_1

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$19;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3100(Lcom/vkcoffee/android/VideoPlayerActivity;)F

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    .line 500
    goto :goto_3
.end method

.class Lcom/vk/attachpicker/crop/RectCropOverlayView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RectCropOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/RectCropOverlayView;->setLinesAndTransparentOverlayVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/crop/RectCropOverlayView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/RectCropOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/crop/RectCropOverlayView;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView$1;->this$0:Lcom/vk/attachpicker/crop/RectCropOverlayView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView$1;->this$0:Lcom/vk/attachpicker/crop/RectCropOverlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->access$002(Lcom/vk/attachpicker/crop/RectCropOverlayView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 502
    return-void
.end method

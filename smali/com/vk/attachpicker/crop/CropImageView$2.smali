.class Lcom/vk/attachpicker/crop/CropImageView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropImageView;->dropToCenterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/crop/CropImageView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/crop/CropImageView;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView$2;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/crop/CropImageView$2;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 277
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$2;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$100(Lcom/vk/attachpicker/crop/CropImageView;)Lcom/vk/attachpicker/crop/CropController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropController;->springback(Z)V

    .line 282
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$2;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 283
    return-void
.end method

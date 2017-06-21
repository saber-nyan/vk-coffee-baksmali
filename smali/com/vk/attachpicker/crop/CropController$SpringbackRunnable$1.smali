.class Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;-><init>(Lcom/vk/attachpicker/crop/CropController;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

.field final synthetic val$this$0:Lcom/vk/attachpicker/crop/CropController;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;Lcom/vk/attachpicker/crop/CropController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iput-object p2, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;->val$this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 311
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 316
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable$1;->this$1:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->this$0:Lcom/vk/attachpicker/crop/CropController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropController;->onAnimationEnd()V

    .line 317
    return-void
.end method

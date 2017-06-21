.class Lcom/vk/attachpicker/screen/CropScreen$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/CropScreen;->hideResetButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/CropScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/CropScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$5;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$5;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$900(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$5;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$802(Lcom/vk/attachpicker/screen/CropScreen;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 413
    return-void
.end method

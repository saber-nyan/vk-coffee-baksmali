.class Lcom/vk/attachpicker/screen/CropScreen$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/CropScreen$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/screen/CropScreen$2;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/CropScreen$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/screen/CropScreen$2;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$2$1;->this$1:Lcom/vk/attachpicker/screen/CropScreen$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$2$1;->this$1:Lcom/vk/attachpicker/screen/CropScreen$2;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$400(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$2$1;->this$1:Lcom/vk/attachpicker/screen/CropScreen$2;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/CropScreen$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 266
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$2$1;->this$1:Lcom/vk/attachpicker/screen/CropScreen$2;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->setControlsEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$2$1;->this$1:Lcom/vk/attachpicker/screen/CropScreen$2;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 268
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$2$1;->this$1:Lcom/vk/attachpicker/screen/CropScreen$2;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/CropScreen$2;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$500(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    return-void
.end method

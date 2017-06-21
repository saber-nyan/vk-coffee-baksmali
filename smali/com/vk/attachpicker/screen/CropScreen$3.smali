.class Lcom/vk/attachpicker/screen/CropScreen$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/CropScreen;->animateOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/CropScreen;

.field final synthetic val$cropRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/CropScreen;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->val$cropRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->setControlsEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 306
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$601(Lcom/vk/attachpicker/screen/CropScreen;)V

    .line 307
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$700(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen$3;->val$cropRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen$Delegate;->startCropCloseAnimation(Landroid/graphics/RectF;)V

    .line 308
    return-void
.end method

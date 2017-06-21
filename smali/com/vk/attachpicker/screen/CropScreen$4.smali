.class Lcom/vk/attachpicker/screen/CropScreen$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/CropScreen;->showResetButton(Z)V
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
    .line 385
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$4;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$4;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$802(Lcom/vk/attachpicker/screen/CropScreen;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 389
    return-void
.end method

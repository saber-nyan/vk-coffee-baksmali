.class Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$1;
.super Ljava/lang/Object;
.source "ViewerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$1;->this$3:Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$1;->this$3:Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;->this$2:Lcom/vk/attachpicker/screen/ViewerScreen$6$1;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1;->this$1:Lcom/vk/attachpicker/screen/ViewerScreen$6;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->val$object:Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->containerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    return-void
.end method

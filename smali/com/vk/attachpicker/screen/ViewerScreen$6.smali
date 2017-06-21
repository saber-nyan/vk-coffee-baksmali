.class Lcom/vk/attachpicker/screen/ViewerScreen$6;
.super Ljava/lang/Object;
.source "ViewerScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->animateIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

.field final synthetic val$object:Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->val$object:Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 405
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$700(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 408
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-virtual {v0, v4}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    .line 409
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$600(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$800(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 410
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$500(Lcom/vk/attachpicker/screen/ViewerScreen;Z)V

    .line 413
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$900(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/VkViewPager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkViewPager;->setVisibility(I)V

    .line 415
    invoke-static {}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/screen/ViewerScreen$6$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/ViewerScreen$6$1;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen$6;)V

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    return v4
.end method

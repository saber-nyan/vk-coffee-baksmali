.class Lcom/vk/attachpicker/screen/ViewerScreen$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->animateOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

.field final synthetic val$ppo:Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->val$ppo:Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$8;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 718
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$1902(Lcom/vk/attachpicker/screen/ViewerScreen;F)F

    .line 704
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$900(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/VkViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkViewPager;->setTranslationY(F)V

    .line 705
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$900(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/VkViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleX(F)V

    .line 706
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$900(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/VkViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/VkViewPager;->setScaleY(F)V

    .line 707
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->val$ppo:Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$2000(Lcom/vk/attachpicker/screen/ViewerScreen;Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;)V

    .line 710
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$600(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$800(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 711
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    .line 712
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$8;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/screen/ViewerScreen;->setIsVisible(Z)V

    .line 713
    return-void
.end method

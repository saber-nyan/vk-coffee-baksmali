.class Lcom/vk/attachpicker/screen/ViewerScreen$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->animateViewPagerToDefaultPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$12;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$12;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$1902(Lcom/vk/attachpicker/screen/ViewerScreen;F)F

    .line 908
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$12;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$600(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$12;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$800(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 909
    return-void
.end method

.class Lcom/vk/attachpicker/screen/ViewerScreen$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->closeImageViewer()V
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
    .line 922
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$13;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 931
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 932
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$13;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 933
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 925
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 926
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$13;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$2200(Lcom/vk/attachpicker/screen/ViewerScreen;)V

    .line 927
    return-void
.end method

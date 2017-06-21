.class Lcom/vk/attachpicker/screen/ViewerScreen$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->openEditorAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$4;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$4;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$4;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 345
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$4;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->setAnimationInProgress(Z)V

    .line 346
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$4;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$500(Lcom/vk/attachpicker/screen/ViewerScreen;Z)V

    .line 347
    return-void
.end method

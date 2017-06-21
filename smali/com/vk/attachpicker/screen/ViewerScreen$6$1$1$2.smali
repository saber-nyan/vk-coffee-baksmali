.class Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$2;
.super Ljava/lang/Object;
.source "ViewerScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
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
    .line 503
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$2;->this$3:Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$2;->this$3:Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;->this$2:Lcom/vk/attachpicker/screen/ViewerScreen$6$1;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1;->this$1:Lcom/vk/attachpicker/screen/ViewerScreen$6;

    iget-object v0, v0, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1$2;->this$3:Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/ViewerScreen$6$1$1;->this$2:Lcom/vk/attachpicker/screen/ViewerScreen$6$1;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/ViewerScreen$6$1;->this$1:Lcom/vk/attachpicker/screen/ViewerScreen$6;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/ViewerScreen$6;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$1800(Lcom/vk/attachpicker/screen/ViewerScreen;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$100(Lcom/vk/attachpicker/screen/ViewerScreen;IZ)V

    .line 507
    return-void
.end method

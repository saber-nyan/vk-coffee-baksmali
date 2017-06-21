.class Lcom/vk/attachpicker/screen/TrimScreen$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrimScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/TrimScreen;->closeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/TrimScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/vk/attachpicker/screen/TrimScreen$3;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationEnd$158()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen$3;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/TrimScreen;->access$1101(Lcom/vk/attachpicker/screen/TrimScreen;)V

    .line 342
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen$3;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/TrimScreen;->access$1200(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen$3;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/TrimScreen;->access$1200(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/screen/TrimScreen$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/vk/attachpicker/screen/TrimScreen$Delegate;->startEditorCloseAnimation()V

    .line 345
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 340
    invoke-static {p0}, Lcom/vk/attachpicker/screen/TrimScreen$3$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen$3;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 347
    return-void
.end method

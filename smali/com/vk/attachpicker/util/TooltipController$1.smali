.class Lcom/vk/attachpicker/util/TooltipController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/util/TooltipController;->lambda$new$137()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/util/TooltipController;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/util/TooltipController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/util/TooltipController;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vk/attachpicker/util/TooltipController$1;->this$0:Lcom/vk/attachpicker/util/TooltipController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController$1;->this$0:Lcom/vk/attachpicker/util/TooltipController;

    invoke-static {v0}, Lcom/vk/attachpicker/util/TooltipController;->access$000(Lcom/vk/attachpicker/util/TooltipController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method

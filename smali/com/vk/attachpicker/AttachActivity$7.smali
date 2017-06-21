.class Lcom/vk/attachpicker/AttachActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AttachActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/AttachActivity;->hideCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$7;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$7;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$1900(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    return-void
.end method

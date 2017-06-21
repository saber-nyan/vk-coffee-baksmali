.class Lcom/vk/attachpicker/GraffitiActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GraffitiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/GraffitiActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/GraffitiActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/GraffitiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/GraffitiActivity;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/vk/attachpicker/GraffitiActivity$2;->this$0:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vk/attachpicker/GraffitiActivity$2;->this$0:Lcom/vk/attachpicker/GraffitiActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/GraffitiActivity;->access$100(Lcom/vk/attachpicker/GraffitiActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    return-void
.end method

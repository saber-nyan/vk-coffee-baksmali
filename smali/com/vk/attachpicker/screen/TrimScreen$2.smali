.class Lcom/vk/attachpicker/screen/TrimScreen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrimScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/TrimScreen;->openAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/TrimScreen;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/TrimScreen;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/vk/attachpicker/screen/TrimScreen$2;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/TrimScreen$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen$2;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/TrimScreen;->access$900(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/TrimScreen$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 291
    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen$2;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$1000(Lcom/vk/attachpicker/screen/TrimScreen;Z)V

    .line 292
    return-void
.end method

.class Lcom/vk/attachpicker/screen/EditorScreen$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelCloseAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2500(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/VkSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2400(Lcom/vk/attachpicker/screen/EditorScreen;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar;->setValue(F)V

    .line 1272
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$000(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    .line 1273
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$16;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 1274
    return-void
.end method

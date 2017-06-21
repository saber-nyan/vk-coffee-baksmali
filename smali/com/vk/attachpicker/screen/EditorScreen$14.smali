.class Lcom/vk/attachpicker/screen/EditorScreen$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelOpenAnimation(Landroid/view/View;[Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$runAfter:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;[Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->val$runAfter:[Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$000(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    .line 1217
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->val$runAfter:[Ljava/lang/Runnable;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1218
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1220
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/util/OrientationLocker;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$14;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/OrientationLocker;->unlockOrientation(Landroid/app/Activity;)V

    .line 1221
    return-void
.end method

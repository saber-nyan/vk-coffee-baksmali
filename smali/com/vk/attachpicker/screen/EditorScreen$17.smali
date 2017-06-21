.class Lcom/vk/attachpicker/screen/EditorScreen$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->cropOpenAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;

.field final synthetic val$onEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$17;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$17;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$17;->val$onEnd:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/vk/attachpicker/Picker;->run(Ljava/lang/Runnable;)V

    .line 1310
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$17;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$000(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    .line 1311
    return-void
.end method

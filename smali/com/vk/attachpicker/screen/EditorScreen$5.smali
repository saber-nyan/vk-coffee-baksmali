.class Lcom/vk/attachpicker/screen/EditorScreen$5;
.super Ljava/lang/Object;
.source "EditorScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$5;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$5;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$700(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 617
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$5;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$800(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 618
    const/4 v0, 0x0

    return v0
.end method

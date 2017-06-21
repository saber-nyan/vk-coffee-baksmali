.class Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "VkBottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mTargetState:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;Landroid/view/View;I)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetState"    # I

    .prologue
    .line 633
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 635
    iput p3, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->mTargetState:I

    .line 636
    invoke-static {p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$400(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 637
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1200(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 638
    invoke-static {p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1200(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;->onTargetStateChanged(Landroid/view/View;I)V

    .line 640
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    .local p0, "this":Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;, "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1100(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$1100(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->this$0:Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;

    iget v1, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SettleRunnable;->mTargetState:I

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;->access$500(Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;I)V

    goto :goto_0
.end method

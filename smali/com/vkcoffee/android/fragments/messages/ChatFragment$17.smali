.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3013
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "var1"    # Landroid/view/MotionEvent;
    .param p2, "var2"    # Landroid/view/MotionEvent;
    .param p3, "var3"    # F
    .param p4, "var4"    # F

    .prologue
    .line 3015
    const/4 v0, 0x1

    .line 3016
    .local v0, "var5":Z
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 3017
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isShowingTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3018
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->toggleTime()V

    move v1, v0

    .line 3029
    .end local v0    # "var5":Z
    .local v1, "var5":I
    :goto_0
    return v1

    .line 3022
    .end local v1    # "var5":I
    .restart local v0    # "var5":Z
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isShowingTime()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1

    .line 3023
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->toggleTime()V

    move v1, v0

    .line 3024
    .restart local v1    # "var5":I
    goto :goto_0

    .line 3028
    .end local v1    # "var5":I
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 3029
    .restart local v1    # "var5":I
    goto :goto_0
.end method

.class Lcom/vkcoffee/android/TabletDialogActivity$1;
.super Ljava/lang/Object;
.source "TabletDialogActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/TabletDialogActivity;->adjustSize(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevHeight:I

.field final synthetic this$0:Lcom/vkcoffee/android/TabletDialogActivity;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/TabletDialogActivity;Landroid/view/View;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;Landroid/view/Window;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/TabletDialogActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->this$0:Lcom/vkcoffee/android/TabletDialogActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$decorView:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$rect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput-object p5, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->mPrevHeight:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$decorView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 117
    iget v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->mPrevHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->mPrevHeight:I

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->this$0:Lcom/vkcoffee/android/TabletDialogActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/TabletDialogActivity;->access$000(Lcom/vkcoffee/android/TabletDialogActivity;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->this$0:Lcom/vkcoffee/android/TabletDialogActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/TabletDialogActivity;->access$100(Lcom/vkcoffee/android/TabletDialogActivity;)Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->getInsetTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$window:Landroid/view/Window;

    iget-object v1, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$1;->mPrevHeight:I

    .line 123
    return-void
.end method

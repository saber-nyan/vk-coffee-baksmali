.class Lcom/vkcoffee/android/ui/ReorderableListView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReorderableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

.field final synthetic val$mobileView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ReorderableListView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->val$mobileView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v2, -0x1

    .line 407
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$902(Lcom/vkcoffee/android/ui/ReorderableListView;J)J

    .line 408
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$302(Lcom/vkcoffee/android/ui/ReorderableListView;J)J

    .line 409
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$1002(Lcom/vkcoffee/android/ui/ReorderableListView;J)J

    .line 410
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->val$mobileView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->access$402(Lcom/vkcoffee/android/ui/ReorderableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 412
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->invalidate()V

    .line 414
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$4;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ReorderableListView;->setEnabled(Z)V

    .line 403
    return-void
.end method

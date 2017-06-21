.class Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;
.super Ljava/lang/Object;
.source "MultiColumnListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/MultiColumnListView$2;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MultiColumnListView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;->this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;->this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$400(Lcom/vkcoffee/android/ui/MultiColumnListView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;->this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;->this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;->this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;->this$1:Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->postInvalidate()V

    .line 72
    :cond_1
    return-void
.end method

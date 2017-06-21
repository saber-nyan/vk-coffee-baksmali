.class Lcom/vkcoffee/android/ui/MultiColumnListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MultiColumnListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$100(Lcom/vkcoffee/android/ui/MultiColumnListView;II)I

    move-result v0

    .line 84
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$300(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$100(Lcom/vkcoffee/android/ui/MultiColumnListView;II)I

    move-result v0

    .line 97
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$300(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$402(Lcom/vkcoffee/android/ui/MultiColumnListView;I)I

    .line 101
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 104
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 105
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->postInvalidate()V

    .line 111
    :cond_3
    return-void

    .line 102
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$100(Lcom/vkcoffee/android/ui/MultiColumnListView;II)I

    move-result v3

    .line 53
    .local v3, "pos":I
    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$300(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$300(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$400(Lcom/vkcoffee/android/ui/MultiColumnListView;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$402(Lcom/vkcoffee/android/ui/MultiColumnListView;I)I

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->invalidate()V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;->this$0:Lcom/vkcoffee/android/ui/MultiColumnListView;

    new-instance v1, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$2$1;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView$2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Lcom/vkcoffee/android/ui/MultiColumnListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

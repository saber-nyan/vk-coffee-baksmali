.class Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MessageTimeAnchorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;->this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;->this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->access$000(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;->this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->access$100(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x140f0b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;->this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->access$100(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;->this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    invoke-static {}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->access$200()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;->this$0:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->access$100(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    :cond_0
    return-void
.end method

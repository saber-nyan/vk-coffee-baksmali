.class Lcom/vkcoffee/android/ui/PhotoView$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView;->updateViewportSizeDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/PhotoView;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 203
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/PhotoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$002(Lcom/vkcoffee/android/ui/PhotoView;F)F

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$102(Lcom/vkcoffee/android/ui/PhotoView;F)F

    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$100(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$200(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$000(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$300(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0, v5}, Lcom/vkcoffee/android/ui/PhotoView;->access$400(Lcom/vkcoffee/android/ui/PhotoView;Z)V

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$500(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$600(Lcom/vkcoffee/android/ui/PhotoView;F)V

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/PhotoView;->access$700(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$800(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$1000(Lcom/vkcoffee/android/ui/PhotoView;FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$702(Lcom/vkcoffee/android/ui/PhotoView;F)F

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/PhotoView;->access$1100(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$1200(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$1300(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$1000(Lcom/vkcoffee/android/ui/PhotoView;FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$1102(Lcom/vkcoffee/android/ui/PhotoView;F)F

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$000(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$302(Lcom/vkcoffee/android/ui/PhotoView;F)F

    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$100(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$202(Lcom/vkcoffee/android/ui/PhotoView;F)F

    .line 214
    return v5
.end method

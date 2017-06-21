.class Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0xff

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$000(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->start()V

    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$200(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 191
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$400(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$902(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;I)I

    .line 192
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->stop()V

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$400(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$500(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;I)V

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$600(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$700(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$800(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$1;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$900(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1000(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;IZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 162
    return-void
.end method

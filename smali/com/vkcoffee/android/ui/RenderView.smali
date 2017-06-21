.class public abstract Lcom/vkcoffee/android/ui/RenderView;
.super Landroid/view/View;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# instance fields
.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mLayoutRequired:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    .local p0, "this":Lcom/vkcoffee/android/ui/RenderView;, "Lcom/vkcoffee/android/ui/RenderView<TT;>;"
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    .local p0, "this":Lcom/vkcoffee/android/ui/RenderView;, "Lcom/vkcoffee/android/ui/RenderView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    .local p0, "this":Lcom/vkcoffee/android/ui/RenderView;, "Lcom/vkcoffee/android/ui/RenderView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/vkcoffee/android/ui/RenderView;, "Lcom/vkcoffee/android/ui/RenderView<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract bind(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract layout(I)V
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/vkcoffee/android/ui/RenderView;, "Lcom/vkcoffee/android/ui/RenderView<TT;>;"
    sub-int v0, p4, p2

    .line 40
    .local v0, "width":I
    iget v1, p0, Lcom/vkcoffee/android/ui/RenderView;->mWidth:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 41
    iput v0, p0, Lcom/vkcoffee/android/ui/RenderView;->mWidth:I

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/RenderView;->mLayoutRequired:Z

    .line 44
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/RenderView;->mLayoutRequired:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RenderView;->mData:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 45
    iget v1, p0, Lcom/vkcoffee/android/ui/RenderView;->mWidth:I

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/RenderView;->layout(I)V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/RenderView;->mLayoutRequired:Z

    .line 48
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/vkcoffee/android/ui/RenderView;, "Lcom/vkcoffee/android/ui/RenderView<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/RenderView;->mData:Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RenderView;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RenderView;->bind(Ljava/lang/Object;)V

    .line 53
    iget v0, p0, Lcom/vkcoffee/android/ui/RenderView;->mWidth:I

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lcom/vkcoffee/android/ui/RenderView;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RenderView;->layout(I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RenderView;->mLayoutRequired:Z

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RenderView;->invalidate()V

    .line 60
    return-object p0

    .line 57
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RenderView;->mLayoutRequired:Z

    goto :goto_0
.end method

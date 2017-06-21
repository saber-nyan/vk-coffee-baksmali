.class public abstract Lcom/vkcoffee/android/BindableViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "BindableViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 24
    .local p0, "this":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    .local p0, "this":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<TT;>;"
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 20
    .local p0, "this":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<TT;>;"
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    return-void
.end method


# virtual methods
.method public $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/BindableViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final bind(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/vkcoffee/android/BindableViewHolder;->item:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/BindableViewHolder;->onBind(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/BindableViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onBind(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

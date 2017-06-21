.class public abstract Lcom/vkcoffee/android/ui/holder/commons/GridHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GridHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "H:",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;>",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<[TT;>;"
    }
.end annotation


# instance fields
.field private holders:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "columns"    # I

    .prologue
    .line 15
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/GridHolder;, "Lcom/vkcoffee/android/ui/holder/commons/GridHolder<TT;TH;>;"
    const v3, 0x7f0300cd

    invoke-direct {p0, v3, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vkcoffee/android/ui/widget/GridView;

    .line 17
    .local v0, "gridView":Lcom/vkcoffee/android/ui/widget/GridView;
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/widget/GridView;->setColumns(I)V

    .line 19
    new-array v3, p2, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->holders:[Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v1

    .line 22
    .local v1, "h":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "TH;"
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->holders:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 23
    iget-object v3, v1, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/widget/GridView;->addView(Landroid/view/View;)V

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "h":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "TH;"
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/GridHolder;, "Lcom/vkcoffee/android/ui/holder/commons/GridHolder<TT;TH;>;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->bind([Ljava/lang/Object;)V

    return-void
.end method

.method public final bind([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/commons/GridHolder;, "Lcom/vkcoffee/android/ui/holder/commons/GridHolder<TT;TH;>;"
    .local p1, "item":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->holders:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;->holders:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->bind(Ljava/lang/Object;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public abstract createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TH;"
        }
    .end annotation
.end method

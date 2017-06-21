.class public Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "LoaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    const v0, 0x7f03002e

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 18
    return-void
.end method

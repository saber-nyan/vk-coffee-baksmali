.class public Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "RecyclerHolderRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private ref:Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 32
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef<TT;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef<TT;>;"
    .local p1, "item":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;, "TT;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;->ref:Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;

    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;->b(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V

    .line 46
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef<TT;>;"
    check-cast p1, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;->bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;)V

    return-void
.end method

.method protected getRef()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;->ref:Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;

    return-object v0
.end method

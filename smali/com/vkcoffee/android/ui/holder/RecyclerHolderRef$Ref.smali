.class public abstract Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
.super Ljava/lang/Object;
.source "RecyclerHolderRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Ref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method b(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref<TT;>;"
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;, "TT;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;->weakReference:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;->bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V

    .line 20
    return-void
.end method

.method protected abstract bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V
    .param p1    # Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;->weakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    goto :goto_0
.end method

.class public Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "LoadMoreHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;",
        ">;"
    }
.end annotation


# instance fields
.field private final loadMoreBtn:Landroid/view/View;

.field private final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 63
    const v0, 0x7f100297

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->loadMoreBtn:Landroid/view/View;

    .line 64
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->loadMoreBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .prologue
    .line 69
    invoke-static {p1, p0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->access$200(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)V

    .line 70
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V

    return-void
.end method

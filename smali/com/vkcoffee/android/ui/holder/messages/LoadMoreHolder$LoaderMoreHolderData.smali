.class public Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;
.super Ljava/lang/Object;
.source "LoadMoreHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderMoreHolderData"
.end annotation


# instance fields
.field private loadMoreBtnVisibility:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private progressBarVisibility:I

.field reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->reference:Ljava/lang/ref/WeakReference;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->loadMoreBtnVisibility:I

    .line 20
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->progressBarVisibility:I

    .line 21
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->onBindingHolder(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)V

    return-void
.end method

.method private onBindingHolder(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->reference:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->syncState()V

    .line 26
    return-void
.end method

.method private syncState()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->reference:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 45
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->access$000(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->loadMoreBtnVisibility:I

    if-eq v1, v2, :cond_0

    .line 47
    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->access$000(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->loadMoreBtnVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->access$000(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->access$100(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->progressBarVisibility:I

    if-eq v1, v2, :cond_1

    .line 51
    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;->access$100(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->progressBarVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    :cond_1
    return-void

    .line 44
    .end local v0    # "holder":Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public setOnClickListenerLoadMoreButton(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->onClickListener:Landroid/view/View$OnClickListener;

    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->syncState()V

    .line 41
    return-void
.end method

.method public setVisibilityLoadMoreButton(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->loadMoreBtnVisibility:I

    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->syncState()V

    .line 31
    return-void
.end method

.method public setVisibilityProgressBar(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->progressBarVisibility:I

    .line 35
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->syncState()V

    .line 36
    return-void
.end method

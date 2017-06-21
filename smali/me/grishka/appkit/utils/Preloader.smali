.class public Lme/grishka/appkit/utils/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/utils/Preloader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lme/grishka/appkit/utils/Preloader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/grishka/appkit/utils/Preloader$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private footerError:Landroid/view/View;

.field private footerProgress:Landroid/view/View;

.field private footerVisible:Z

.field private itemsPerPage:I

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected preloading:Z


# direct methods
.method public constructor <init>(Lme/grishka/appkit/utils/Preloader$Callback;I)V
    .locals 1
    .param p2, "itemsPerPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/utils/Preloader$Callback",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    .local p1, "callback":Lme/grishka/appkit/utils/Preloader$Callback;, "Lme/grishka/appkit/utils/Preloader$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->footerVisible:Z

    .line 21
    iput-object p1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    .line 22
    iput p2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    .line 23
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreloadedData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFooterVisible()Z
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->footerVisible:Z

    return v0
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    return v0
.end method

.method public onDataLoaded(Ljava/util/List;Z)V
    .locals 4
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v1}, Lme/grishka/appkit/utils/Preloader$Callback;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v1}, Lme/grishka/appkit/utils/Preloader$Callback;->onClearItems()V

    .line 82
    :cond_0
    iget-boolean v1, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    :goto_0
    iput-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    .line 93
    iget-boolean v1, p0, Lme/grishka/appkit/utils/Preloader;->preloadOnReady:Z

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    .line 95
    iput-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->preloadOnReady:Z

    .line 96
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    iget-object v2, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    mul-int/lit8 v3, v3, 0x2

    invoke-interface {v1, v2, v3}, Lme/grishka/appkit/utils/Preloader$Callback;->loadData(II)V

    .line 98
    :cond_1
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v1}, Lme/grishka/appkit/utils/Preloader$Callback;->updateList()V

    .line 99
    iput-boolean p2, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    .line 101
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->footerProgress:Landroid/view/View;

    if-nez v1, :cond_4

    .line 102
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v0}, Lme/grishka/appkit/utils/Preloader$Callback;->updateList()V

    .line 110
    :goto_1
    return-void

    .line 84
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    if-le v1, v2, :cond_3

    if-eqz p2, :cond_3

    .line 85
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    iget v2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    iget v2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lme/grishka/appkit/utils/Preloader$Callback;->onAppendItems(Ljava/util/List;)V

    .line 87
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    iget v2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v1, p1}, Lme/grishka/appkit/utils/Preloader$Callback;->onAppendItems(Ljava/util/List;)V

    goto :goto_0

    .line 105
    :cond_4
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->footerProgress:Landroid/view/View;

    iget-boolean v2, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->footerVisible:Z

    iget-boolean v1, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    if-eq v0, v1, :cond_5

    .line 107
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    iput-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->footerVisible:Z

    .line 109
    :cond_5
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v0}, Lme/grishka/appkit/utils/Preloader$Callback;->updateList()V

    goto :goto_1

    .line 105
    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v0}, Lme/grishka/appkit/utils/Preloader$Callback;->isDataLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    .line 56
    iput-boolean v2, p0, Lme/grishka/appkit/utils/Preloader;->preloadOnReady:Z

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 58
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lme/grishka/appkit/utils/Preloader$Callback;->onAppendItems(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    invoke-interface {v0}, Lme/grishka/appkit/utils/Preloader$Callback;->updateList()V

    .line 61
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 63
    iput-boolean v2, p0, Lme/grishka/appkit/utils/Preloader;->preloading:Z

    .line 64
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    invoke-interface {v0, v1, v2}, Lme/grishka/appkit/utils/Preloader$Callback;->loadData(II)V

    goto :goto_0

    .line 66
    :cond_3
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->callback:Lme/grishka/appkit/utils/Preloader$Callback;

    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lme/grishka/appkit/utils/Preloader;->itemsPerPage:I

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v1, v2}, Lme/grishka/appkit/utils/Preloader$Callback;->loadData(II)V

    goto :goto_0
.end method

.method public setFooterViews(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "progress"    # Landroid/view/View;
    .param p2, "error"    # Landroid/view/View;

    .prologue
    .line 42
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    iput-object p1, p0, Lme/grishka/appkit/utils/Preloader;->footerProgress:Landroid/view/View;

    .line 43
    iput-object p2, p0, Lme/grishka/appkit/utils/Preloader;->footerError:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->footerProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/utils/Preloader;->footerError:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lme/grishka/appkit/utils/Preloader;->footerProgress:Landroid/view/View;

    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->footerVisible:Z

    iget-boolean v1, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    if-eq v0, v1, :cond_0

    .line 47
    iget-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    iput-boolean v0, p0, Lme/grishka/appkit/utils/Preloader;->footerVisible:Z

    .line 50
    :cond_0
    return-void

    .line 45
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMoreAvailable(Z)V
    .locals 0
    .param p1, "a"    # Z

    .prologue
    .line 34
    .local p0, "this":Lme/grishka/appkit/utils/Preloader;, "Lme/grishka/appkit/utils/Preloader<TT;>;"
    iput-boolean p1, p0, Lme/grishka/appkit/utils/Preloader;->moreAvailable:Z

    .line 35
    return-void
.end method

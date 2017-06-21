.class Lme/grishka/appkit/views/UsableRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "UsableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/views/UsableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/views/UsableRecyclerView;


# direct methods
.method constructor <init>(Lme/grishka/appkit/views/UsableRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 56
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$000(Lme/grishka/appkit/views/UsableRecyclerView;)V

    .line 60
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 61
    .local v0, "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;->onEverythingChanged()V

    goto :goto_0

    .line 62
    .end local v0    # "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 67
    .local v0, "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    invoke-interface {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;->onItemRangeChanged(II)V

    goto :goto_0

    .line 68
    .end local v0    # "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 93
    .local v0, "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    invoke-interface {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;->onItemRangeChanged(II)V

    goto :goto_0

    .line 94
    .end local v0    # "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$000(Lme/grishka/appkit/views/UsableRecyclerView;)V

    .line 73
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 74
    .local v0, "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    invoke-interface {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;->onItemRangeInserted(II)V

    goto :goto_0

    .line 75
    .end local v0    # "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 79
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 80
    .local v0, "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;->onEverythingChanged()V

    goto :goto_0

    .line 81
    .end local v0    # "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$000(Lme/grishka/appkit/views/UsableRecyclerView;)V

    .line 86
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$1;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 87
    .local v0, "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;->onEverythingChanged()V

    goto :goto_0

    .line 88
    .end local v0    # "dso":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;
    :cond_0
    return-void
.end method

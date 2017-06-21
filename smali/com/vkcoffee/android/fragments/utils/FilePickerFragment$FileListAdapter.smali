.class Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "FilePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;-><init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->thumb:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget v0, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->icon:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 388
    check-cast p1, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder",
            "<",
            "Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/BaseDocument;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->bind(Lcom/vkcoffee/android/api/BaseDocument;)V

    .line 402
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder",
            "<",
            "Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$FileListAdapter;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;-><init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Landroid/content/Context;I)V

    return-object v0
.end method

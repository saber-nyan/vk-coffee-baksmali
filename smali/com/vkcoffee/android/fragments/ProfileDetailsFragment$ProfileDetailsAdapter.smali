.class Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;
.implements Lme/grishka/appkit/views/DividerItemDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileDetailsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
        ">;>;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;",
        "Lme/grishka/appkit/views/DividerItemDecoration$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$1;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;-><init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$300(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->bgType:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$200(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$400(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->isHeader:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDrawDividerAfter(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$500(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->bgType:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$600(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->isHeader:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lcom/vkcoffee/android/BindableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/BindableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/BindableViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/BindableViewHolder",
            "<",
            "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "holder":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$100(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/BindableViewHolder;->bind(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/BindableViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/BindableViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/BindableViewHolder",
            "<",
            "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)V

    goto :goto_0
.end method

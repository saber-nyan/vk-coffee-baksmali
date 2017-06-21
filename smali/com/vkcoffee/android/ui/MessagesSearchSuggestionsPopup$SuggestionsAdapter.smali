.class Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "MessagesSearchSuggestionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/UserHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->users:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;-><init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 254
    check-cast p1, Lcom/vkcoffee/android/ui/holder/UserHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/UserHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/UserHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/UserHolder;
    .param p2, "position"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->users:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 270
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 264
    const v0, 0x7f03007d

    invoke-static {p1, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->simple(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$700(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->users:Ljava/util/List;

    .line 259
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->notifyDataSetChanged()V

    .line 260
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

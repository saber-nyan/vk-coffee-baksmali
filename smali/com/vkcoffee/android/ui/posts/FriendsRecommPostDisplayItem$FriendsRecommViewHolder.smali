.class Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "FriendsRecommPostDisplayItem.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsRecommViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;"
    }
.end annotation


# instance fields
.field private button:Landroid/widget/ImageView;

.field private hide:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private parent:Lme/grishka/appkit/views/UsableRecyclerView;

.field private photo:Landroid/widget/ImageView;

.field private progress:Landroid/widget/ProgressBar;

.field private subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    .line 137
    const v0, 0x7f030092

    invoke-direct {p0, p2, v0, p3}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->name:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->subtitle:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->photo:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->button:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->hide:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->progress:Landroid/widget/ProgressBar;

    move-object v0, p3

    .line 144
    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->parent:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->button:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$1;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->hide:Landroid/widget/ImageView;

    invoke-static {p0, p3}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;Landroid/view/ViewGroup;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->photo:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    return-void
.end method

.method synthetic lambda$new$717(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->profiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$1100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replaceOne(Lcom/vkcoffee/android/NewsEntry;)V

    move-object v0, p1

    .line 183
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->access$1500(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 185
    new-instance v1, Lcom/vkcoffee/android/api/friends/FriendsHideSuggestion;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/api/friends/FriendsHideSuggestion;-><init>(I)V

    new-instance v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$2;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder$2;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/friends/FriendsHideSuggestion;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 191
    return-void
.end method

.method public onBind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "description"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-nez v3, :cond_2

    iget-boolean v0, p1, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 199
    .local v0, "added":Z
    :goto_0
    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->button:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->parent:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->parent:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v2, v3, p0, v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->bindViewHolder(Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;I)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "friend_recomm_view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$1100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->isLogged(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    const-string/jumbo v2, "show_user_rec"

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->map(I)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "user_ids"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$1100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "friend_recomm_view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$1100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics;->logEvent(Ljava/lang/String;J)V

    .line 212
    :cond_1
    return-void

    .line 198
    .end local v0    # "added":Z
    :cond_2
    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-lez v3, :cond_3

    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_0

    .line 203
    .restart local v0    # "added":Z
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->button:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->button:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const v2, 0x7f0201f4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_5
    const v2, 0x7f0201f6

    goto :goto_2
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->onBind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 216
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    const-string/jumbo v0, "user_rec"

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->setReferrer(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;->photo:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;

    invoke-direct {v1, p2}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    return-void
.end method

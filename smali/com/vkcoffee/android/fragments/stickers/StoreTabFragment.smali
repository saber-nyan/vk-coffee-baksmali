.class public Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;
.super Landroid/app/Fragment;
.source "StoreTabFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ActivityResulter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$Adapter;
    }
.end annotation


# instance fields
.field private mActionListener:Landroid/view/View$OnClickListener;

.field private mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

.field private mHeaderScrollOffset:I

.field private mInitialPadding:I

.field private mManager:Lcom/vkcoffee/android/data/PurchasesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/PurchasesManager",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mActionListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$2;-><init>(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)Lcom/vkcoffee/android/data/PurchasesManager;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mHeaderScrollOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mHeaderScrollOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mInitialPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mActionListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method downloadPack(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 206
    return-void
.end method

.method getHeaderScrollOffset()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mHeaderScrollOffset:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/data/PurchasesManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mInitialPadding:I

    .line 113
    new-instance v0, Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/data/PurchasesManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    .line 114
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ResulterProvider;

    invoke-interface {v0, p0}, Lcom/vkcoffee/android/ui/ResulterProvider;->registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 120
    new-instance v2, Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v2, "list":Landroid/support/v7/widget/RecyclerView;
    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_0

    new-instance v4, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 122
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 123
    new-instance v4, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$3;-><init>(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 140
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$Adapter;

    invoke-direct {v0, p0, v8}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$1;)V

    .line 142
    .local v0, "adapter":Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$Adapter;
    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_2

    .line 143
    new-instance v4, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    invoke-direct {v4}, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;-><init>()V

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->set(II)Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 145
    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-direct {v1, v0, v5}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 146
    .local v1, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 147
    .local v3, "paddingX":I
    :goto_1
    iget v4, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mInitialPadding:I

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 148
    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setCardsSpacing(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 149
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->clipToPadding(Z)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 150
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setBackgroundColor(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 151
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 157
    .end local v1    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v3    # "paddingX":I
    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 158
    return-object v2

    .line 121
    .end local v0    # "adapter":Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$Adapter;
    :cond_0
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .restart local v0    # "adapter":Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment$Adapter;
    .restart local v1    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_1
    move v3, v5

    .line 146
    goto :goto_1

    .line 153
    .end local v1    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_2
    new-instance v4, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, 0x26000000

    invoke-direct {v4, v8, v6, v7, v5}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    const/high16 v6, 0x42b80000    # 92.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 154
    iget v4, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mInitialPadding:I

    invoke-virtual {v2, v5, v4, v5, v5}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ResulterProvider;

    invoke-interface {v0, p0}, Lcom/vkcoffee/android/ui/ResulterProvider;->unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_RELOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 183
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method

.method setData(Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;)Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;
    .locals 0
    .param p1, "section"    # Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    .line 201
    return-object p0
.end method

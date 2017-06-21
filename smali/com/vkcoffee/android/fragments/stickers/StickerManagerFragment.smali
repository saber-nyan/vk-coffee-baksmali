.class public Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "StickerManagerFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;,
        Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;,
        Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;,
        Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$3$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;",
        "Lcom/vkcoffee/android/fragments/BackListener;"
    }
.end annotation


# instance fields
.field final mActive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field

.field final mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

.field final mInactive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoSize:I

.field mReorderReq:Lcom/vkcoffee/android/api/VKAPIRequest;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 297
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    .line 49
    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0xf000000

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    .line 298
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->setLayout(I)V

    .line 299
    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Lme/grishka/appkit/api/APIRequest;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method private refreshAutoSuggestStickersIfNeeded()V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/Stickers;->reloadAutoSuggestDictionaryIfNeeded(Z)V

    .line 334
    return-void
.end method

.method public static start(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 293
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0056

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v0

    const/high16 v3, 0x44230000    # 652.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 294
    return-void

    .line 293
    :cond_0
    const v0, 0x106000b

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->createAdapter()Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 354
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreGetPurchases;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 369
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method lambda$fail$608(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 443
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->updateList()V

    .line 444
    return-void
.end method

.method listActivePositionToCollectionIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 338
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->loaded:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->dataLoaded()V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->loadData()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->refreshAutoSuggestStickersIfNeeded()V

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 319
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->refreshAutoSuggestStickersIfNeeded()V

    .line 320
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->setHasOptionsMenu(Z)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->setRefreshEnabled(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mPhotoSize:I

    .line 306
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 8

    .prologue
    .line 374
    const/4 v4, 0x0

    .line 375
    .local v4, "z":Z
    sget-boolean v5, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v5, :cond_1

    .line 376
    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 380
    .local v1, "listPadding":I
    :goto_0
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 381
    .local v3, "paddingY":I
    sget-boolean v5, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v5, :cond_2

    .line 382
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 386
    .local v2, "paddingX":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    sub-int v6, v1, v2

    sub-int v7, v1, v2

    invoke-virtual {v5, v6, v7}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    .line 387
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v3, v1, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 388
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    .line 389
    .local v0, "adapter":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->isTablet:Z

    if-nez v5, :cond_0

    .line 390
    const/4 v4, 0x1

    .line 392
    :cond_0
    new-instance v5, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-direct {v5, v0, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    invoke-virtual {v5, v2, v3, v2, v3}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v5

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setCardsSpacing(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v5

    return-object v5

    .line 378
    .end local v0    # "adapter":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
    .end local v1    # "listPadding":I
    .end local v2    # "paddingX":I
    .end local v3    # "paddingY":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "listPadding":I
    goto :goto_0

    .line 384
    .restart local v3    # "paddingY":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "paddingX":I
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 324
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->refreshAutoSuggestStickersIfNeeded()V

    .line 325
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 311
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0802ba

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 313
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 314
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 315
    return-void
.end method

.method sendReorder(II)V
    .locals 6
    .param p1, "prevListPosition"    # I
    .param p2, "listPosition"    # I

    .prologue
    .line 415
    const/4 v0, -0x1

    .line 416
    .local v0, "afterId":I
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v3

    .line 417
    .local v3, "prevPosition":I
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v2

    .line 418
    .local v2, "position":I
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 419
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v1, v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    .line 423
    .local v1, "beforeId":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v0, v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    .line 426
    :cond_0
    new-instance v5, Lcom/vkcoffee/android/api/store/StoreReorderProducts;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v4, v4, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-direct {v5, v4, v1, v0}, Lcom/vkcoffee/android/api/store/StoreReorderProducts;-><init>(III)V

    new-instance v4, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;

    invoke-direct {v4, p0, p0, v2, v3}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$3;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/app/Fragment;II)V

    invoke-virtual {v5, v4}, Lcom/vkcoffee/android/api/store/StoreReorderProducts;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 439
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 426
    iput-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mReorderReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 440
    return-void

    .line 421
    .end local v1    # "beforeId":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "beforeId":I
    goto :goto_0
.end method

.method setActiveState(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "activate"    # Z

    .prologue
    .line 396
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreSetActive;

    iget v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-direct {v0, v1, p2}, Lcom/vkcoffee/android/api/store/StoreSetActive;-><init>(IZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$2;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StoreSetActive;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 411
    return-void
.end method

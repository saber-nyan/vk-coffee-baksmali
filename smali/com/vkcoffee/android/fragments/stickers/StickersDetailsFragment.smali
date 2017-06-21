.class public Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;
.super Lme/grishka/appkit/fragments/AppKitFragment;
.source "StickersDetailsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ActivityResulter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;,
        Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_DATA:Ljava/lang/String; = "data"


# instance fields
.field mCloseAfterDownload:Z

.field mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field mDots:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;

.field mError:Landroid/view/View;

.field mInfo:Landroid/widget/TextView;

.field mManager:Lcom/vkcoffee/android/data/PurchasesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/PurchasesManager",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field

.field mOkButton:Landroid/view/View;

.field mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

.field mProgress:Landroid/widget/ProgressBar;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mStickerButton:Landroid/widget/TextView;

.field mSubtitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mCloseAfterDownload:Z

    .line 350
    return-void
.end method

.method static synthetic lambda$onClick$610(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static show(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "stickerPackId"    # I
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    new-instance v0, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;

    invoke-direct {v1, p2, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 77
    return-void
.end method

.method public static show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V
    .locals 5
    .param p0, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    const-class v4, Lcom/vkcoffee/android/FragmentDialogActivity;

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>(Ljava/lang/Class;)V

    const/high16 v4, 0x43b40000    # 360.0f

    .line 58
    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    .line 59
    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const/16 v4, 0x11

    .line 60
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const v4, 0x106000b

    .line 61
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    const v4, 0x7f0c0149

    .line 62
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowAnimationResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public static showByStickerId(ILjava/lang/String;Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "stickerId"    # I
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "reloadIfPurchased"    # Z

    .prologue
    .line 80
    new-instance v0, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;

    invoke-direct {v1, p2, p1, p3, p2}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 100
    return-void
.end method


# virtual methods
.method bindData(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 4
    .param p1, "data"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mInfo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mStickerButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mProgress:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mError:Landroid/view/View;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->bindButtons(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;)V

    .line 314
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mCloseAfterDownload:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->downloaded:Z

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :cond_0
    return-void
.end method

.method downloadPack()V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 325
    return-void
.end method

.method synthetic lambda$bindData$612()V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 319
    :cond_0
    return-void
.end method

.method synthetic lambda$onClick$611(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->downloadPack()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mCloseAfterDownload:Z

    .line 275
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->bindData(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 216
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/AppKitFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/data/PurchasesManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->onAttach(Landroid/app/Activity;)V

    .line 138
    check-cast p1, Lcom/vkcoffee/android/ui/ResulterProvider;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1, p0}, Lcom/vkcoffee/android/ui/ResulterProvider;->registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$$Lambda$1;->lambdaFactory$(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->downloadPack()V

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->purchase(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 145
    new-instance v0, Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/data/PurchasesManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mManager:Lcom/vkcoffee/android/data/PurchasesManager;

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    const v0, 0x7f030173

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onDestroyView()V

    .line 239
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mStickerButton:Landroid/widget/TextView;

    .line 240
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mOkButton:Landroid/view/View;

    .line 241
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 242
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mError:Landroid/view/View;

    .line 243
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .line 244
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mTitle:Landroid/widget/TextView;

    .line 245
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mSubtitle:Landroid/widget/TextView;

    .line 246
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mInfo:Landroid/widget/TextView;

    .line 247
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mDots:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;

    .line 248
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ResulterProvider;

    invoke-interface {v0, p0}, Lcom/vkcoffee/android/ui/ResulterProvider;->unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V

    .line 253
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onDetach()V

    .line 254
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onPause()V

    .line 295
    if-nez p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onResume()V

    .line 298
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 286
    int-to-float v1, p1

    add-float v0, v1, p2

    .line 287
    .local v0, "position":F
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/ui/ParallaxDrawable;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/ParallaxDrawable;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/ParallaxDrawable;->setOffset(F)V

    .line 290
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mDots:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;->setSelection(I)V

    .line 282
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onPause()V

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onResume()V

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onResume()V

    .line 222
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 205
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onStart()V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onStop()V

    .line 233
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/AppKitFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    const v1, 0x7f1003c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mStickerButton:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f1003c4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mOkButton:Landroid/view/View;

    .line 158
    const v1, 0x7f1003c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 159
    const v1, 0x7f1003c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mError:Landroid/view/View;

    .line 160
    const v1, 0x7f100117

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .line 161
    const v1, 0x7f1000dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mTitle:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f100169

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mSubtitle:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f100202

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mInfo:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f1003c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mDots:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;

    .line 166
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mStickerButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mError:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    new-instance v2, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    new-instance v3, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;

    invoke-direct {v3, p0, v5}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;)V

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mDots:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$PagerDotsView;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 172
    new-instance v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    .line 173
    .local v0, "pd":Lcom/vkcoffee/android/ui/CircularProgressDrawable;
    const v1, -0xf0f10

    const v2, -0x404041

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 174
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setThickness(F)V

    .line 175
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 176
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 177
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 200
    invoke-virtual {v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerBackgroundURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalBackgroundURL()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v1, v5, v2, v3, v4}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    return-void
.end method

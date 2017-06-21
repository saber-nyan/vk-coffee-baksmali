.class public Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "ShitBlockPostDisplayItem.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private menuClickListener:Landroid/view/View$OnClickListener;

.field public post:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 2
    .param p1, "_post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 200
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 57
    new-instance v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$2;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 201
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->hide(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->report(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->showDebug(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
    .param p1, "x1"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->trackImpression(Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->doHide(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 392
    const v3, 0x7f0300f3

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 393
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f10000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 394
    .local v0, "content":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$6;

    invoke-direct {v3}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$6;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xf

    if-ge v1, v3, :cond_0

    .line 422
    const v3, 0x7f0300f4

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return-object v2
.end method

.method private doHide(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.POST_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "post_id"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 466
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.POST_REPLACED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "entry"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hide(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 428
    new-instance v0, Lcom/vkcoffee/android/api/adsint/AdsintHideAd;

    iget-object v1, p2, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/adsint/AdsintHideAd;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 429
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/adsint/AdsintHideAd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 436
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 437
    return-void
.end method

.method private report(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 440
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0d0000

    new-instance v2, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;

    invoke-direct {v2, p0, p2, p1}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Lcom/vkcoffee/android/attachments/ShitAttachment;Landroid/content/Context;)V

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080435

    .line 455
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 457
    return-void
.end method

.method private showDebug(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 469
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, "wv":Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, v1, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v2, "ads_debug"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/html;charset=utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "Ads Debug"

    .line 472
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800dd

    .line 474
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 476
    return-void
.end method

.method private trackImpression(Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/ShitAttachment;

    .prologue
    .line 355
    const-string/jumbo v1, "ads/impression"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "ad_data_impression"

    iget-object v3, p1, Lcom/vkcoffee/android/attachments/ShitAttachment;->dataImpression:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->flushBuffer()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 356
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->trackAdView(Ljava/lang/String;)V

    .line 362
    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 217
    .local v6, "count":I
    const v19, 0x7f10000d

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 218
    .local v5, "content":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/vkcoffee/android/NewsEntry;->getMaxThumbsWidth()I

    move-result v20

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x7f0a0027

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    :goto_0
    sub-int v18, v20, v19

    .line 219
    .local v18, "width":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f0faa69

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 220
    .local v8, "height":I
    const/4 v13, 0x0

    .line 221
    .local v13, "needCleanScroll":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_7

    .line 222
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 223
    .local v11, "item":Landroid/view/View;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const v19, 0x7f1002b2

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_2

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    if-ge v10, v6, :cond_6

    .line 226
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .line 228
    .local v4, "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    const v19, 0x7f1000dd

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 229
    .local v16, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->userName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 230
    const/4 v13, 0x1

    .line 232
    :cond_0
    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->userName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->genre:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    const-string/jumbo v19, ""

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "genre":Ljava/lang/String;
    const v19, 0x7f100169

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v19, 0x7f100125

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v19, 0x7f100125

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    const/16 v20, -0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    const v19, 0x7f1002b0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    const v19, 0x7f10013e

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->followers:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v19, 0x7f10013f

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    iget-boolean v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->installed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonTextInstalled:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_4
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const v19, 0x7f100156

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    iget v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->rating:F

    move/from16 v19, v0

    const/16 v21, 0x0

    cmpl-float v19, v19, v21

    if-lez v19, :cond_5

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    const v19, 0x7f100156

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/vkcoffee/android/ui/RatingView;

    iget v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->rating:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/vkcoffee/android/ui/RatingView;->setRating(F)V

    .line 242
    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->photo:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-object/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->setViewSize(FFZZ)V

    .line 243
    invoke-virtual {v11, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v19, 0x7f1002a5

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .end local v4    # "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    .end local v7    # "genre":Ljava/lang/String;
    .end local v16    # "textView":Landroid/widget/TextView;
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 218
    .end local v8    # "height":I
    .end local v10    # "i":I
    .end local v11    # "item":Landroid/view/View;
    .end local v13    # "needCleanScroll":Z
    .end local v18    # "width":I
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 224
    .restart local v8    # "height":I
    .restart local v10    # "i":I
    .restart local v11    # "item":Landroid/view/View;
    .restart local v13    # "needCleanScroll":Z
    .restart local v18    # "width":I
    :cond_2
    const/16 v19, 0x4

    goto/16 :goto_2

    .line 233
    .restart local v4    # "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    .restart local v16    # "textView":Landroid/widget/TextView;
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->ageRestriction:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    .line 239
    .restart local v7    # "genre":Ljava/lang/String;
    :cond_4
    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonText:Ljava/lang/String;

    move-object/from16 v20, v0

    goto/16 :goto_4

    .line 240
    :cond_5
    const/16 v19, 0x8

    goto/16 :goto_5

    .line 247
    .end local v4    # "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    .end local v7    # "genre":Ljava/lang/String;
    .end local v16    # "textView":Landroid/widget/TextView;
    :cond_6
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 250
    .end local v11    # "item":Landroid/view/View;
    :cond_7
    if-eqz v13, :cond_8

    .line 251
    const v19, 0x7f1002af

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    .line 252
    .local v9, "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    if-eqz v9, :cond_8

    .line 253
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 256
    .end local v9    # "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    :cond_8
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v20, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$3;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/view/ViewGroup;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 280
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    new-instance v20, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/view/ViewGroup;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 304
    .local v14, "p":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 305
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 306
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_a

    .line 309
    new-instance v12, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$5;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/view/ViewGroup;)V

    .line 330
    .local v12, "layoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {v14, v12}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 331
    invoke-virtual {v14, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 335
    .end local v12    # "layoutChangeListener":Landroid/view/View$OnLayoutChangeListener;
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_d

    .line 336
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move-object/from16 v19, p1

    .line 337
    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 343
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ads_title"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .local v17, "title":Ljava/lang/StringBuilder;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_c

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string/jumbo v20, "age_restriction"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, "restriction":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkcoffee/android/attachments/ShitAttachment;

    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->ageRestriction:Ljava/lang/String;

    .line 347
    :cond_b
    const/16 v19, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .end local v15    # "restriction":Ljava/lang/String;
    :cond_c
    const v19, 0x7f1000dd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkcoffee/android/attachments/ShitAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->trackImpression(Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 352
    return-void

    .line 339
    .end local v17    # "title":Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0027

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0027

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move-object/from16 v19, p1

    .line 340
    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    goto/16 :goto_7
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 4
    .param p1, "image"    # I

    .prologue
    .line 366
    div-int/lit8 v1, p1, 0x2

    .line 367
    .local v1, "idx":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .line 368
    .local v0, "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    rem-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->photo:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->userPhoto:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0xe

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    const v6, 0x7f1002b0

    const v5, 0x7f100146

    .line 373
    div-int/lit8 v1, p1, 0x2

    .line 374
    .local v1, "idx":I
    const v3, 0x7f10000d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 375
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, "item":Landroid/view/View;
    rem-int/lit8 v3, p1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 377
    if-eqz p3, :cond_0

    .line 378
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 389
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xd0d0e

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 383
    :cond_1
    if-eqz p3, :cond_2

    .line 384
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0202b9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

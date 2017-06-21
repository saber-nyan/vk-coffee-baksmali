.class public Lcom/vkcoffee/android/data/PurchasesManager;
.super Ljava/lang/Object;
.source "PurchasesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;,
        Lcom/vkcoffee/android/data/PurchasesManager$Result;,
        Lcom/vkcoffee/android/data/PurchasesManager$Product;,
        Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/vkcoffee/android/data/orm/Product;",
        ":",
        "Lcom/vkcoffee/android/data/PurchasesManager$Product;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0x3

.field public static final PRICES_PAGE_SIZE:I = 0x12

.field private static final REQUEST_BUY_VOTES:I = 0x3ea

.field private static final REQUEST_PAY:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "PurchasesManager"

.field private static final TYPE:Ljava/lang/String; = "inapp"

.field private static mService:Lcom/android/vending/billing/IInAppBillingService;

.field private static mServiceConn:Landroid/content/ServiceConnection;

.field private static mServiceInit:Z

.field private static final mServiceInitMonitor:Ljava/lang/Object;

.field private static sPackage:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFragment:Landroid/app/Fragment;

.field private mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private mOnSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInitMonitor:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInit:Z

    .line 61
    new-instance v0, Lcom/vkcoffee/android/data/PurchasesManager$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PurchasesManager$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/data/PurchasesManager;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 182
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    .line 190
    iput-object p2, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mFragment:Landroid/app/Fragment;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 185
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/data/PurchasesManager;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 186
    return-void
.end method

.method static synthetic access$002(Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 52
    sput-object p0, Lcom/vkcoffee/android/data/PurchasesManager;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInitMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInit:Z

    return p0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/data/PurchasesManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/data/PurchasesManager;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mOnSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;
    .param p1, "x1"    # Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mOnSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/data/PurchasesManager;)Lcom/vkcoffee/android/data/orm/Product;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/orm/Product;)Lcom/vkcoffee/android/data/orm/Product;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;
    .param p1, "x1"    # Lcom/vkcoffee/android/data/orm/Product;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/data/PurchasesManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/PurchasesManager;->showNotEnoughVotesDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/PurchasesManager;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/app/ProgressDialog;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/vkcoffee/android/data/PurchasesManager;->consumePurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public static canUseInApps()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->isPlayStoreInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->hasGoogleAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private consumePurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 10
    .param p1, "service"    # Lcom/android/vending/billing/IInAppBillingService;
    .param p2, "id"    # I
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "productId"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "progress"    # Landroid/app/ProgressDialog;

    .prologue
    .line 353
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    new-instance v0, Lcom/vkcoffee/android/api/store/StorePurchase;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;

    iget-object v5, v1, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    move v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/store/StorePurchase;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/data/PurchasesManager$4;

    iget-object v3, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/data/PurchasesManager$4;-><init>(Lcom/vkcoffee/android/data/PurchasesManager;Landroid/content/Context;Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 354
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StorePurchase;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    .line 388
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 389
    return-void
.end method

.method private finishPurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "service"    # Lcom/android/vending/billing/IInAppBillingService;
    .param p2, "id"    # I
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "productId"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;

    .prologue
    .line 345
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 346
    .local v6, "progress":Landroid/app/ProgressDialog;
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 348
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 349
    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/data/PurchasesManager;->consumePurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 350
    return-void
.end method

.method public static getGooglePlayPrices(Ljava/util/Map;Lcom/vkcoffee/android/functions/F2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Product:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TProduct;>;",
            "Lcom/vkcoffee/android/functions/F2",
            "<",
            "Ljava/lang/Void;",
            "TProduct;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TProduct;>;"
    .local p1, "setter":Lcom/vkcoffee/android/functions/F2;, "Lcom/vkcoffee/android/functions/F2<Ljava/lang/Void;TProduct;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/lit8 v6, v5, 0x12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x12

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    add-int v3, v6, v5

    .line 121
    .local v3, "iterations":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 122
    mul-int/lit8 v4, v1, 0x12

    .line 123
    .local v4, "start":I
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .local v0, "end":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v5, p1}, Lcom/vkcoffee/android/data/PurchasesManager;->getGooglePlayPrices(Ljava/util/Map;Ljava/util/ArrayList;Lcom/vkcoffee/android/functions/F2;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "iterations":I
    .end local v4    # "start":I
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 127
    .restart local v1    # "i":I
    .restart local v3    # "iterations":I
    :cond_1
    return-void
.end method

.method private static getGooglePlayPrices(Ljava/util/Map;Ljava/util/ArrayList;Lcom/vkcoffee/android/functions/F2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Product:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TProduct;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vkcoffee/android/functions/F2",
            "<",
            "Ljava/lang/Void;",
            "TProduct;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TProduct;>;"
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "setter":Lcom/vkcoffee/android/functions/F2;, "Lcom/vkcoffee/android/functions/F2<Ljava/lang/Void;TProduct;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "ITEM_ID_LIST"

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 132
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getGooglePlayService()Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v3

    .line 135
    .local v3, "gps":Lcom/android/vending/billing/IInAppBillingService;
    if-eqz v3, :cond_1

    const/4 v9, 0x3

    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getPackage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "inapp"

    invoke-interface {v3, v9, v10, v11}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 136
    const/4 v9, 0x3

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getPackage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "inapp"

    invoke-interface {v3, v9, v10, v11, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, "details":Landroid/os/Bundle;
    const-string/jumbo v9, "RESPONSE_CODE"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 139
    .local v5, "responseCode":I
    if-nez v5, :cond_1

    .line 140
    const-string/jumbo v9, "DETAILS_LIST"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 141
    .local v6, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 142
    .local v8, "thisResponse":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "object":Lorg/json/JSONObject;
    const-string/jumbo v10, "productId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "sku":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 146
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "price"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lcom/vkcoffee/android/functions/F2;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v1    # "details":Landroid/os/Bundle;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "responseCode":I
    .end local v6    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "sku":Ljava/lang/String;
    .end local v8    # "thisResponse":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "VKApplication"

    const-string/jumbo v10, "#getGooglePlayPrices(): Error loading prices from Google Play"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static getGooglePlayService()Lcom/android/vending/billing/IInAppBillingService;
    .locals 3

    .prologue
    .line 157
    sget-boolean v1, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInit:Z

    if-eqz v1, :cond_1

    .line 158
    sget-object v2, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInitMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 161
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInitMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/data/PurchasesManager;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v1
.end method

.method public static getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/vkcoffee/android/data/PurchasesManager;->sPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static hasGoogleAccount()Z
    .locals 3

    .prologue
    .line 102
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 103
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 104
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    sput-boolean v6, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceInit:Z

    .line 86
    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    sget-object v2, Lcom/vkcoffee/android/data/PurchasesManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/data/PurchasesManager;->sPackage:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static isPlayStoreInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.android.vending"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processRestore(Lcom/android/vending/billing/IInAppBillingService;)V
    .locals 16
    .param p1, "service"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 320
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    new-instance v7, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 321
    .local v7, "progress":Landroid/app/ProgressDialog;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 323
    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 326
    const/4 v1, 0x3

    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "inapp"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v14, v15}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 327
    .local v12, "info":Landroid/os/Bundle;
    const-string/jumbo v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 329
    .local v9, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 330
    .local v8, "data":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "developerPayload"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "dp":Ljava/lang/String;
    const-string/jumbo v1, "purchaseToken"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "token":Ljava/lang/String;
    const-string/jumbo v1, "orderId"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "orderId":Ljava/lang/String;
    const-string/jumbo v1, "productId"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "productId":Ljava/lang/String;
    const-string/jumbo v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "id":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 336
    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/data/PurchasesManager;->consumePurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v3    # "id":I
    .end local v4    # "orderId":Ljava/lang/String;
    .end local v5    # "productId":Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    .end local v8    # "data":Ljava/lang/String;
    .end local v9    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "dp":Ljava/lang/String;
    .end local v12    # "info":Landroid/os/Bundle;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v11

    .line 338
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PurchasesManager"

    const-string/jumbo v2, "Error during restore inapp #processRestore"

    invoke-static {v1, v2, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08016c

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 340
    invoke-static {v7}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private purchaseFreeItem(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
    .locals 6
    .param p1    # Lcom/vkcoffee/android/data/orm/Product;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    .local p1, "product":Lcom/vkcoffee/android/data/orm/Product;, "TD;"
    .local p2, "onSuccess":Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;, "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener<TD;>;"
    const/4 v2, 0x0

    .line 235
    new-instance v0, Lcom/vkcoffee/android/api/store/StorePurchase;

    iget v1, p1, Lcom/vkcoffee/android/data/orm/Product;->id:I

    iget-object v5, p1, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/store/StorePurchase;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/data/PurchasesManager$2;

    iget-object v2, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkcoffee/android/data/PurchasesManager$2;-><init>(Lcom/vkcoffee/android/data/PurchasesManager;Landroid/content/Context;Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StorePurchase;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    .line 256
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    .line 257
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 258
    return-void
.end method

.method private purchaseFromBalance(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
    .locals 4
    .param p1    # Lcom/vkcoffee/android/data/orm/Product;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    .local p1, "product":Lcom/vkcoffee/android/data/orm/Product;, "TD;"
    .local p2, "onSuccess":Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;, "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener<TD;>;"
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreBuyProduct;

    iget v1, p1, Lcom/vkcoffee/android/data/orm/Product;->id:I

    iget-object v2, p1, Lcom/vkcoffee/android/data/orm/Product;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/vkcoffee/android/data/orm/Product;->referrer:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/data/PurchasesManager$3;

    iget-object v2, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkcoffee/android/data/PurchasesManager$3;-><init>(Lcom/vkcoffee/android/data/PurchasesManager;Landroid/content/Context;Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    .line 262
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StoreBuyProduct;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    .line 291
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    .line 292
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 293
    return-void
.end method

.method private purchaseInapp(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
    .locals 13
    .param p1    # Lcom/vkcoffee/android/data/orm/Product;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    .local p1, "product":Lcom/vkcoffee/android/data/orm/Product;, "TD;"
    .local p2, "onSuccess":Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;, "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener<TD;>;"
    const/4 v12, 0x0

    .line 297
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getGooglePlayService()Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    .line 298
    .local v1, "service":Lcom/android/vending/billing/IInAppBillingService;
    const/4 v2, 0x3

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "inapp"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 299
    const/4 v2, 0x3

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getPackage()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/data/PurchasesManager$Product;

    move-object v4, v0

    invoke-interface {v4}, Lcom/vkcoffee/android/data/PurchasesManager$Product;->getMerchantProductId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inapp"

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/Product;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 300
    .local v9, "buyIntent":Landroid/os/Bundle;
    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 302
    .local v10, "code":I
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;

    .line 303
    iput-object p2, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mOnSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    .line 305
    const/4 v2, 0x7

    if-ne v10, v2, :cond_0

    .line 306
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/data/PurchasesManager;->processRestore(Lcom/android/vending/billing/IInAppBillingService;)V

    .line 317
    .end local v1    # "service":Lcom/android/vending/billing/IInAppBillingService;
    .end local v9    # "buyIntent":Landroid/os/Bundle;
    .end local v10    # "code":I
    :goto_0
    return-void

    .line 308
    .restart local v1    # "service":Lcom/android/vending/billing/IInAppBillingService;
    .restart local v9    # "buyIntent":Landroid/os/Bundle;
    .restart local v10    # "code":I
    :cond_0
    const-string/jumbo v2, "BUY_INTENT"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/vkcoffee/android/data/PurchasesManager;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 313
    .end local v1    # "service":Lcom/android/vending/billing/IInAppBillingService;
    .end local v9    # "buyIntent":Landroid/os/Bundle;
    .end local v10    # "code":I
    :catch_0
    move-exception v11

    .line 314
    .local v11, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v2, "PurchasesManager"

    const-string/jumbo v3, "Error starting inapp #purchaseInapp"

    invoke-static {v2, v3, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    iget-object v2, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08016c

    invoke-static {v2, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 311
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v1    # "service":Lcom/android/vending/billing/IInAppBillingService;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/vkcoffee/android/data/PurchasesManager$PayNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 313
    .end local v1    # "service":Lcom/android/vending/billing/IInAppBillingService;
    :catch_1
    move-exception v11

    goto :goto_1

    :catch_2
    move-exception v11

    goto :goto_1
.end method

.method private showNotEnoughVotesDialog(I)V
    .locals 3
    .param p1, "price"    # I

    .prologue
    .line 392
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 393
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801f3

    .line 394
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/data/PurchasesManager$5;

    invoke-direct {v2, p0, p1}, Lcom/vkcoffee/android/data/PurchasesManager$5;-><init>(Lcom/vkcoffee/android/data/PurchasesManager;I)V

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 404
    return-void
.end method

.method private startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 407
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 416
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    const/4 v10, 0x0

    .line 209
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 210
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 211
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p3, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 212
    .local v9, "responseCode":I
    const-string/jumbo v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "purchaseData":Ljava/lang/String;
    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080165

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    .end local v8    # "purchaseData":Ljava/lang/String;
    .end local v9    # "responseCode":I
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v8    # "purchaseData":Ljava/lang/String;
    .restart local v9    # "responseCode":I
    :cond_1
    if-nez v9, :cond_0

    .line 218
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v7, "jo":Lorg/json/JSONObject;
    const-string/jumbo v0, "orderId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "orderId":Ljava/lang/String;
    const-string/jumbo v0, "productId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "productId":Ljava/lang/String;
    const-string/jumbo v0, "purchaseToken"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "token":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;

    iget v2, v0, Lcom/vkcoffee/android/data/orm/Product;->id:I

    .line 223
    .local v2, "id":I
    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getGooglePlayService()Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/data/PurchasesManager;->finishPurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v2    # "id":I
    .end local v3    # "orderId":Ljava/lang/String;
    .end local v4    # "productId":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    .end local v7    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 225
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PurchasesManager"

    const-string/jumbo v1, "Error during processing #onActivityResult"

    invoke-static {v0, v1, v6}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "purchaseData":Ljava/lang/String;
    .end local v9    # "responseCode":I
    :cond_2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mLastPurchase:Lcom/vkcoffee/android/data/orm/Product;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager;->mOnSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager;->purchaseFromBalance(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    goto :goto_0
.end method

.method public purchase(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
    .locals 2
    .param p1    # Lcom/vkcoffee/android/data/orm/Product;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<TD;>;"
    .local p1, "item":Lcom/vkcoffee/android/data/orm/Product;, "TD;"
    .local p2, "onSuccess":Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;, "Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener<TD;>;"
    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/data/PurchasesManager$Product;

    invoke-interface {v0}, Lcom/vkcoffee/android/data/PurchasesManager$Product;->isFree()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/data/PurchasesManager;->purchaseFreeItem(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/vkcoffee/android/data/PurchasesManager$Product;

    invoke-interface {v0}, Lcom/vkcoffee/android/data/PurchasesManager$Product;->getPaymentType()Lcom/vkcoffee/android/api/models/PaymentType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v1, Lcom/vkcoffee/android/data/PurchasesManager$6;->$SwitchMap$com$vkontakte$android$api$models$PaymentType:[I

    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/data/PurchasesManager$Product;

    invoke-interface {v0}, Lcom/vkcoffee/android/data/PurchasesManager$Product;->getPaymentType()Lcom/vkcoffee/android/api/models/PaymentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/models/PaymentType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/data/PurchasesManager;->purchaseFromBalance(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/data/PurchasesManager;->purchaseInapp(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/vkcoffee/android/GameCardActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "GameCardActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;
.implements Lcom/vkcoffee/android/ui/ResulterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/GameCardActivity$Adapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_APPLICATIONS:Ljava/lang/String; = "key_applications"

.field private static final KEY_CATALOG_INFO:Ljava/lang/String; = "key_catalog_info"

.field private static final KEY_CURRENT_APPLICATION_INDEX:Ljava/lang/String; = "key_current_application_index"

.field private static final KEY_FROM_NOTIFICATION:Ljava/lang/String; = "key_from_notification"

.field private static final KEY_TITLE:Ljava/lang/String; = "key_title"

.field static lastTime:J


# instance fields
.field private apiApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field private catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

.field private currentIndex:I

.field private headerBlock:Landroid/view/View;

.field private mResulters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ActivityResulter;",
            ">;"
        }
    .end annotation
.end field

.field private openActionMenu:Landroid/view/View;

.field private pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

.field private pageTitle:Landroid/widget/TextView;

.field private slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

.field private title:Ljava/lang/String;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/vkcoffee/android/GameCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/GameCardActivity;->$assertionsDisabled:Z

    .line 350
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkcoffee/android/GameCardActivity;->lastTime:J

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 436
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/GameCardActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/GameCardActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/GameCardActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/GameCardActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/GameCardActivity;->syncGui(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/GameCardActivity;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/GameCardActivity;)Lcom/vkcoffee/android/data/CatalogInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/GameCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/GameCardActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/GameCardActivity;)Lcom/vkcoffee/android/ui/widget/PageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    return-object v0
.end method

.method private doRemoveApp()V
    .locals 3

    .prologue
    .line 252
    new-instance v1, Lcom/vkcoffee/android/api/apps/AppsRemove;

    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkcoffee/android/GameCardActivity;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    iget v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/api/apps/AppsRemove;-><init>(I)V

    new-instance v0, Lcom/vkcoffee/android/GameCardActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/GameCardActivity$4;-><init>(Lcom/vkcoffee/android/GameCardActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/apps/AppsRemove;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 258
    return-void
.end method

.method private getActionBarHeight()I
    .locals 4

    .prologue
    .line 164
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initValues(Landroid/os/Bundle;)I
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string/jumbo v5, "key_current_application_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "index":I
    const-string/jumbo v5, "key_applications"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 107
    .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string/jumbo v5, "key_catalog_info"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/data/CatalogInfo;

    iput-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 108
    const-string/jumbo v5, "key_title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->title:Ljava/lang/String;

    .line 110
    sget-boolean v5, Lcom/vkcoffee/android/GameCardActivity;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 112
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    .line 114
    if-ltz v3, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    move v1, v3

    .line 115
    .local v1, "currentIndex":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 116
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 117
    .local v0, "a":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "a":Lcom/vkcoffee/android/data/ApiApplication;
    .end local v1    # "currentIndex":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    .restart local v1    # "currentIndex":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    if-eqz v5, :cond_4

    .line 121
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget-object v5, v5, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 122
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget-object v6, v6, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_3
    :goto_2
    new-instance v5, Lcom/vkcoffee/android/GameCardActivity$1;

    iget-object v6, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-direct {v5, p0, v6, v7}, Lcom/vkcoffee/android/GameCardActivity$1;-><init>(Lcom/vkcoffee/android/GameCardActivity;Ljava/util/ArrayList;Lcom/vkcoffee/android/data/CatalogInfo;)V

    iput-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    .line 136
    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 137
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/GameCardActivity;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 141
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    invoke-virtual {v5}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->forceLoadNextPage()Z

    .line 144
    :cond_6
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    iget-object v6, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setCountOfPages(I)V

    .line 145
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkcoffee/android/GameCardActivity$Adapter;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/GameCardActivity$Adapter;-><init>(Lcom/vkcoffee/android/GameCardActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 146
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 148
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/GameCardActivity;->syncGui(Ljava/util/ArrayList;)V

    .line 150
    return v1

    .line 123
    :cond_7
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget v5, v5, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    if-lez v5, :cond_3

    .line 124
    iget-object v5, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget v6, v6, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "appId"    # I

    .prologue
    .line 285
    new-instance v0, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/ApiApplication;-><init>()V

    .line 286
    .local v0, "application":Lcom/vkcoffee/android/data/ApiApplication;
    iput p3, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    .line 287
    invoke-static {p0, p1, p2, v0}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/ApiApplication;)V

    .line 288
    return-void
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/ApiApplication;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "app"    # Lcom/vkcoffee/android/data/ApiApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "apiApplications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 297
    return-void
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/CatalogInfo;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "catalogInfo"    # Lcom/vkcoffee/android/data/CatalogInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILcom/vkcoffee/android/data/CatalogInfo;)V

    .line 319
    return-void
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, "applications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    const/4 v5, 0x0

    .line 305
    .local v5, "catalogInfo":Lcom/vkcoffee/android/data/CatalogInfo;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/ApiApplication;

    .line 306
    .local v6, "application":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v1, v6, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    if-eqz v1, :cond_0

    .line 307
    iget-object v5, v6, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .end local v6    # "application":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 311
    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILcom/vkcoffee/android/data/CatalogInfo;)V

    .line 312
    return-void
.end method

.method private static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILcom/vkcoffee/android/data/CatalogInfo;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "currentIndex"    # I
    .param p5, "catalogInfo"    # Lcom/vkcoffee/android/data/CatalogInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;I",
            "Lcom/vkcoffee/android/data/CatalogInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    .local p3, "applications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "applications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .restart local p3    # "applications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    :cond_0
    if-eqz p5, :cond_1

    iget-object v2, p5, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    sget-object v3, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->installed:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    if-ne v2, v3, :cond_1

    .line 330
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 331
    .local v0, "application":Lcom/vkcoffee/android/data/ApiApplication;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    goto :goto_0

    .line 335
    .end local v0    # "application":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/GameCardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "key_applications"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 337
    const-string/jumbo v2, "key_current_application_index"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string/jumbo v2, "key_catalog_info"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    const-string/jumbo v2, "visitSource"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string/jumbo v2, "clickSource"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/GameCardActivity;->lastTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/vkcoffee/android/GameCardActivity;->lastTime:J

    .line 346
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 348
    :cond_2
    return-void
.end method

.method private syncGui(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    const/4 v2, 0x1

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->finish()V

    .line 263
    invoke-virtual {p0, v0, v0}, Lcom/vkcoffee/android/GameCardActivity;->overridePendingTransition(II)V

    .line 264
    return-void
.end method

.method public finish(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->onBackPressed()V

    .line 228
    return-void
.end method

.method protected getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_from_notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "push"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "direct"

    goto :goto_0
.end method

.method synthetic lambda$null$622(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/vkcoffee/android/GameCardActivity;->doRemoveApp()V

    .line 244
    return-void
.end method

.method synthetic lambda$openActionMenu$623(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 238
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 239
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080075

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/GameCardActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/GameCardActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ActivityResulter;

    .line 73
    .local v0, "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    invoke-interface {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/ActivityResulter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 76
    .end local v0    # "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->smoothToBottom()V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 176
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->setContentView(I)V

    .line 178
    const v1, 0x7f100117

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 179
    const v1, 0x7f100118

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iput-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    .line 180
    const v1, 0x7f10011c

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/PageIndicator;

    iput-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    .line 181
    const v1, 0x7f100119

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->headerBlock:Landroid/view/View;

    .line 182
    const v1, 0x7f10011b

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->pageTitle:Landroid/widget/TextView;

    .line 184
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 189
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/vkcoffee/android/GameCardActivity;->getActionBarHeight()I

    move-result v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setHeaderPadding(I)V

    .line 190
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 191
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/GameCardActivity$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/GameCardActivity$2;-><init>(Lcom/vkcoffee/android/GameCardActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 200
    if-nez p1, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->initValues(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/GameCardActivity;->currentIndex:I

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkcoffee/android/GameCardActivity;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 209
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v2, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget-object v1, v1, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/CatalogInfo;->hasGenreId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Lcom/vkcoffee/android/api/apps/AppsGetGenres;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/apps/AppsGetGenres;-><init>()V

    new-instance v2, Lcom/vkcoffee/android/GameCardActivity$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/GameCardActivity$3;-><init>(Lcom/vkcoffee/android/GameCardActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/apps/AppsGetGenres;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 222
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 224
    :cond_1
    return-void

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->headerBlock:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 204
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/GameCardActivity;->initValues(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/GameCardActivity;->currentIndex:I

    goto :goto_0

    .line 209
    .restart local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 397
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 378
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 382
    iput p1, p0, Lcom/vkcoffee/android/GameCardActivity;->currentIndex:I

    .line 383
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setIndexOfCurrentPage(IZ)V

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-le p1, v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->forceLoadNextPage()Z

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 391
    .local v0, "app":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v2, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    iget-boolean v1, v0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .end local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_2
    return-void

    .line 391
    .restart local v0    # "app":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_3
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onPanelAnchored(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 419
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->finish()V

    .line 411
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 415
    return-void
.end method

.method public onPanelHidden(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 423
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 403
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->headerBlock:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->headerBlock:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 406
    :cond_0
    return-void
.end method

.method public onRecycleViewCreated(Lme/grishka/appkit/views/UsableRecyclerView;I)V
    .locals 1
    .param p1, "listView"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .param p2, "index"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->slidingLayout:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setTarget(Landroid/support/v7/widget/RecyclerView;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onResume()V

    .line 355
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/GameCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 356
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 357
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string/jumbo v0, "key_applications"

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 99
    const-string/jumbo v0, "key_current_application_index"

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "key_catalog_info"

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    const-string/jumbo v0, "key_title"

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public openActionMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08042d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 234
    .local v2, "pm":Landroid/widget/PopupMenu;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 235
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v0, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/GameCardActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/GameCardActivity;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 248
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 249
    return-void
.end method

.method public registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public updateApiAppItem(Lcom/vkcoffee/android/data/ApiApplication;)V
    .locals 3
    .param p1, "apiApplication"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 361
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->catalogLoader:Lcom/vkcoffee/android/api/apps/CatalogLoader;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/api/apps/CatalogLoader;->updateApiApplication(Lcom/vkcoffee/android/data/ApiApplication;)V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 369
    iget-object v2, p0, Lcom/vkcoffee/android/GameCardActivity;->openActionMenu:Landroid/view/View;

    iget-boolean v1, p1, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_2
    return-void

    .line 369
    :cond_3
    const/16 v1, 0x8

    goto :goto_0
.end method

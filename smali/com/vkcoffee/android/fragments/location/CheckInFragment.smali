.class public Lcom/vkcoffee/android/fragments/location/CheckInFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "CheckInFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/location/CheckInFragment$Builder;,
        Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$4$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/location/CheckInFragment$PlaceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/GeoPlace;",
        ">;",
        "Lcom/vkcoffee/android/fragments/BackListener;",
        "Lcom/vk/attachpicker/SupportExternalToolbarContainer;"
    }
.end annotation


# static fields
.field static final CHECK_IN_RESULT:I = 0x2099

.field static final CREATE_PLACE_RESULT:I = 0x209a

.field static final LIST_PADDING:I

.field static final MAP_HEIGHT:I


# instance fields
.field final mAdapter:Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;

.field mAddPlace:Lcom/vkcoffee/android/GeoPlace;

.field mAddress:Ljava/lang/String;

.field mCurrentLocation:Lcom/vkcoffee/android/GeoPlace;

.field mLocation:Landroid/location/Location;

.field mMap:Lcom/google/android/gms/maps/MapView;

.field mMapContainer:Landroid/view/ViewGroup;

.field private mMapInitialized:Z

.field final mNearLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/GeoPlace;",
            ">;"
        }
    .end annotation
.end field

.field mQuery:Ljava/lang/String;

.field final mSearchLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/GeoPlace;",
            ">;"
        }
    .end annotation
.end field

.field mSearchMode:Z

.field mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->LIST_PADDING:I

    .line 69
    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->MAP_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 209
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 70
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAdapter:Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;

    .line 71
    new-instance v0, Lcom/vkcoffee/android/GeoPlace;

    invoke-direct {v0}, Lcom/vkcoffee/android/GeoPlace;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddPlace:Lcom/vkcoffee/android/GeoPlace;

    .line 73
    new-instance v0, Lcom/vkcoffee/android/GeoPlace;

    invoke-direct {v0}, Lcom/vkcoffee/android/GeoPlace;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mCurrentLocation:Lcom/vkcoffee/android/GeoPlace;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mNearLocations:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchLocations:Ljava/util/List;

    .line 210
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setLayout(I)V

    .line 211
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setListLayoutId(I)V

    .line 212
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lme/grishka/appkit/api/APIRequest;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->onScroll()V

    return-void
.end method

.method private isInContextOfAttachActivity()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vk/attachpicker/AttachActivity;

    return v0
.end method

.method private onScroll()V
    .locals 5

    .prologue
    .line 385
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sget v4, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->LIST_PADDING:I

    sub-int v1, v3, v4

    .line 388
    .local v1, "firstChildTop":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 389
    .local v2, "position":I
    if-lez v2, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 393
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    if-eqz v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/MapView;->invalidate()V

    .line 397
    .end local v1    # "firstChildTop":I
    .end local v2    # "position":I
    :cond_1
    return-void
.end method

.method private setListPadding()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget v3, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->LIST_PADDING:I

    add-int/2addr v0, v3

    sget v3, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->LIST_PADDING:I

    invoke-virtual {v2, v1, v0, v1, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 382
    return-void

    .line 381
    :cond_0
    sget v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->MAP_HEIGHT:I

    goto :goto_0
.end method

.method private showMapNotAvailable()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setVisibility(I)V

    .line 272
    return-void
.end method

.method public static start()Lcom/vkcoffee/android/navigation/Navigator;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method protected doLoadData(II)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->cancelLoading()V

    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 321
    .local v2, "latitude":D
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 322
    .local v4, "longitude":D
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x3

    .line 323
    .local v6, "i":I
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/api/places/PlacesSearch;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mQuery:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/api/places/PlacesSearch;-><init>(DDILjava/lang/String;)V

    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Landroid/app/Fragment;)V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/places/PlacesSearch;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 323
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 348
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 322
    .restart local v2    # "latitude":D
    .restart local v4    # "longitude":D
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_3
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_1
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAdapter:Lcom/vkcoffee/android/fragments/location/CheckInFragment$Adapter;

    return-object v0
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->hasNavigationDrawer()Z

    move-result v0

    goto :goto_0
.end method

.method initList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 376
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x26000000

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 377
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setListPadding()V

    .line 378
    return-void
.end method

.method initMap(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 443
    const v2, 0x7f1001c0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    .line 444
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    new-instance v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    .line 472
    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$4;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 476
    .local v0, "activity":Landroid/content/Context;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    new-instance v2, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    .line 481
    .local v1, "liteMode":Lcom/google/android/gms/maps/GoogleMapOptions;
    :goto_1
    new-instance v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    .line 493
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 494
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    const/4 v4, -0x1

    sget v5, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->MAP_HEIGHT:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 495
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)Lcom/google/android/gms/maps/OnMapReadyCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_0

    .line 479
    .end local v1    # "liteMode":Lcom/google/android/gms/maps/GoogleMapOptions;
    :cond_2
    new-instance v2, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    .restart local v1    # "liteMode":Lcom/google/android/gms/maps/GoogleMapOptions;
    goto :goto_1
.end method

.method initMockLocations()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mCurrentLocation:Lcom/vkcoffee/android/GeoPlace;

    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/GeoPlace;->title:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mCurrentLocation:Lcom/vkcoffee/android/GeoPlace;

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkcoffee/android/GeoPlace;->id:I

    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mCurrentLocation:Lcom/vkcoffee/android/GeoPlace;

    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddPlace:Lcom/vkcoffee/android/GeoPlace;

    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/GeoPlace;->title:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddPlace:Lcom/vkcoffee/android/GeoPlace;

    const/4 v1, -0x2

    iput v1, v0, Lcom/vkcoffee/android/GeoPlace;->id:I

    .line 360
    return-void
.end method

.method initToolbar()V
    .locals 3

    .prologue
    .line 400
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setTitle(I)V

    .line 401
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setHasOptionsMenu(Z)V

    .line 427
    return-void

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method lambda$initMap$393(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    if-eqz p1, :cond_2

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 506
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 507
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 508
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 511
    :cond_0
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 519
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->showMapNotAvailable()V

    goto :goto_0

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 516
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method lambda$null$392(Lcom/google/android/gms/maps/GoogleMap;Landroid/location/Location;)V
    .locals 7
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 522
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 523
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 524
    :cond_0
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    .line 525
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->loadData()V

    .line 527
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->loadPlace()V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 531
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    .line 532
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->loadData()V

    .line 533
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->loadPlace()V

    .line 535
    :cond_2
    return-void
.end method

.method lambda$onPostExecute$391()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->onScroll()V

    .line 500
    return-void
.end method

.method loadPlace()V
    .locals 4

    .prologue
    .line 538
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    .line 569
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 299
    if-ne p2, v1, :cond_0

    const/16 v0, 0x2099

    if-ne p1, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 303
    :cond_0
    if-ne p2, v1, :cond_1

    const/16 v0, 0x209a

    if-ne p1, v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 307
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 233
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 234
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    .line 239
    invoke-static {p1, v1}, Lcom/vkcoffee/android/ActivityUtils;->requireGoogleMaps(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 241
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    goto :goto_0

    .line 244
    :cond_1
    const v0, 0x7f080165

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 314
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setRefreshEnabled(Z)V

    .line 251
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 277
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 295
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->cancelLoading()V

    .line 296
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 284
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onResume()V

    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMap:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 291
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initToolbar()V

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initMap(Landroid/view/View;Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initList()V

    .line 258
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initMockLocations()V

    .line 259
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 261
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 262
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapInitialized:Z

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->showMapNotAvailable()V

    .line 264
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->dataLoaded()V

    .line 267
    :cond_0
    return-void
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method setSearchMode(Z)V
    .locals 3
    .param p1, "searchMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 431
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchMode:Z

    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 433
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mMapContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 434
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setListPadding()V

    .line 435
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchMode:Z

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->smoothScrollToPosition(I)V

    .line 440
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 433
    goto :goto_0
.end method

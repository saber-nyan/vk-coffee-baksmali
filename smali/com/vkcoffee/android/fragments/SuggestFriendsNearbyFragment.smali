.class public Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
.super Lcom/vkcoffee/android/fragments/SuggestionsFragment;
.source "SuggestFriendsNearbyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;,
        Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$UsersAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private lastLocation:Landroid/location/Location;

.field private locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private locationListener:Lcom/google/android/gms/location/LocationListener;

.field private locationListener2:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener:Lcom/google/android/gms/location/LocationListener;

    .line 61
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener2:Landroid/location/LocationListener;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->onLocationUpdated(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
    .param p1, "x1"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->startUpdationgLocationOld()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)Lcom/google/android/gms/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener:Lcom/google/android/gms/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->poll()V

    return-void
.end method

.method private onLocationUpdated(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 238
    .local v0, "first":Z
    :goto_0
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->poll()V

    .line 242
    :cond_0
    return-void

    .line 237
    .end local v0    # "first":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private poll()V
    .locals 9

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Lcom/vkcoffee/android/api/users/UsersGetNearby;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x12c

    invoke-direct/range {v1 .. v8}, Lcom/vkcoffee/android/api/users/UsersGetNearby;-><init>(DDIII)V

    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$6;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    .line 253
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/users/UsersGetNearby;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method private startUpdatingLocation()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->startUpdationgLocationOld()V

    goto :goto_0
.end method

.method private startUpdationgLocationOld()V
    .locals 6

    .prologue
    .line 212
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 214
    .local v0, "mgr":Landroid/location/LocationManager;
    :try_start_0
    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener2:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :goto_0
    :try_start_1
    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener2:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    :goto_1
    return-void

    .line 219
    :catch_0
    move-exception v1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private stopUpdatingLocation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    iput-object v4, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->lastLocation:Landroid/location/Location;

    .line 225
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 227
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 228
    iput-object v4, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 231
    .local v0, "mgr":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->locationListener2:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$UsersAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$UsersAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    return-object v0
.end method

.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->setStyle(II)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super/range {p0 .. p3}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 106
    .local v2, "fl":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030073

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 108
    .local v7, "themedContext":Landroid/content/Context;
    const v8, 0x7f030091

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, "placeholder":Landroid/view/View;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x43560000    # 214.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v8, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 112
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->list:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 113
    const/high16 v8, 0x43560000    # 214.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 114
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 116
    const v8, 0x7f100209

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 117
    .local v3, "icon":Landroid/widget/ImageView;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0201a9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0201a9

    invoke-static {v12, v13}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;Landroid/graphics/Bitmap;)V

    aput-object v11, v9, v10

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->list:Landroid/widget/ListView;

    const v9, 0x7f020101

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelector(I)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "content":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, "divider":Landroid/view/View;
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x101032c

    aput v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 125
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->list:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->list:Landroid/widget/ListView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 128
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v5, Landroid/widget/Button;

    const/4 v8, 0x0

    const v9, 0x101032f

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    .local v5, "qrBtn":Landroid/widget/Button;
    const v8, 0x7f0801a7

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(I)V

    .line 133
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v8, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object v0
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    .line 173
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    long-to-int v1, p2

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->stopUpdatingLocation()V

    .line 99
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onPause()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->startUpdatingLocation()V

    .line 94
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onStart()V

    .line 159
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    .local v0, "minDisplaySize":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    sub-int v2, v0, v2

    const/high16 v3, 0x43a50000    # 330.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

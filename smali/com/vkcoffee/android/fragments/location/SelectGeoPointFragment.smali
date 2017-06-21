.class public Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "SelectGeoPointFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;
    }
.end annotation


# instance fields
.field firstLocUpdate:Z

.field mAddress:Ljava/lang/String;

.field mCreateMode:Z

.field mDoneDrawable:Landroid/graphics/drawable/Drawable;

.field mDoneEnabled:Z

.field mDoneItem:Landroid/view/MenuItem;

.field mHasLocation:Z

.field mLatitude:D

.field mLongitude:D

.field mMapMoved:Z

.field mMapView:Lcom/google/android/gms/maps/MapView;

.field mMarker:Lcom/google/android/gms/maps/model/Marker;

.field mSelectedPoint:Lcom/google/android/gms/maps/model/LatLng;

.field mSubtitle:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->firstLocUpdate:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    return-void
.end method

.method static synthetic lambda$null$401(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 289
    invoke-static {p0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const/4 v1, -0x1

    invoke-virtual {p3, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 294
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 295
    return-void
.end method


# virtual methods
.method enableDone(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    if-eq p1, v0, :cond_1

    .line 256
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 264
    :cond_1
    return-void

    .line 258
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public initMap(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;)Lcom/google/android/gms/maps/OnMapReadyCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 206
    return-void
.end method

.method initMarker(Lcom/google/android/gms/maps/GoogleMap;DD)V
    .locals 2
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 210
    new-instance v0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$1;-><init>(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 227
    return-void
.end method

.method synthetic lambda$initMap$400(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 6
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    if-nez p1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 178
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 191
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 192
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 201
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mHasLocation:Z

    if-eqz v0, :cond_0

    .line 202
    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mLatitude:D

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mLongitude:D

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->initMarker(Lcom/google/android/gms/maps/GoogleMap;DD)V

    goto :goto_0
.end method

.method synthetic lambda$null$397(Lcom/google/android/gms/maps/GoogleMap;Landroid/location/Location;)V
    .locals 6
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapMoved:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->firstLocUpdate:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSelectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->firstLocUpdate:Z

    if-eqz v0, :cond_3

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->enableDone(Z)V

    .line 184
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mHasLocation:Z

    if-nez v0, :cond_2

    .line 185
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->initMarker(Lcom/google/android/gms/maps/GoogleMap;DD)V

    .line 187
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->firstLocUpdate:Z

    .line 189
    :cond_3
    return-void
.end method

.method synthetic lambda$null$398(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1
    .param p1, "pos"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapMoved:Z

    return-void
.end method

.method synthetic lambda$null$399(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p2, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 199
    :goto_0
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSelectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    .line 200
    return-void

    .line 196
    :cond_0
    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->initMarker(Lcom/google/android/gms/maps/GoogleMap;DD)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->enableDone(Z)V

    goto :goto_0
.end method

.method synthetic lambda$onDone$402(Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/app/ProgressDialog;Landroid/app/Activity;)V
    .locals 11

    .prologue
    .line 277
    const-string/jumbo v8, "??"

    .line 279
    .local v8, "country":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 280
    .local v1, "geocoder":Landroid/location/Geocoder;
    iget-wide v2, p1, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-wide v4, p1, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 281
    .local v0, "address":Landroid/location/Address;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "addressLine":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 283
    iput-object v7, p1, Lcom/vkcoffee/android/attachments/GeoAttachment;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v7    # "addressLine":Ljava/lang/String;
    :goto_0
    move-object v9, v8

    .line 288
    .local v9, "finalCountry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p2, p1, v9, p3}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$3;->lambdaFactory$(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    return-void

    .line 284
    .end local v9    # "finalCountry":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 285
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v10}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 100
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/vkcoffee/android/ActivityUtils;->requireGoogleMaps(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ignored":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 107
    .end local v0    # "ignored":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->setHasOptionsMenu(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "create_place"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mCreateMode:Z

    .line 114
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "place_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mTitleText:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "place_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mAddress:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prevLat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mHasLocation:Z

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prevLat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mLatitude:D

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prevLon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mLongitude:D

    .line 119
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 130
    const v1, 0x7f100019

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mCreateMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f08013b

    :goto_0
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneItem:Landroid/view/MenuItem;

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 132
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 134
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    return-void

    .line 130
    :cond_0
    const v0, 0x7f080463

    goto :goto_0

    .line 134
    :cond_1
    const/16 v0, 0x7f

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    const v0, 0x7f03008d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onDestroy()V

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 252
    :cond_0
    return-void
.end method

.method onDone()V
    .locals 10

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-direct {v8}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>()V

    .line 269
    .local v8, "att":Lcom/vkcoffee/android/attachments/GeoAttachment;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSelectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v2, v8, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    .line 270
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSelectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v2, v8, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    .line 271
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mCreateMode:Z

    if-nez v1, :cond_0

    .line 272
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 273
    .local v9, "progress":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 275
    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 276
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0, v8, v9, v0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/app/ProgressDialog;Landroid/app/Activity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 315
    .end local v9    # "progress":Landroid/app/ProgressDialog;
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/places/PlacesAdd;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v8, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-wide v6, v8, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/api/places/PlacesAdd;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    new-instance v2, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;

    .line 300
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v8}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$2;-><init>(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Landroid/content/Context;Lcom/vkcoffee/android/attachments/GeoAttachment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/places/PlacesAdd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100019

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->onDone()V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 244
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 236
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mCreateMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080060

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->setTitle(I)V

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020234

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 151
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f100201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mCreateMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v0, 0x7f1000dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mTitle:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f100169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSubtitle:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->initMap(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    return-void

    .line 149
    :cond_0
    const v0, 0x7f080465

    goto :goto_0

    .line 150
    :cond_1
    const v0, 0x7f020110

    goto :goto_1

    .line 153
    :cond_2
    const/16 v0, 0x8

    goto :goto_2
.end method

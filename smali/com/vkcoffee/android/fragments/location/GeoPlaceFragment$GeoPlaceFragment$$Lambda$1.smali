.class public Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoPlaceFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V
    .locals 0
    .param p1, "geoPlaceFragment"    # Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .line 296
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "geoPlaceFragment"    # Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .prologue
    .line 299
    new-instance v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->lambda$onViewCreated$395(Landroid/view/View;)V

    .line 304
    return-void
.end method

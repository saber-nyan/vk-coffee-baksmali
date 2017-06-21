.class public Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoPlaceFragment$$Lambda$3"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V
    .locals 0
    .param p1, "geoPlaceFragment"    # Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .line 326
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "geoPlaceFragment"    # Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .prologue
    .line 329
    new-instance v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->lambda$null$394(Landroid/content/DialogInterface;I)V

    .line 334
    return-void
.end method

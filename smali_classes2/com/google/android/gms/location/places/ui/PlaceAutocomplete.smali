.class public Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;
.super Lcom/google/android/gms/location/places/ui/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;
    }
.end annotation


# static fields
.field public static final MODE_FULLSCREEN:I = 0x1

.field public static final MODE_OVERLAY:I = 0x2

.field public static final RESULT_ERROR:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/zza;-><init>()V

    return-void
.end method

.method public static getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/ui/zza;->getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/ui/zza;->getStatus(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

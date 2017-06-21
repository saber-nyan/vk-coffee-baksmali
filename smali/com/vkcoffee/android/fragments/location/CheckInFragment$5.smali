.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;
.super Lcom/google/android/gms/maps/MapView;
.source "CheckInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initMap(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 481
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 488
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$5;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 489
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 491
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

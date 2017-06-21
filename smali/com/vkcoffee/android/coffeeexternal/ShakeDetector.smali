.class public Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_COUNT_RESET_TIME_MS:I = 0xbb8

.field private static final SHAKE_SLOP_TIME_MS:I = 0x1f4

.field private static final SHAKE_THRESHOLD_GRAVITY:F = 2.7f


# instance fields
.field private mListener:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;

.field private mShakeCount:I

.field private mShakeTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 83
    iget-object v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mListener:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;

    if-eqz v10, :cond_0

    .line 84
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v5, v10, v11

    .line 85
    .local v5, "x":F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x1

    aget v8, v10, v11

    .line 86
    .local v8, "y":F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v9, v10, v11

    .line 88
    .local v9, "z":F
    const v10, 0x411ce80a

    div-float v2, v5, v10

    .line 89
    .local v2, "gX":F
    const v10, 0x411ce80a

    div-float v3, v8, v10

    .line 90
    .local v3, "gY":F
    const v10, 0x411ce80a

    div-float v4, v9, v10

    .line 93
    .local v4, "gZ":F
    mul-float v10, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 95
    .local v0, "gForce":D
    const-wide v10, 0x40059999a0000000L    # 2.700000047683716

    cmpl-double v10, v0, v10

    if-lez v10, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 98
    .local v6, "now":J
    iget-wide v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeTimestamp:J

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    cmp-long v10, v10, v6

    if-lez v10, :cond_1

    .line 113
    .end local v0    # "gForce":D
    .end local v2    # "gX":F
    .end local v3    # "gY":F
    .end local v4    # "gZ":F
    .end local v5    # "x":F
    .end local v6    # "now":J
    .end local v8    # "y":F
    .end local v9    # "z":F
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v0    # "gForce":D
    .restart local v2    # "gX":F
    .restart local v3    # "gY":F
    .restart local v4    # "gZ":F
    .restart local v5    # "x":F
    .restart local v6    # "now":J
    .restart local v8    # "y":F
    .restart local v9    # "z":F
    :cond_1
    iget-wide v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeTimestamp:J

    const-wide/16 v12, 0xbb8

    add-long/2addr v10, v12

    cmp-long v10, v10, v6

    if-gez v10, :cond_2

    .line 104
    const/4 v10, 0x0

    iput v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeCount:I

    .line 107
    :cond_2
    iput-wide v6, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeTimestamp:J

    .line 108
    iget v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeCount:I

    .line 110
    iget-object v10, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mListener:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;

    iget v11, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mShakeCount:I

    invoke-interface {v10, v11}, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;->onShake(I)V

    goto :goto_0
.end method

.method public setOnShakeListener(Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->mListener:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;

    .line 69
    return-void
.end method

.class public final Lcom/vk/attachpicker/photoview/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;)Lcom/vk/attachpicker/photoview/gestures/GestureDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;

    .prologue
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .local v1, "sdkVersion":I
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 30
    new-instance v0, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "detector":Lcom/vk/attachpicker/photoview/gestures/GestureDetector;
    :goto_0
    invoke-interface {v0, p1}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->setOnGestureListener(Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;)V

    .line 39
    return-object v0

    .line 31
    .end local v0    # "detector":Lcom/vk/attachpicker/photoview/gestures/GestureDetector;
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 32
    new-instance v0, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/vk/attachpicker/photoview/gestures/GestureDetector;
    goto :goto_0

    .line 34
    .end local v0    # "detector":Lcom/vk/attachpicker/photoview/gestures/GestureDetector;
    :cond_1
    new-instance v0, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/vk/attachpicker/photoview/gestures/GestureDetector;
    goto :goto_0
.end method

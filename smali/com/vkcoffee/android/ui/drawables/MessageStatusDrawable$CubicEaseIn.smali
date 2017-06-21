.class public Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$CubicEaseIn;
.super Ljava/lang/Object;
.source "MessageStatusDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CubicEaseIn"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 355
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method
